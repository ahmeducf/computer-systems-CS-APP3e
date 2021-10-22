/* 
 * -A cache for a machine is organized as an array of S = 2^s cache sets.
 *
 * -Each set consists of E cache lines.
 * 
 * -Each line consists of a data block of B = 2b bytes,
 *  a valid bit that indicates whether or not the line contains meaningful information,
 *  and t = m − (b + s) tag bits that uniquely identify the block stored in the cache line.
 * 
 * -Time stamps used to Evict the least recently used block from the cache to make room
 *  for the next block.
 * */

#include "cachelab.h"
#include <getopt.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>


typedef unsigned char byte;

typedef struct
{   
    unsigned v;     // valid bit
    unsigned tag;
    unsigned time_stamp;
    byte *block;

} Cache_line, *Cache_line_ptr;

typedef struct 
{
    Cache_line_ptr line;
    unsigned counter;

} Cache_set, *Cache_set_ptr;

typedef struct 
{
    Cache_set_ptr set;

} Cache, *Cache_ptr;


/// Construct cache of specified size
/// Return pointer to cache
Cache_ptr init_cache(unsigned S, unsigned E, unsigned B);

/// Parse set-index and tag from given address, based on number of b and s bits
void parse_addressInfo(long long unsigned *indx, long long unsigned *tag, long long address, 
                                unsigned b, unsigned s);
/// Parse arguments from the command line
void parse_arguments(unsigned argc, char* argv[], unsigned *s, unsigned *E, 
                        unsigned *b, char **file_path);

/// Given the index of the set, search that set for an empty line
/// return the index of the first empty line in set[indx]
/// or return -1 if can't find
int find_empty_line(Cache_ptr sim_c, long long unsigned indx, unsigned E);

/// parse block from cache and do the specified operations on it
void hit (Cache_ptr sim_c, long long unsigned indx, unsigned line_indx, unsigned *hits, char *operation);

/// parse block from memory and place it in the cache.
/// place block in empty line if any,
/// if there is no empty line, evect one and place the block instead of it
void miss (Cache_ptr sim_c, long long unsigned indx, int line_indx, long long unsigned tag,
             unsigned E, unsigned *hits, unsigned *misses, unsigned *evictions, char *operation);

void update_time_stamp(Cache_ptr sim_c, long long unsigned indx, unsigned line_indx);

/// Place block in at line[line_indx] of set[indx]
/// change line's tag to block's tag, update time-stamp and set valid-bit
void place_block(Cache_ptr sim_c, long long unsigned indx, unsigned block_tag, unsigned line_indx);

/// return line index of the the Least-Recent-Used line in set[indx]
unsigned queue_top(Cache_ptr sim_c, long long unsigned indx, unsigned E);

/// find Least-Recent-Used line in set[indx] and place the given block at that line
void replace_block(Cache_ptr sim_c, long long unsigned indx, unsigned block_tag, unsigned E);

/// search for line that have tag equal to the given block's tag in set[indx]
/// return line_indx if found such line
/// return -1 otherwise (no line have such tag)
int inspect_cache(Cache_ptr sim_c, long long unsigned indx, long long unsigned tag, unsigned E);

/// open file
/// Return pointer to file if success
/// If the pointer equals NULL, print error message and exit the program with status(1)
FILE * openFile(char *path, char* mode);

/// free all allocated memory spaces
void delete (Cache_ptr sim_c, unsigned S, unsigned E);

int main(int argc, char* argv[])
{   
    /// s: number of set-index bits
    /// b: number of block bits
    /// S: number of sets in cache
    /// E: associativity per cache-set
    /// B: number of bytes per line
    unsigned s, S, E, b, B;
    char *file_path;
    FILE *pTraceFile; // pointer to trace FILE object

    parse_arguments(argc, argv, &s, &E, &b, &file_path);

    S = 1 << s;
    B = 1 << b;
    
    Cache_ptr simulated_Cache = init_cache(S, E, B);

    
    long long unsigned indx, tag; int line_indx;
    unsigned hits = 0, misses = 0, evictions = 0;
    long long  address; int size;
    char operation;
    pTraceFile = openFile(file_path, "r");

    while(fscanf(pTraceFile, " %c %llx,%d\n", &operation, &address, &size) != EOF)
    {

        if (operation == 'I') continue;
        
        parse_addressInfo(&indx, &tag, address, b, s);

        
        line_indx = inspect_cache(simulated_Cache, indx, tag, E);
        if (line_indx != -1)
        {
            hit(simulated_Cache, indx, line_indx, &hits, &operation);
        }
        else
        {
            line_indx = find_empty_line(simulated_Cache, indx, E);
            miss(simulated_Cache, indx, line_indx, tag, E, &hits, &misses, &evictions, &operation);
        }
    }

    printSummary(hits, misses, evictions);
    
    fclose(pTraceFile);
    delete(simulated_Cache, S, E);
    return 0;
}

Cache_ptr init_cache(unsigned S, unsigned E, unsigned B)
{
    Cache_ptr C_sim = malloc(sizeof(Cache));

    if (C_sim == NULL)
        return NULL;

    Cache_set_ptr set = calloc(S, sizeof(Cache_set));
    if (set == NULL){
        free(C_sim);
        return NULL;
    }
    C_sim->set = set;

    for (size_t i = 0; i < S; i++)
    {
        C_sim->set[i].line = calloc(E, sizeof(Cache_line));

        C_sim->set[i].counter = 0;

        for (size_t j = 0; j < E; j++)
        {
            C_sim->set[i].line[j].v = 0;
            C_sim->set[i].line[j].tag = 0;
            C_sim->set[i].line[j].time_stamp = 0;
            C_sim->set[i].line[j].block = malloc(B * sizeof(byte));
        }
    }
    return C_sim;
}

void parse_addressInfo(long long unsigned *indx, long long unsigned *tag, long long address, 
                                unsigned b, unsigned s)
{
    long long unsigned set_mask = ~((-1) << s);
    *indx = set_mask & (address >> b); 
    *tag = address >> (b + s);
}

void parse_arguments(unsigned argc, char* argv[], unsigned *s, unsigned *E, 
                        unsigned *b, char **file_path)
{
    char c;
    while ((c = (getopt(argc, argv, "s:E:b:t:"))) != -1)
    {
        switch (c)
        {
            case 's':
                *s = atoi(optarg);
                break;
            case 'E':
                *E = atoi(optarg);
                break;
            case 'b':
                *b = atoi(optarg);
                break;
            case 't':
                *file_path = optarg;
                break;
            default:
                printf("wrong argument\n");
                exit(-1);
                break;
        }
    }
}


int find_empty_line(Cache_ptr sim_c, long long unsigned indx, unsigned E)
{
    for (size_t i = 0; i < E; i++)
    {
        unsigned validBit = sim_c->set[indx].line[i].v;
        if (!validBit){
            return i;
        }
    }
    return -1;  
}

void update_time_stamp(Cache_ptr sim_c, long long unsigned indx, unsigned line_indx)
{
    sim_c->set[indx].line[line_indx].time_stamp = ++(sim_c->set[indx].counter);
}

void hit (Cache_ptr sim_c, long long unsigned indx, unsigned line_indx,
            unsigned *hits, char *operation)
{

    char op = *operation;
    switch (op)
    {
        case 'M':
            (*hits) += 2;
            update_time_stamp(sim_c, indx, line_indx);
            break;
        case 'L':
        case 'S':
            (*hits) += 1;
            update_time_stamp(sim_c, indx, line_indx);
            break;
        default:
            break;
    }
}

void miss (Cache_ptr sim_c, long long unsigned indx, int line_indx, long long unsigned tag,
             unsigned E, unsigned *hits, unsigned *misses, unsigned *evictions, char *operation)
{
    if (*operation == 'I') return;

    *misses += 1;
    if (line_indx == -1)
    {
        *evictions += 1;
        replace_block(sim_c, indx, tag, E);
    }
    else
    {
        place_block(sim_c, indx, tag, line_indx);
    }

    if (*operation == 'M') *hits += 1;
}

void place_block(Cache_ptr sim_c, long long unsigned indx, unsigned block_tag, unsigned line_indx)
{
    sim_c->set[indx].line[line_indx].tag = block_tag;
    
    update_time_stamp(sim_c, indx, line_indx);

    sim_c->set[indx].line[line_indx].v = 1;
}


unsigned queue_top(Cache_ptr sim_c, long long unsigned indx, unsigned E)
{
    unsigned min = 0xffffffff;
    unsigned LRU_line_indx;
    for (size_t i = 0; i < E; i++)
    {
        unsigned cnt = sim_c->set[indx].line[i].time_stamp;
        if (cnt < min){
            min = cnt;
            LRU_line_indx = i;
        }
    }
    return LRU_line_indx;
}

void replace_block(Cache_ptr sim_c, long long unsigned indx, unsigned block_tag, unsigned E)
{
    unsigned line_indx = queue_top(sim_c, indx, E);

    place_block(sim_c, indx, block_tag, line_indx);
}


int inspect_cache(Cache_ptr sim_c, long long unsigned indx, long long unsigned tag, unsigned E)
{
    for (size_t i = 0; i < E; i++)
    {
        unsigned validBit = sim_c->set[indx].line[i].v;
        unsigned line_tag = sim_c->set[indx].line[i].tag;
        if (line_tag == tag && validBit){
            return i;
        }
    }
    return -1;  
}

FILE * openFile(char *path, char* mode)
{
    FILE * file = fopen(path, mode);
    if (!file) {
        printf("Error: Cannot open file %s", path);
        exit(1);
    }
    return file;
}

void delete (Cache_ptr sim_c, unsigned S, unsigned E)
{
    for (size_t i = 0; i < S; i++)
    {
        for (size_t j = 0; j < E; j++)
        {
            free(sim_c->set[i].line[j].block);
        }
        
    }
    for (size_t i = 0; i < S; i++)
    {
        free(sim_c->set[i].line);
    }
    free(sim_c->set);
    free(sim_c);
}