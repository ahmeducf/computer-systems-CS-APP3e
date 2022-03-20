/*
 * mm.c - Simple allocator packadge based on implicit list.
 * 
 * Block Format:      a block consists of a one-word header, the payload,
 *                    possibly some additional padding and a one-word
 *                    boundar-tag (footer). The minimum block size is
 *                    16 bytes. The header encodes the block size as
 *                    well as whether the block is allocated or not.
 * 
 * Free-list Format:  The free list is organized as implicit free list.
 *                    The first word is an unused padding word aligned to
 *                    a double-word boundary. The padding is followed by
 *                    a special 8-bytes-allocated prologue block, followed by
 *                    a zero or more regular blocks that are created by calls
 *                    to malloc or free. The heap always ends with a special
 *                    epilogue block, which is a zero-size allocated block
 *                    that consists of only a header.
 * 
 * Placement Policy:  The allocator searches the free list for a free block
 *                    that is large enough to hold the requested block using
 *                    Next fit algorithm.
 * 
 * Splitting Policy:  After placing the requested block in the free block,
 *                    The allocator splits the block if the remainder would
 *                    be equal to or greater than the minimum block size.
 * 
 * Coalescing Blocks: The allocator uses immediate boundary-tag coalescing
 *                    that it merges next and previous free block each time
 *                    an applications calls free() on a current block.
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>
#include "mm.h"
#include "memlib.h"

#define NEXT_FIT

/* Basic constants and macros */
#define WSIZE       4       /* Word and header/footer size (bytes) */
#define DSIZE       8       /* Double word size (bytes) */
#define CHUNKSIZE  (1<<12)  /* Extend heap by this amount (bytes), 4 KB */

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) ((ALIGNMENT) * (((size) + (ALIGNMENT) + (ALIGNMENT-1)) / (ALIGNMENT)))

#define MAX(x, y) ((x) > (y)? (x) : (y))  

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc)  ((size) | (alloc))

/* Read and write a word at address p */
#define GET(p)       (*(unsigned int *)(p))
#define PUT(p, val)  (*(unsigned int *)(p) = (val))

/* Read the size and allocated fields from (a header or footer) at address p */
#define GET_SIZE(p)  (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)       ((char *)(bp) - WSIZE)
#define FTRP(bp)       ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

/* "block ptr" refers to a pointer pointing to the first 
word of some allocated block. In other words, a block pointer points to the 
word after the block header. */

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp)  ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE)))    // give address of bp of next block
#define PREV_BLKP(bp)  ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE)))    // give address of bp of previous block



/* Global variables */
static char *heap_listp = 0;  /* Pointer to first block */
#ifdef NEXT_FIT
static char *rover; /* Next fit rover */
#endif



/*
 * extend_heap - Helper function that extends heap size.
 * Invoked when the heap is initialized or when the mm_malloc
 * is unable to find a suitable fit.
 * Returns pointer to the new free block or NULL if error.
 */
static void *extend_heap(size_t words)
{
    char *bp;

    /* Allocate an even number of words to maintain alighment */
    size_t size = (words % 2) ? (words+1) * WSIZE : words * WSIZE;
    if ((long)(bp = mem_sbrk(size)) == -1)
        return NULL;
    
    /* Initialize free block header/footer and the epilogue header */
    PUT(HDRP(bp), PACK(size, 0));           /* Free block header */
    PUT(FTRP(bp), PACK(size ,0));           /* Free block footer */
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));   /* New epilogue header */

    /* Coalesce if the previous block was free */
    return coalesce(bp);
}

/* 
 * mm_init - initialize the heap memory.
 * 	   Gets four words from the memory system and initializes
 *     them to create the empty free list, then extens the heap
 *     by CHUNKSIZE bytes and creates the initial free block.
 */
int mm_init(void)
{
    /* Create the initial empty heap */
    if ((heap_listp = mem_sbrk(4 * WSIZE)) == (void *)-1)
        return -1;
    
    PUT(heap_listp, 0);                             /* Alignment Padding*/
    PUT(heap_listp + (1*WSIZE), PACK(DSIZE, 1));    /* Prologue header */
    PUT(heap_listp + (2*WSIZE), PACK(DSIZE, 1));    /* Prologue footer */
    PUT(heap_listp + (3*WSIZE), PACK(0, 1));        /* Epilogue header */

    heap_listp += (2*WSIZE);
#ifdef NEXT_FIT
    rover = heap_listp;
#endif

    /*Extend the empty heap with a free block of CHUNKSIZE*/
    if (extend_heap(CHUNKSIZE/WSIZE) == NULL)
        return -1;

    return 0;
}

/*
 * find_fit - Helper function find a fit for a block with asize bytes
 *     Return pointer to free block, if no fit return NULL.
 */
static void *find_fit(size_t asize)
{
#ifdef NEXT_FIT
    /* Next fit search */
    char *oldrover = rover;

    /* Search from the rover to the end of list */
    for (; GET_SIZE(HDRP(rover)) > 0; rover = NEXT_BLKP(rover))
        if (!GET_ALLOC(HDRP(rover)) && (asize <= GET_SIZE(HDRP(rover))))
            return rover;

    /* search from start of list to old rover */
    for (rover = heap_listp; rover < oldrover; rover = NEXT_BLKP(rover))
        if (!GET_ALLOC(HDRP(rover)) && (asize <= GET_SIZE(HDRP(rover))))
            return rover;

    return NULL; /* no fit found */
#else
	void *bp = heap_listp;
    size_t size = GET_SIZE(HDRP(bp));
    size_t alloc = GET_ALLOC(HDRP(bp));

    while((size > 0) && (alloc == 1 || size < asize)) {
        size = GET_SIZE(HDRP(NEXT_BLKP(bp)));
        alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));

        bp = NEXT_BLKP(bp);
    }

    if (size == 0)
        return NULL;
    else
        return bp;
#endif
}

/*
 * place - Helper function place block of asize bytes at start of free block bp 
 *         and split if remainder would be at least minimum block size
 */
inline static void place(void *bp, size_t asize)
{
	size_t csize = GET_SIZE(HDRP(bp));
    size_t rem_size = csize - asize;

    /* split if remainder would be at least minimum block size */
    if (rem_size >= 2*DSIZE) {
        PUT(HDRP(bp), PACK(asize, 1));
        PUT(FTRP(bp), PACK(asize, 1));

        PUT(HDRP(NEXT_BLKP(bp)), PACK(rem_size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(rem_size, 0));
    }
    else {
        PUT(HDRP(bp), PACK(csize, 1));
        PUT(FTRP(bp), PACK(csize, 1));
    }
}

/* 
 * mm_malloc - Allocate a block by searching the free list for a suitable block.
 *     Always allocate a block whose size is a multiple of the alignment.
 * 	   If there is a fit, the allocator places the the requested block,
 *     and optionally splits the excess. If no fit, extends the heap with
 *     a new free block, places the requested block, and split it optionally.
 *     Returns a pointer to the newly allocated block.
 */
void *mm_malloc(size_t size)
{
    size_t asize;			/* Adjusted block size */
	size_t extendedsize;	/* Amount to extend the heap if no fit */
	char *bp;

	/* Ignore spurious requests */
	if (size == 0)
		return NULL;

	/* Adjust block size to include overhead and alignment requirements */
	asize = (size <= DSIZE)? 2*DSIZE : ALIGN(size);
	
	/* Search the free list for a fit */
	if ((bp = find_fit(asize)) != NULL) {
		place(bp, asize);
		return bp;
	}

	/* No fit found. Get more memory and place the block */
	extendedsize = MAX(asize, CHUNKSIZE);
	if ((bp = extend_heap(extendedsize/WSIZE)) == NULL)
		return NULL;
	place(bp, asize);
	return bp;
}

/*
 * coalesce - Helper function Merges a block with any adjacent free blocks
 * in constant time.
 * Returns pointer to the new merged block.
 */
static void *coalesce(void *bp)
{
    size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));

    /* Case 1 */
    if (prev_alloc && next_alloc) {
        return bp;
    }
    /* Case 2 */
    else if (prev_alloc && !next_alloc) {
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    }
    /* Case 3 */
    else if (!prev_alloc && next_alloc) {
        size += GET_SIZE(FTRP(PREV_BLKP(bp)));
        PUT(FTRP(bp), PACK(size, 0));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));

        bp = PREV_BLKP(bp);
    }
    /* Case 4 */
    else {
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(FTRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));

        bp = PREV_BLKP(bp);
    }

#ifdef NEXT_FIT
    /* Make sure the rover isn't pointing into the free block */
    /* that we just coalesced */
    if ((rover > (char *)bp) && (rover < NEXT_BLKP(bp)))
        rover = bp;
#endif
    return bp;
}

/*
 * mm_free - Free a previously allocated block.
 * Free the requested block and then merges adjacent free
 * blocks using the boundary-tags coalescing technique.
 */
void mm_free(void *bp)
{
    size_t size = GET_SIZE(HDRP(bp));

    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));

    coalesce(bp);
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
void *mm_realloc(void *ptr, size_t size)
{
    void *oldptr = ptr;
    void *newptr;
    size_t copySize;
    
    newptr = mm_malloc(size);
    if (newptr == NULL)
      return NULL;

    copySize = *(size_t *)((char *)oldptr - WSIZE);
    if (size < copySize)
      copySize = size;

    memcpy(newptr, oldptr, copySize);
    mm_free(oldptr);
    return newptr;
}
