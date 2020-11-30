#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <assert.h>
#include <ctype.h>
#include <stdlib.h>
#include <ctype.h>
#include <unistd.h>
#include <getopt.h>
#include <errno.h>
#include "hash.h"


static void
print_help()
{
    printf("\tUsage:\n"
           "\t\ttp1 -h\n"
           "\t\ttp1 -V\n"
           "\t\ttp1 -i in_file -o out_file\n"
           "\tOptions:\n"
           "\t\t-V, --version\tPrint version and quit.\n"
           "\t\t-h, --help\tPrint this information.\n"
           "\t\t-i, --input\tSpecify input stream/file, \"-\" for stdin.\n"
           "\t\t-o, --output\tSpecify output stream/file, \"-\" for stdout.\n"
           "\tExamples:\n"
           "\t\ttp1 < in.txt > out.txt\n"
           "\t\tcat in.txt | tp1 -i - > out.txt\n");
}

static void
print_usage() {
    printf("tp1 -i in_file -o out_file\n");
}

static void
print_version(){
    printf("tp1 1.0\n");
}

int
main(int argc, char * const argv[])
{

    int opt= 0;

    int help = -1;
    int version = -1;
    int input = -1;
    int output =-1;

    char *input_filename = NULL;
    char *output_filename = NULL;

    ssize_t read;
    char * line = NULL;
    size_t len = 0;

    static struct option long_options[] = {
            {"help",     no_argument,       0,  'h' },
            {"version",  no_argument,       0,  'V' },
            {"input",    required_argument, 0,  'i' },
            {"output",   required_argument, 0,  'o' },
            {0,          0,                 0,  0   }
    };

    int long_index = 0;

    // evaluacion de los parametros enviados al programa
    while ((opt = getopt_long(argc, argv,"hVui:o:",
                              long_options, &long_index )) != -1) {
        switch (opt) {
            case 'h' :
                help = 0;
                break;
            case 'V' :
                version = 0;
                break;
            case 'i' :
                input = 0;
                input_filename = optarg;
                break;
            case 'o' :
                output = 0;
                output_filename = optarg;
                break;
            case '?':
                exit(1);
            default:
                print_usage();
                exit(EXIT_FAILURE);
        }
    }


    // procesamiento de los parametros
    if (help == 0) {
        print_help();
        exit(0);
    }
    else if (version == 0) {
        print_version();
        exit(0);
    }

    // estableciendo los archivos de entrada y salida
    FILE *input_file = stdin;
    FILE *output_file = stdout;
    FILE *err_file = stderr;

    // si vino un -i y el filename es distinto a - hacemos un open de lectura del archivo de input
    if (input == 0 && strcmp(input_filename,  "-") != 0){
        input_file = fopen(input_filename,"r");
        if (input_file == NULL) {
            fprintf(err_file, "can't open input file, errno = %d\n", errno);
            return 1;
        }
    }

    // si vino un -o y el filename es distinto a - hacemos un open de escritura del archivo de output
    if (output == 0 && strcmp(output_filename,  "-") != 0){
        output_file = fopen(output_filename,"w");
        if (output_file == NULL) {
            fprintf(err_file, "Can't open output file, errno = %d\n", errno);
            return 1;
        }
    }

    // Aca leemos una linea de input, inicializamos un hash, hasheamos la linea y terminamos escribiendolo en output
    while ((read = getline(&line, &len, input_file)) != -1) {
        
        string_hash hash;

        string_hash_init(&hash);

        string_hash_more(&hash, line, read);

        string_hash_done(&hash);

        fprintf(output_file, "0x%04x %s", string_hash_value(&hash), line);
    }

    fclose(input_file);
    fclose(output_file);
    fclose(err_file);

    return 0;
}
