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


#define STRING_HASH_INIT 1
#define STRING_HASH_MORE 2
#define STRING_HASH_DONE 3

typedef struct {
	int8_t flag;
	int32_t hash;
	size_t size;
} string_hash;

static void
string_hash_init(string_hash *h)
{
	h->flag = STRING_HASH_INIT;
	h->hash = 0;
	h->size = 0;
}

static void
string_hash_more(string_hash *sh, char *str, size_t len)
{
	assert(sh->flag == STRING_HASH_INIT || sh->flag == STRING_HASH_MORE);

	if (sh->flag == STRING_HASH_INIT) {
		sh->flag = STRING_HASH_MORE;
		sh->hash = (*str) << 7;
	}

	while ((*str) != 0 && len--) {
		sh->hash = (1000003 * sh->hash) ^ *str++;
		sh->size++;
	}
}

static void
string_hash_done(string_hash *sh)
{
	assert(sh->flag == STRING_HASH_INIT || sh->flag == STRING_HASH_MORE);

	if ((sh->hash ^= sh->size) == -1)
		sh->hash = -2;

	sh->flag = STRING_HASH_DONE;
}

static int32_t
string_hash_value(string_hash *sh)
{
	return sh->hash;
}

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
	string_hash hash;
	char *msg = "mensaje para string hash";
	char *ptr;
	size_t len = strlen(msg);
	size_t delta;
	size_t stride;
	size_t rem;

    int opt= 0;

    int help = -1;
    int version = -1;
    int input = -1;
    int output =-1;

    char *input_filename = NULL;
    char *output_filename = NULL;

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

    // Probando las options
    printf("Input file %s\n", input_filename);
    printf("Output file %s\n", output_filename);

	for (stride = len; stride >= 1; stride--) {
		string_hash_init(&hash);
		ptr = msg;
		rem = len;

		while (rem) {
			if (rem >= stride)
				delta = stride;
			else
				delta = rem;

			string_hash_more(&hash, ptr, delta);
			rem -= delta;
			ptr += delta;
		}

		string_hash_done(&hash);
		printf("stride %zu hash 0x%04x\n",
			stride, string_hash_value(&hash));
	}

	return 0;
}

#if 0
static long string_hash(PyStringObject *a)
{
    register Py_ssize_t len;
    register unsigned char *p;
    register long x;

    if (a->ob_shash != -1)
        return a->ob_shash;
    len = Py_SIZE(a);
    p = (unsigned char *) a->ob_sval;
    x = *p << 7;
    while (--len >= 0)
        x = (1000003*x) ^ *p++;
    x ^= Py_SIZE(a);
    if (x == -1)
        x = -2;
    a->ob_shash = x;
    return x;
}
#endif
