# 1 "Enclave/Enclave.cpp"
# 1 "/home/ray/sgx-id/sgx-step/app/smile-case1//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "Enclave/Enclave.cpp"
# 32 "Enclave/Enclave.cpp"
# 1 "Enclave/Enclave.h" 1
# 35 "Enclave/Enclave.h"
# 1 "/opt/intel/sgxsdk/include/tlibc/assert.h" 1
# 45 "/opt/intel/sgxsdk/include/tlibc/assert.h"
# 1 "/opt/intel/sgxsdk/include/tlibc/sys/cdefs.h" 1
# 46 "/opt/intel/sgxsdk/include/tlibc/assert.h" 2
# 57 "/opt/intel/sgxsdk/include/tlibc/assert.h"
extern "C" {

void __assert(const char *, int, const char *, const char *);

}
# 36 "Enclave/Enclave.h" 2
# 1 "/opt/intel/sgxsdk/include/tlibc/stdlib.h" 1
# 39 "/opt/intel/sgxsdk/include/tlibc/stdlib.h"
# 1 "/opt/intel/sgxsdk/include/tlibc/sys/_types.h" 1
# 39 "/opt/intel/sgxsdk/include/tlibc/sys/_types.h"
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef short __int16_t;
typedef unsigned short __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;

typedef long __int64_t;
typedef unsigned long __uint64_t;






typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;


typedef __int8_t __int_fast8_t;
typedef __uint8_t __uint_fast8_t;


typedef long int __int_fast16_t;
typedef unsigned long int __uint_fast16_t;
typedef long int __int_fast32_t;
typedef unsigned long int __uint_fast32_t;
typedef long int __int_fast64_t;
typedef unsigned long int __uint_fast64_t;
# 84 "/opt/intel/sgxsdk/include/tlibc/sys/_types.h"
typedef long __off_t;
# 97 "/opt/intel/sgxsdk/include/tlibc/sys/_types.h"
typedef __int64_t __intptr_t;
typedef __uint64_t __uintptr_t;
typedef __int64_t __ptrdiff_t;


typedef unsigned long __size_t;
typedef long __ssize_t;
typedef double __double_t;
typedef float __float_t;



typedef long __clock_t;

typedef long __time_t;
typedef __builtin_va_list __va_list;
typedef unsigned int __wint_t;

typedef unsigned long int __wctype_t;
typedef int * __wctrans_t;






typedef struct {
    int __c;
    union {
        __wint_t __wc;
        char __wcb[4];
    } __v;
} __mbstate_t;


typedef __int64_t __intmax_t;
typedef __uint64_t __uintmax_t;
# 40 "/opt/intel/sgxsdk/include/tlibc/stdlib.h" 2



typedef __size_t size_t;
# 55 "/opt/intel/sgxsdk/include/tlibc/stdlib.h"
typedef struct {
    int quot;
    int rem;
} div_t;

typedef struct {
    long quot;
    long rem;
} ldiv_t;

typedef struct {
    long long quot;
    long long rem;
} lldiv_t;
# 86 "/opt/intel/sgxsdk/include/tlibc/stdlib.h"
extern "C" {

__attribute__ ((__noreturn__)) void abort(void);
int atexit(void (*)(void));
int abs(int);
double atof(const char *);
int atoi(const char *);
long atol(const char *);
void * bsearch(const void *, const void *, size_t, size_t, int (*)(const void *, const void *));
void * calloc(size_t, size_t);
div_t div(int, int);
void free(void *);
long labs(long);
ldiv_t ldiv(long, long);
void * malloc(size_t);
void * memalign(size_t, size_t);
void qsort(void *, size_t, size_t, int (*)(const void *, const void *));
void * realloc(void *, size_t);
double strtod(const char *, char **);
long strtol(const char *, char **, int);
float strtof(const char *, char **);

long long
        atoll(const char *);
long long
        llabs(long long);
lldiv_t
        lldiv(long long, long long);
long long
        strtoll(const char *, char **, int);
unsigned long
        strtoul(const char *, char **, int);
long double
        strtold(const char *, char **);
unsigned long long
        strtoull(const char *, char **, int);

int mblen(const char *, size_t);
size_t mbstowcs(wchar_t *, const char *, size_t);
int wctomb(char *, wchar_t);
int mbtowc(wchar_t *, const char *, size_t);
size_t wcstombs(char *, const wchar_t *, size_t);





;
;
;
;
;
;
;




void * alloca(size_t);






}
# 37 "Enclave/Enclave.h" 2


extern "C" {

void mem_cpy( unsigned long *dst, unsigned long *src, unsigned long size );
int printf(const char* fmt, ...);
void worker(unsigned long *dst);


}
# 33 "Enclave/Enclave.cpp" 2
# 1 "Enclave/Enclave_t.h" 1



# 1 "/opt/intel/sgxsdk/include/tlibc/stdint.h" 1
# 22 "/opt/intel/sgxsdk/include/tlibc/stdint.h"
# 1 "/opt/intel/sgxsdk/include/tlibc/sys/stdint.h" 1
# 28 "/opt/intel/sgxsdk/include/tlibc/sys/stdint.h"
typedef __int8_t int8_t;




typedef __uint8_t uint8_t;




typedef __int16_t int16_t;




typedef __uint16_t uint16_t;




typedef __int32_t int32_t;




typedef __uint32_t uint32_t;




typedef __int64_t int64_t;




typedef __uint64_t uint64_t;



typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;
typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;
typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;
typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;


typedef __int_fast8_t int_fast8_t;
typedef __uint_fast8_t uint_fast8_t;
typedef __int_fast16_t int_fast16_t;
typedef __uint_fast16_t uint_fast16_t;
typedef __int_fast32_t int_fast32_t;
typedef __uint_fast32_t uint_fast32_t;
typedef __int_fast64_t int_fast64_t;
typedef __uint_fast64_t uint_fast64_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;



typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
# 23 "/opt/intel/sgxsdk/include/tlibc/stdint.h" 2
# 5 "Enclave/Enclave_t.h" 2
# 1 "/opt/intel/sgxsdk/include/tlibc/wchar.h" 1
# 84 "/opt/intel/sgxsdk/include/tlibc/wchar.h"
typedef __mbstate_t mbstate_t;




typedef __wint_t wint_t;
# 101 "/opt/intel/sgxsdk/include/tlibc/wchar.h"
extern "C" {

wint_t btowc(int);
int wctob(wint_t);
size_t mbrlen(const char *, size_t, mbstate_t *);
size_t mbrtowc(wchar_t *, const char *, size_t, mbstate_t *);
int mbsinit(const mbstate_t *);
size_t mbsrtowcs(wchar_t *, const char **, size_t, mbstate_t *);
size_t wcrtomb(char *, wchar_t, mbstate_t *);
wchar_t * wcschr(const wchar_t *, wchar_t);
int wcscmp(const wchar_t *, const wchar_t *);
int wcscoll(const wchar_t *, const wchar_t *);
size_t wcscspn(const wchar_t *, const wchar_t *);
size_t wcslen(const wchar_t *);
wchar_t * wcsncat(wchar_t *, const wchar_t *, size_t);
int wcsncmp(const wchar_t *, const wchar_t *, size_t);
wchar_t * wcsncpy(wchar_t *, const wchar_t *, size_t);
wchar_t * wcspbrk(const wchar_t *, const wchar_t *);
wchar_t * wcsrchr(const wchar_t *, wchar_t);
size_t wcsrtombs(char *, const wchar_t **, size_t, mbstate_t *);
size_t wcsspn(const wchar_t *, const wchar_t *);
wchar_t * wcsstr(const wchar_t *, const wchar_t *);
wchar_t * wcstok(wchar_t *, const wchar_t *, wchar_t **);
size_t wcsxfrm(wchar_t *, const wchar_t *, size_t);
wchar_t * wmemchr(const wchar_t *, wchar_t, size_t);
int wmemcmp(const wchar_t *, const wchar_t *, size_t);
wchar_t * wmemcpy(wchar_t *, const wchar_t *, size_t);
wchar_t * wmemmove(wchar_t *, const wchar_t *, size_t);
wchar_t * wmemset(wchar_t *, wchar_t, size_t);

int swprintf(wchar_t *, size_t, const wchar_t *, ...);
int vswprintf(wchar_t *, size_t, const wchar_t *, __va_list);


wchar_t * wcswcs(const wchar_t *, const wchar_t *);

}
# 6 "Enclave/Enclave_t.h" 2
# 1 "/opt/intel/sgxsdk/include/tlibc/stddef.h" 1
# 43 "/opt/intel/sgxsdk/include/tlibc/stddef.h"
typedef __ptrdiff_t ptrdiff_t;
# 7 "Enclave/Enclave_t.h" 2
# 1 "/opt/intel/sgxsdk/include/sgx_edger8r.h" 1
# 46 "/opt/intel/sgxsdk/include/sgx_edger8r.h"
# 1 "/opt/intel/sgxsdk/include/sgx_defs.h" 1
# 47 "/opt/intel/sgxsdk/include/sgx_edger8r.h" 2
# 1 "/opt/intel/sgxsdk/include/sgx_error.h" 1
# 37 "/opt/intel/sgxsdk/include/sgx_error.h"
typedef enum _status_t
{
    SGX_SUCCESS = (0x00000000|(0x0000)),

    SGX_ERROR_UNEXPECTED = (0x00000000|(0x0001)),
    SGX_ERROR_INVALID_PARAMETER = (0x00000000|(0x0002)),
    SGX_ERROR_OUT_OF_MEMORY = (0x00000000|(0x0003)),
    SGX_ERROR_ENCLAVE_LOST = (0x00000000|(0x0004)),
    SGX_ERROR_INVALID_STATE = (0x00000000|(0x0005)),
    SGX_ERROR_FEATURE_NOT_SUPPORTED = (0x00000000|(0x0008)),



    SGX_ERROR_INVALID_FUNCTION = (0x00000000|(0x1001)),
    SGX_ERROR_OUT_OF_TCS = (0x00000000|(0x1003)),
    SGX_ERROR_ENCLAVE_CRASHED = (0x00000000|(0x1006)),
    SGX_ERROR_ECALL_NOT_ALLOWED = (0x00000000|(0x1007)),
    SGX_ERROR_OCALL_NOT_ALLOWED = (0x00000000|(0x1008)),
    SGX_ERROR_STACK_OVERRUN = (0x00000000|(0x1009)),

    SGX_ERROR_UNDEFINED_SYMBOL = (0x00000000|(0x2000)),
    SGX_ERROR_INVALID_ENCLAVE = (0x00000000|(0x2001)),
    SGX_ERROR_INVALID_ENCLAVE_ID = (0x00000000|(0x2002)),
    SGX_ERROR_INVALID_SIGNATURE = (0x00000000|(0x2003)),
    SGX_ERROR_NDEBUG_ENCLAVE = (0x00000000|(0x2004)),
    SGX_ERROR_OUT_OF_EPC = (0x00000000|(0x2005)),
    SGX_ERROR_NO_DEVICE = (0x00000000|(0x2006)),
    SGX_ERROR_MEMORY_MAP_CONFLICT= (0x00000000|(0x2007)),
    SGX_ERROR_INVALID_METADATA = (0x00000000|(0x2009)),
    SGX_ERROR_DEVICE_BUSY = (0x00000000|(0x200c)),
    SGX_ERROR_INVALID_VERSION = (0x00000000|(0x200d)),
    SGX_ERROR_MODE_INCOMPATIBLE = (0x00000000|(0x200e)),
    SGX_ERROR_ENCLAVE_FILE_ACCESS = (0x00000000|(0x200f)),
    SGX_ERROR_INVALID_MISC = (0x00000000|(0x2010)),
    SGX_ERROR_INVALID_LAUNCH_TOKEN = (0x00000000|(0x2011)),

    SGX_ERROR_MAC_MISMATCH = (0x00000000|(0x3001)),
    SGX_ERROR_INVALID_ATTRIBUTE = (0x00000000|(0x3002)),
    SGX_ERROR_INVALID_CPUSVN = (0x00000000|(0x3003)),
    SGX_ERROR_INVALID_ISVSVN = (0x00000000|(0x3004)),
    SGX_ERROR_INVALID_KEYNAME = (0x00000000|(0x3005)),

    SGX_ERROR_SERVICE_UNAVAILABLE = (0x00000000|(0x4001)),
    SGX_ERROR_SERVICE_TIMEOUT = (0x00000000|(0x4002)),
    SGX_ERROR_AE_INVALID_EPIDBLOB = (0x00000000|(0x4003)),
    SGX_ERROR_SERVICE_INVALID_PRIVILEGE = (0x00000000|(0x4004)),
    SGX_ERROR_EPID_MEMBER_REVOKED = (0x00000000|(0x4005)),
    SGX_ERROR_UPDATE_NEEDED = (0x00000000|(0x4006)),
    SGX_ERROR_NETWORK_FAILURE = (0x00000000|(0x4007)),
    SGX_ERROR_AE_SESSION_INVALID = (0x00000000|(0x4008)),
    SGX_ERROR_BUSY = (0x00000000|(0x400a)),
    SGX_ERROR_MC_NOT_FOUND = (0x00000000|(0x400c)),
    SGX_ERROR_MC_NO_ACCESS_RIGHT = (0x00000000|(0x400d)),
    SGX_ERROR_MC_USED_UP = (0x00000000|(0x400e)),
    SGX_ERROR_MC_OVER_QUOTA = (0x00000000|(0x400f)),
    SGX_ERROR_KDF_MISMATCH = (0x00000000|(0x4011)),
    SGX_ERROR_UNRECOGNIZED_PLATFORM = (0x00000000|(0x4012)),
    SGX_ERROR_UNSUPPORTED_CONFIG = (0x00000000|(0x4013)),

    SGX_ERROR_NO_PRIVILEGE = (0x00000000|(0x5002)),


    SGX_ERROR_PCL_ENCRYPTED = (0x00000000|(0x6001)),
    SGX_ERROR_PCL_NOT_ENCRYPTED = (0x00000000|(0x6002)),
    SGX_ERROR_PCL_MAC_MISMATCH = (0x00000000|(0x6003)),
    SGX_ERROR_PCL_SHA_MISMATCH = (0x00000000|(0x6004)),
    SGX_ERROR_PCL_GUID_MISMATCH = (0x00000000|(0x6005)),


    SGX_ERROR_FILE_BAD_STATUS = (0x00000000|(0x7001)),
    SGX_ERROR_FILE_NO_KEY_ID = (0x00000000|(0x7002)),
    SGX_ERROR_FILE_NAME_MISMATCH = (0x00000000|(0x7003)),
    SGX_ERROR_FILE_NOT_SGX_FILE = (0x00000000|(0x7004)),
    SGX_ERROR_FILE_CANT_OPEN_RECOVERY_FILE = (0x00000000|(0x7005)),
    SGX_ERROR_FILE_CANT_WRITE_RECOVERY_FILE = (0x00000000|(0x7006)),
    SGX_ERROR_FILE_RECOVERY_NEEDED = (0x00000000|(0x7007)),
    SGX_ERROR_FILE_FLUSH_FAILED = (0x00000000|(0x7008)),
    SGX_ERROR_FILE_CLOSE_FAILED = (0x00000000|(0x7009)),


    SGX_ERROR_UNSUPPORTED_ATT_KEY_ID = (0x00000000|(0x8001)),
    SGX_ERROR_ATT_KEY_CERTIFICATION_FAILURE = (0x00000000|(0x8002)),
    SGX_ERROR_ATT_KEY_UNINITIALIZED = (0x00000000|(0x8003)),
    SGX_ERROR_INVALID_ATT_KEY_CERT_DATA = (0x00000000|(0x8004)),
    SGX_ERROR_PLATFORM_CERT_UNAVAILABLE = (0x00000000|(0x8005)),

    SGX_INTERNAL_ERROR_ENCLAVE_CREATE_INTERRUPTED = (0x00000000|(0xF001)),

} sgx_status_t;
# 48 "/opt/intel/sgxsdk/include/sgx_edger8r.h" 2
# 1 "/opt/intel/sgxsdk/include/sgx_eid.h" 1
# 37 "/opt/intel/sgxsdk/include/sgx_eid.h"
typedef uint64_t sgx_enclave_id_t;
# 49 "/opt/intel/sgxsdk/include/sgx_edger8r.h" 2
# 59 "/opt/intel/sgxsdk/include/sgx_edger8r.h"
extern "C" {
# 69 "/opt/intel/sgxsdk/include/sgx_edger8r.h"
void* sgx_ocalloc(size_t size);
void* sgx_ocalloc_switchless(size_t size);







void sgx_ocfree(void);
void sgx_ocfree_switchless(void);
# 90 "/opt/intel/sgxsdk/include/sgx_edger8r.h"
sgx_status_t sgx_ecall(const sgx_enclave_id_t eid,
                              const int index,
                              const void* ocall_table,
                              void* ms);
sgx_status_t sgx_ecall_switchless(const sgx_enclave_id_t eid,
                              const int index,
                              const void* ocall_table,
                              void* ms);
# 106 "/opt/intel/sgxsdk/include/sgx_edger8r.h"
sgx_status_t sgx_ocall(const unsigned int index,
                              void* ms);
sgx_status_t sgx_ocall_switchless(const unsigned int index,
                              void* ms);


}
# 8 "Enclave/Enclave_t.h" 2







extern "C" {


int addint(unsigned long int a, unsigned long int b, unsigned long int* outaddr);

sgx_status_t ocall_print_string(const char* str);


}
# 34 "Enclave/Enclave.cpp" 2
# 1 "/opt/intel/sgxsdk/include/tlibc/stdarg.h" 1
# 41 "/opt/intel/sgxsdk/include/tlibc/stdarg.h"
typedef __va_list va_list;
# 35 "Enclave/Enclave.cpp" 2
# 1 "/opt/intel/sgxsdk/include/tlibc/stdio.h" 1
# 63 "/opt/intel/sgxsdk/include/tlibc/stdio.h"
extern "C" {

int snprintf(char *, size_t, const char *, ...) __attribute__((__format__ (printf, 3, 4)));
int vsnprintf(char *, size_t, const char *, __va_list) __attribute__((__format__ (printf, 3, 0)));
# 92 "/opt/intel/sgxsdk/include/tlibc/stdio.h"
}
# 36 "Enclave/Enclave.cpp" 2
# 1 "/opt/intel/sgxsdk/include/tlibc/string.h" 1
# 48 "/opt/intel/sgxsdk/include/tlibc/string.h"
typedef int errno_t;
# 59 "/opt/intel/sgxsdk/include/tlibc/string.h"
extern "C" {

void * memchr(const void *, int, size_t);
int memcmp(const void *, const void *, size_t);
void * memcpy(void *, const void *, size_t);
void * memmove(void *, const void *, size_t);
void * memset(void *, int, size_t);
char * strchr(const char *, int);
int strcmp(const char *, const char *);
int strcoll(const char *, const char *);
size_t strcspn(const char *, const char *);
char * strerror(int);
size_t strlen(const char *);
char * strncat(char *, const char *, size_t);
int strncmp(const char *, const char *, size_t);
char * strncpy(char *, const char *, size_t);
char * strpbrk(const char *, const char *);
char * strrchr(const char *, int);
size_t strspn(const char *, const char *);
char * strstr(const char *, const char *);
char * strtok(char *, const char *);
size_t strxfrm(char *, const char *, size_t);
size_t strlcpy(char *, const char *, size_t);
errno_t memset_s(void *s, size_t smax, int c, size_t n);




;
;




char * strndup(const char *, size_t);
size_t strnlen(const char *, size_t);
int consttime_memequal(const void *b1, const void *b2, size_t len);




int bcmp(const void *, const void *, size_t);
void bcopy(const void *, void *, size_t);
void bzero(void *, size_t);
char * index(const char *, int);
void * mempcpy(void *, const void *, size_t);
char * rindex(const char *, int);
char * stpncpy(char *dest, const char *src, size_t n);
int strcasecmp(const char *, const char *);
int strncasecmp(const char *, const char *, size_t);

int ffs(int);
int ffsl(long int);
int ffsll(long long int);

char * strtok_r(char *, const char *, char **);
int strerror_r(int, char *, size_t);




;
;

}
# 37 "Enclave/Enclave.cpp" 2
# 1 "Enclave/Crypto.h" 1
# 1 "/opt/intel/sgxsdk/include/sgx_trts.h" 1
# 40 "/opt/intel/sgxsdk/include/sgx_trts.h"
extern "C" {
# 52 "/opt/intel/sgxsdk/include/sgx_trts.h"
int sgx_is_within_enclave(const void *addr, size_t size);
# 63 "/opt/intel/sgxsdk/include/sgx_trts.h"
int sgx_is_outside_enclave(const void *addr, size_t size);







int sgx_is_enclave_crashed(void) __attribute__((section(".nipx")));
# 83 "/opt/intel/sgxsdk/include/sgx_trts.h"
sgx_status_t sgx_read_rand(unsigned char *rand, size_t length_in_bytes);


}
# 2 "Enclave/Crypto.h" 2
# 1 "/opt/intel/sgxsdk/include/sgx_tcrypto.h" 1
# 43 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
# 1 "/opt/intel/sgxsdk/include/sgx.h" 1
# 36 "/opt/intel/sgxsdk/include/sgx.h"
# 1 "/opt/intel/sgxsdk/include/sgx_attributes.h" 1
# 53 "/opt/intel/sgxsdk/include/sgx_attributes.h"
typedef struct _attributes_t
{
    uint64_t flags;
    uint64_t xfrm;
} sgx_attributes_t;


typedef uint32_t sgx_misc_select_t;

typedef struct _sgx_misc_attribute_t {
    sgx_attributes_t secs_attr;
    sgx_misc_select_t misc_select;
} sgx_misc_attribute_t;
# 37 "/opt/intel/sgxsdk/include/sgx.h" 2
# 1 "/opt/intel/sgxsdk/include/sgx_key.h" 1
# 64 "/opt/intel/sgxsdk/include/sgx_key.h"
typedef uint8_t sgx_key_128bit_t[16];
typedef uint16_t sgx_isv_svn_t;
typedef uint16_t sgx_config_svn_t;
typedef uint8_t sgx_config_id_t[64];


typedef struct _sgx_cpu_svn_t
{
    uint8_t svn[16];
} sgx_cpu_svn_t;

typedef struct _sgx_key_id_t
{
    uint8_t id[32];
} sgx_key_id_t;



typedef struct _key_request_t
{
    uint16_t key_name;
    uint16_t key_policy;
    sgx_isv_svn_t isv_svn;
    uint16_t reserved1;
    sgx_cpu_svn_t cpu_svn;
    sgx_attributes_t attribute_mask;
    sgx_key_id_t key_id;
    sgx_misc_select_t misc_mask;
    sgx_config_svn_t config_svn;
    uint8_t reserved2[434];
} sgx_key_request_t;
# 38 "/opt/intel/sgxsdk/include/sgx.h" 2
# 1 "/opt/intel/sgxsdk/include/sgx_report.h" 1
# 52 "/opt/intel/sgxsdk/include/sgx_report.h"
typedef struct _sgx_measurement_t
{
    uint8_t m[32];
} sgx_measurement_t;

typedef uint8_t sgx_mac_t[16];

typedef struct _sgx_report_data_t
{
    uint8_t d[64];
} sgx_report_data_t;

typedef uint16_t sgx_prod_id_t;

typedef uint8_t sgx_isvext_prod_id_t[16];
typedef uint8_t sgx_isvfamily_id_t[16];






typedef struct _target_info_t
{
    sgx_measurement_t mr_enclave;
    sgx_attributes_t attributes;
    uint8_t reserved1[2];
    sgx_config_svn_t config_svn;
    sgx_misc_select_t misc_select;
    uint8_t reserved2[8];
    sgx_config_id_t config_id;
    uint8_t reserved3[384];
} sgx_target_info_t;
# 93 "/opt/intel/sgxsdk/include/sgx_report.h"
typedef struct _report_body_t
{
    sgx_cpu_svn_t cpu_svn;
    sgx_misc_select_t misc_select;
    uint8_t reserved1[12];
    sgx_isvext_prod_id_t isv_ext_prod_id;
    sgx_attributes_t attributes;
    sgx_measurement_t mr_enclave;
    uint8_t reserved2[32];
    sgx_measurement_t mr_signer;
    uint8_t reserved3[32];
    sgx_config_id_t config_id;
    sgx_prod_id_t isv_prod_id;
    sgx_isv_svn_t isv_svn;
    sgx_config_svn_t config_svn;
    uint8_t reserved4[42];
    sgx_isvfamily_id_t isv_family_id;
    sgx_report_data_t report_data;
} sgx_report_body_t;

typedef struct _report_t
{
    sgx_report_body_t body;
    sgx_key_id_t key_id;
    sgx_mac_t mac;
} sgx_report_t;
# 39 "/opt/intel/sgxsdk/include/sgx.h" 2
# 44 "/opt/intel/sgxsdk/include/sgx_tcrypto.h" 2
# 63 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
typedef struct _sgx_ec256_dh_shared_t
{
    uint8_t s[32];
} sgx_ec256_dh_shared_t;

typedef struct _sgx_ec256_private_t
{
    uint8_t r[32];
} sgx_ec256_private_t;

typedef struct _sgx_ec256_public_t
{
    uint8_t gx[32];
    uint8_t gy[32];
} sgx_ec256_public_t;

typedef struct _sgx_ec256_signature_t
{
    uint32_t x[(32/sizeof(uint32_t))];
    uint32_t y[(32/sizeof(uint32_t))];
} sgx_ec256_signature_t;

typedef struct _sgx_rsa3072_public_key_t
{
    uint8_t mod[384];
    uint8_t exp[4];
} sgx_rsa3072_public_key_t;

typedef struct _sgx_rsa3072_key_t
{
    uint8_t mod[384];
    uint8_t d[384];
    uint8_t e[4];
} sgx_rsa3072_key_t;

typedef uint8_t sgx_rsa3072_signature_t[384];

typedef void* sgx_sha_state_handle_t;
typedef void* sgx_hmac_state_handle_t;
typedef void* sgx_cmac_state_handle_t;
typedef void* sgx_ecc_state_handle_t;
typedef void* sgx_aes_state_handle_t;

typedef uint8_t sgx_sha1_hash_t[20];
typedef uint8_t sgx_sha256_hash_t[32];

typedef uint8_t sgx_aes_gcm_128bit_key_t[16];
typedef uint8_t sgx_aes_gcm_128bit_tag_t[16];
typedef uint8_t sgx_hmac_256bit_key_t[32];
typedef uint8_t sgx_hmac_256bit_tag_t[32];
typedef uint8_t sgx_cmac_128bit_key_t[16];
typedef uint8_t sgx_cmac_128bit_tag_t[16];
typedef uint8_t sgx_aes_ctr_128bit_key_t[16];

typedef enum {
    SGX_EC_VALID,

    SGX_EC_COMPOSITE_BASE,
    SGX_EC_COMPLICATED_BASE,
    SGX_EC_IS_ZERO_DISCRIMINANT,
    SGX_EC_COMPOSITE_ORDER,
    SGX_EC_INVALID_ORDER,
    SGX_EC_IS_WEAK_MOV,
    SGX_EC_IS_WEAK_SSA,
    SGX_EC_IS_SUPER_SINGULAR,

    SGX_EC_INVALID_PRIVATE_KEY,
    SGX_EC_INVALID_PUBLIC_KEY,
    SGX_EC_INVALID_KEY_PAIR,

    SGX_EC_POINT_OUT_OF_GROUP,
    SGX_EC_POINT_IS_AT_INFINITY,
    SGX_EC_POINT_IS_NOT_VALID,

    SGX_EC_POINT_IS_EQUAL,
    SGX_EC_POINT_IS_NOT_EQUAL,

    SGX_EC_INVALID_SIGNATURE
} sgx_generic_ecresult_t;


typedef enum {
 SGX_RSA_VALID,

 SGX_RSA_INVALID_SIGNATURE
} sgx_rsa_result_t;

typedef enum {
    SGX_RSA_PRIVATE_KEY,

    SGX_RSA_PUBLIC_KEY
} sgx_rsa_key_type_t;
# 174 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
typedef struct _rsa_params_t {
 unsigned int n[(384/sizeof(unsigned int))];
 unsigned int e[(4/sizeof(unsigned int))];
 unsigned int d[(384/sizeof(unsigned int))];
 unsigned int p[(192/sizeof(unsigned int))];
 unsigned int q[(192/sizeof(unsigned int))];
 unsigned int dmp1[(192/sizeof(unsigned int))];
 unsigned int dmq1[(192/sizeof(unsigned int))];
 unsigned int iqmp[(192/sizeof(unsigned int))];
}rsa_params_t;


extern "C" {
# 220 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_sha256_msg(const uint8_t *p_src, uint32_t src_len, sgx_sha256_hash_t *p_hash);
    sgx_status_t sgx_sha1_msg(const uint8_t *p_src, uint32_t src_len, sgx_sha1_hash_t *p_hash);







    sgx_status_t sgx_sha256_init(sgx_sha_state_handle_t* p_sha_handle);
    sgx_status_t sgx_sha1_init(sgx_sha_state_handle_t* p_sha_handle);
# 240 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_sha256_update(const uint8_t *p_src, uint32_t src_len, sgx_sha_state_handle_t sha_handle);
    sgx_status_t sgx_sha1_update(const uint8_t *p_src, size_t src_len, sgx_sha_state_handle_t sha_handle);
# 250 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_sha256_get_hash(sgx_sha_state_handle_t sha_handle, sgx_sha256_hash_t *p_hash);
    sgx_status_t sgx_sha1_get_hash(sgx_sha_state_handle_t sha_handle, sgx_sha1_hash_t *p_hash);







    sgx_status_t sgx_sha256_close(sgx_sha_state_handle_t sha_handle);
    sgx_status_t sgx_sha1_close(sgx_sha_state_handle_t sha_handle);
# 307 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_rijndael128GCM_encrypt(const sgx_aes_gcm_128bit_key_t *p_key,
                                                const uint8_t *p_src,
                                                uint32_t src_len,
                                                uint8_t *p_dst,
                                                const uint8_t *p_iv,
                                                uint32_t iv_len,
                                                const uint8_t *p_aad,
                                                uint32_t aad_len,
                                                sgx_aes_gcm_128bit_tag_t *p_out_mac);
    sgx_status_t sgx_rijndael128GCM_decrypt(const sgx_aes_gcm_128bit_key_t *p_key,
                                                const uint8_t *p_src,
                                                uint32_t src_len,
                                                uint8_t *p_dst,
                                                const uint8_t *p_iv,
                                                uint32_t iv_len,
                                                const uint8_t *p_aad,
                                                uint32_t aad_len,
                                                const sgx_aes_gcm_128bit_tag_t *p_in_mac);
# 361 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_rijndael128_cmac_msg(const sgx_cmac_128bit_key_t *p_key,
                                                    const uint8_t *p_src,
                                                    uint32_t src_len,
                                                    sgx_cmac_128bit_tag_t *p_mac);







    sgx_status_t sgx_cmac128_init(const sgx_cmac_128bit_key_t *p_key, sgx_cmac_state_handle_t* p_cmac_handle);
# 382 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_cmac128_update(const uint8_t *p_src, uint32_t src_len, sgx_cmac_state_handle_t cmac_handle);
# 391 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_cmac128_final(sgx_cmac_state_handle_t cmac_handle, sgx_cmac_128bit_tag_t *p_hash);







    sgx_status_t sgx_cmac128_close(sgx_cmac_state_handle_t cmac_handle);
# 412 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_hmac_sha256_msg(const unsigned char *p_src, int src_len, const unsigned char *p_key, int key_len,
        unsigned char *p_mac, int mac_len);
# 422 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_hmac256_init(const unsigned char *p_key, int key_len, sgx_hmac_state_handle_t *p_hmac_handle);
# 431 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_hmac256_update(const uint8_t *p_src, int src_len, sgx_hmac_state_handle_t hmac_handle);
# 440 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_hmac256_final(unsigned char *p_hash, int hash_len, sgx_hmac_state_handle_t hmac_handle);






    sgx_status_t sgx_hmac256_close(sgx_hmac_state_handle_t hmac_handle);
# 491 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_aes_ctr_encrypt(
                        const sgx_aes_ctr_128bit_key_t *p_key,
                        const uint8_t *p_src,
                        const uint32_t src_len,
                        uint8_t *p_ctr,
                        const uint32_t ctr_inc_bits,
                        uint8_t *p_dst);

    sgx_status_t sgx_aes_ctr_decrypt(
                        const sgx_aes_ctr_128bit_key_t *p_key,
                        const uint8_t *p_src,
                        const uint32_t src_len,
                        uint8_t *p_ctr,
                        const uint32_t ctr_inc_bits,
                        uint8_t *p_dst);
# 540 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_ecc256_open_context(sgx_ecc_state_handle_t* p_ecc_handle);







    sgx_status_t sgx_ecc256_close_context(sgx_ecc_state_handle_t ecc_handle);
# 574 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_ecc256_create_key_pair(sgx_ec256_private_t *p_private,
                                                sgx_ec256_public_t *p_public,
                                                sgx_ecc_state_handle_t ecc_handle);
# 586 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_ecc256_check_point(const sgx_ec256_public_t *p_point,
                                    const sgx_ecc_state_handle_t ecc_handle,
                                    int *p_valid);
# 639 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_ecc256_compute_shared_dhkey(sgx_ec256_private_t *p_private_b,
                                                    sgx_ec256_public_t *p_public_ga,
                                                    sgx_ec256_dh_shared_t *p_shared_key,
                                                    sgx_ecc_state_handle_t ecc_handle);
# 674 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_ecdsa_sign(const uint8_t *p_data,
                                    uint32_t data_size,
                                    sgx_ec256_private_t *p_private,
                                    sgx_ec256_signature_t *p_signature,
                                    sgx_ecc_state_handle_t ecc_handle);
# 707 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_ecdsa_verify(const uint8_t *p_data,
                                        uint32_t data_size,
                                        const sgx_ec256_public_t *p_public,
                                        sgx_ec256_signature_t *p_signature,
                                        uint8_t *p_result,
                                        sgx_ecc_state_handle_t ecc_handle);
# 738 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_ecdsa_verify_hash(const uint8_t *p_data,
                                        const sgx_ec256_public_t *p_public,
                                        sgx_ec256_signature_t *p_signature,
                                        uint8_t *p_result,
                                        sgx_ecc_state_handle_t ecc_handle);
# 759 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_rsa3072_sign(const uint8_t *p_data,
        uint32_t data_size,
        const sgx_rsa3072_key_t *p_key,
        sgx_rsa3072_signature_t *p_signature);
# 783 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_rsa3072_verify(const uint8_t *p_data,
        uint32_t data_size,
        const sgx_rsa3072_public_key_t *p_public,
        const sgx_rsa3072_signature_t *p_signature,
  sgx_rsa_result_t *p_result);
# 798 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_create_rsa_key_pair(int n_byte_size, int e_byte_size, unsigned char *p_n, unsigned char *p_d, unsigned char *p_e,
        unsigned char *p_p, unsigned char *p_q, unsigned char *p_dmp1,
        unsigned char *p_dmq1, unsigned char *p_iqmp);
# 814 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_rsa_priv_decrypt_sha256(void* rsa_key, unsigned char* pout_data, size_t* pout_len, const unsigned char* pin_data, const size_t pin_len);
# 828 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_rsa_pub_encrypt_sha256(void* rsa_key, unsigned char* pout_data, size_t* pout_len, const unsigned char* pin_data, const size_t pin_len);
# 845 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_create_rsa_priv2_key(int mod_size, int exp_size, const unsigned char *p_rsa_key_e, const unsigned char *p_rsa_key_p, const unsigned char *p_rsa_key_q,
        const unsigned char *p_rsa_key_dmp1, const unsigned char *p_rsa_key_dmq1, const unsigned char *p_rsa_key_iqmp,
        void **new_pri_key2);
# 862 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_create_rsa_priv1_key(int n_byte_size, int e_byte_size, int d_byte_size, const unsigned char *le_n, const unsigned char *le_e,
        const unsigned char *le_d, void **new_pri_key1);
# 876 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_create_rsa_pub1_key(int mod_size, int exp_size, const unsigned char *le_n, const unsigned char *le_e, void **new_pub_key1);
# 891 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_free_rsa_key(void *p_rsa_key, sgx_rsa_key_type_t key_type, int mod_size, int exp_size);
# 905 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_calculate_ecdsa_priv_key(const unsigned char* hash_drg, int hash_drg_len,
        const unsigned char* sgx_nistp256_r_m1, int sgx_nistp256_r_m1_len,
        unsigned char* out_key, int out_key_len);
# 917 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_ecc256_calculate_pub_from_priv(const sgx_ec256_private_t *p_att_priv_key,
        sgx_ec256_public_t *p_att_pub_key);
# 932 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_aes_gcm128_enc_init(
        const uint8_t *p_key,
        const uint8_t *p_iv,
        uint32_t iv_len,
        const uint8_t *p_aad,
        uint32_t aad_len,
        sgx_aes_state_handle_t *aes_gcm_state);
# 948 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_aes_gcm128_enc_get_mac(uint8_t *mac, sgx_aes_state_handle_t aes_gcm_state);
# 957 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_aes_gcm_close(sgx_aes_state_handle_t aes_gcm_state);
# 969 "/opt/intel/sgxsdk/include/sgx_tcrypto.h"
    sgx_status_t sgx_aes_gcm128_enc_update(
        uint8_t *p_src,
        uint32_t src_len,
        uint8_t *p_dst,
        sgx_aes_state_handle_t aes_gcm_state);


}
# 3 "Enclave/Crypto.h" 2




static sgx_aes_gcm_128bit_key_t aes_key = { 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf };
static sgx_aes_ctr_128bit_key_t p_key[16] = { 0, 7, 7, 8, 3, 1, 4, 4, 9, 8, 0, 0, 0, 0, 0 };
static char* ctr = "0000000";
char* p_private1 = "30819f300d06092a864886f70d010101050003818d0030818902818100b66a25e6a9d5f68d4150841af519149ae59276f1cc2444c7befbe8aa140f584bc2e8b8c67745866c7ed07ecfab131151c7aa962726bf5f29c30216240c0864802117d18ec92dff662d1cf1c68b4b7f83b0b763e7c75393c3a82a141813aca8b26388cb09df858e7cb2aaeee07bdcf55df336331aadf2d5f707fe203c6a5681710203010001";


void decryptMessage(char *encMessageIn, size_t len, char *decMessageOut, size_t lenOut);
void encryptMessage(char *decMessageIn, size_t len, char *encMessageOut, size_t lenOut);
# 38 "Enclave/Enclave.cpp" 2
# 1 "/opt/intel/sgxsdk/include/sgx_spinlock.h" 1
# 42 "/opt/intel/sgxsdk/include/sgx_spinlock.h"
typedef volatile uint32_t sgx_spinlock_t;




extern "C" {


uint32_t sgx_spin_lock(sgx_spinlock_t *lock);
uint32_t sgx_spin_unlock(sgx_spinlock_t *lock);


}
# 39 "Enclave/Enclave.cpp" 2
# 1 "/opt/intel/sgxsdk/include/sgx_uae_service.h" 1
# 35 "/opt/intel/sgxsdk/include/sgx_uae_service.h"
# 1 "/opt/intel/sgxsdk/include/sgx_uae_platform.h" 1
# 38 "/opt/intel/sgxsdk/include/sgx_uae_platform.h"
# 1 "/opt/intel/sgxsdk/include/sgx_urts.h" 1
# 58 "/opt/intel/sgxsdk/include/sgx_urts.h"
#pragma pack(push, 1)


typedef struct _sgx_kss_config_t
{
    sgx_config_id_t config_id;
    sgx_config_svn_t config_svn;
} sgx_kss_config_t;

#pragma pack(pop)
# 76 "/opt/intel/sgxsdk/include/sgx_urts.h"
extern "C" {



void* sgx_get_aep(void);
void sgx_set_aep(void *aep);
void* sgx_get_tcs(void);
void sgx_set_load_ptr(void *load_ptr);

typedef uint8_t sgx_launch_token_t[1024];
# 94 "/opt/intel/sgxsdk/include/sgx_urts.h"
sgx_status_t sgx_create_enclave(const char *file_name,
                                       const int debug,
                                       sgx_launch_token_t *launch_token,
                                       int *launch_token_updated,
                                       sgx_enclave_id_t *enclave_id,
                                       sgx_misc_attribute_t *misc_attr);



sgx_status_t sgx_create_enclave_ex(const char * file_name,
                                          const int debug,
                                          sgx_launch_token_t * launch_token,
                                          int * launch_token_updated,
                                          sgx_enclave_id_t * enclave_id,
                                          sgx_misc_attribute_t * misc_attr,
                                          const uint32_t ex_features,
                                          const void* ex_features_p[32]);


sgx_status_t sgx_create_enclave_from_buffer_ex(
                                          uint8_t *buffer,
                                          size_t buffer_size,
                                          const int debug,
                                          sgx_enclave_id_t * enclave_id,
                                          sgx_misc_attribute_t * misc_attr,
                                          const uint32_t ex_features,
                                          const void* ex_features_p[32]);





sgx_status_t sgx_create_encrypted_enclave(
                        const char *file_name,
                        const int debug,
                        sgx_launch_token_t *launch_token,
                        int *launch_token_updated,
                        sgx_enclave_id_t *enclave_id,
                        sgx_misc_attribute_t *misc_attr,
                        uint8_t* sealed_key);

sgx_status_t sgx_destroy_enclave(const sgx_enclave_id_t enclave_id);

sgx_status_t sgx_get_target_info(
 const sgx_enclave_id_t enclave_id,
 sgx_target_info_t* target_info);


}
# 39 "/opt/intel/sgxsdk/include/sgx_uae_platform.h" 2
# 52 "/opt/intel/sgxsdk/include/sgx_uae_platform.h"
typedef struct _sgx_ps_cap_t
{
    uint32_t ps_cap0;
    uint32_t ps_cap1;
} sgx_ps_cap_t;


extern "C" {
# 68 "/opt/intel/sgxsdk/include/sgx_uae_platform.h"
sgx_status_t sgx_get_ps_cap(sgx_ps_cap_t* p_sgx_ps_cap);





}
# 36 "/opt/intel/sgxsdk/include/sgx_uae_service.h" 2
# 1 "/opt/intel/sgxsdk/include/sgx_uae_launch.h" 1
# 41 "/opt/intel/sgxsdk/include/sgx_uae_launch.h"
extern "C" {
# 50 "/opt/intel/sgxsdk/include/sgx_uae_launch.h"
sgx_status_t sgx_get_whitelist_size(uint32_t* p_whitelist_size);
# 59 "/opt/intel/sgxsdk/include/sgx_uae_launch.h"
sgx_status_t sgx_get_whitelist(uint8_t* p_whitelist, uint32_t whitelist_size);
# 68 "/opt/intel/sgxsdk/include/sgx_uae_launch.h"
sgx_status_t sgx_register_wl_cert_chain(uint8_t* p_wl_cert_chain, uint32_t wl_cert_chain_size);


}
# 37 "/opt/intel/sgxsdk/include/sgx_uae_service.h" 2
# 1 "/opt/intel/sgxsdk/include/sgx_uae_epid.h" 1
# 37 "/opt/intel/sgxsdk/include/sgx_uae_epid.h"
# 1 "/opt/intel/sgxsdk/include/sgx_quote.h" 1
# 47 "/opt/intel/sgxsdk/include/sgx_quote.h"
extern "C" {


#pragma pack(push, 1)
typedef uint8_t sgx_epid_group_id_t[4];

typedef struct _spid_t
{
    uint8_t id[16];
} sgx_spid_t;

typedef struct _basename_t
{
    uint8_t name[32];
} sgx_basename_t;


typedef struct _quote_nonce
{
    uint8_t rand[16];
} sgx_quote_nonce_t;

typedef enum
{
    SGX_UNLINKABLE_SIGNATURE,
    SGX_LINKABLE_SIGNATURE
} sgx_quote_sign_type_t;

typedef struct _quote_t
{
    uint16_t version;
    uint16_t sign_type;
    sgx_epid_group_id_t epid_group_id;
    sgx_isv_svn_t qe_svn;
    sgx_isv_svn_t pce_svn;
    uint32_t xeid;
    sgx_basename_t basename;
    sgx_report_body_t report_body;
    uint32_t signature_len;
    uint8_t signature[];
} sgx_quote_t;


typedef struct _platform_info
{
    uint8_t platform_info[101];
} sgx_platform_info_t;

typedef struct _update_info_bit
{
    int ucodeUpdate;
    int csmeFwUpdate;
    int pswUpdate;
} sgx_update_info_bit_t;

typedef struct _att_key_id_t {
    uint8_t att_key_id[256];
}sgx_att_key_id_t;

typedef struct _qe_report_info_t {
    sgx_quote_nonce_t nonce;
    sgx_target_info_t app_enclave_target_info;
    sgx_report_t qe_report;
}sgx_qe_report_info_t;

#pragma pack(pop)



}
# 38 "/opt/intel/sgxsdk/include/sgx_uae_epid.h" 2




extern "C" {
# 53 "/opt/intel/sgxsdk/include/sgx_uae_epid.h"
sgx_status_t sgx_init_quote(
    sgx_target_info_t *p_target_info,
    sgx_epid_group_id_t *p_gid);
# 67 "/opt/intel/sgxsdk/include/sgx_uae_epid.h"
sgx_status_t sgx_calc_quote_size(
    const uint8_t *p_sig_rl,
    uint32_t sig_rl_size,
    uint32_t* p_quote_size);
# 81 "/opt/intel/sgxsdk/include/sgx_uae_epid.h"
__attribute__((deprecated))
sgx_status_t sgx_get_quote_size(
    const uint8_t *p_sig_rl,
    uint32_t* p_quote_size);
# 103 "/opt/intel/sgxsdk/include/sgx_uae_epid.h"
sgx_status_t sgx_get_quote(
    const sgx_report_t *p_report,
    sgx_quote_sign_type_t quote_type,
    const sgx_spid_t *p_spid,
    const sgx_quote_nonce_t *p_nonce,
    const uint8_t *p_sig_rl,
    uint32_t sig_rl_size,
    sgx_report_t *p_qe_report,
    sgx_quote_t *p_quote,
    uint32_t quote_size);







sgx_status_t sgx_get_extended_epid_group_id(uint32_t* p_extended_epid_group_id);
# 131 "/opt/intel/sgxsdk/include/sgx_uae_epid.h"
sgx_status_t sgx_report_attestation_status(
    const sgx_platform_info_t* p_platform_info,
    int attestation_status,
    sgx_update_info_bit_t* p_update_info);
# 161 "/opt/intel/sgxsdk/include/sgx_uae_epid.h"
sgx_status_t sgx_check_update_status(
    const sgx_platform_info_t* p_platform_info,
    sgx_update_info_bit_t* p_update_info,
    uint32_t config,
    uint32_t* p_status);


}
# 38 "/opt/intel/sgxsdk/include/sgx_uae_service.h" 2
# 1 "/opt/intel/sgxsdk/include/sgx_uae_quote_ex.h" 1
# 42 "/opt/intel/sgxsdk/include/sgx_uae_quote_ex.h"
extern "C" {
# 70 "/opt/intel/sgxsdk/include/sgx_uae_quote_ex.h"
sgx_status_t sgx_select_att_key_id(const uint8_t *p_att_key_id_list, uint32_t att_key_id_list_size,
                                                   sgx_att_key_id_t *p_selected_key_id);
# 128 "/opt/intel/sgxsdk/include/sgx_uae_quote_ex.h"
sgx_status_t sgx_init_quote_ex(const sgx_att_key_id_t* p_att_key_id,
                                            sgx_target_info_t *p_qe_target_info,
                                            size_t* p_pub_key_id_size,
                                            uint8_t* p_pub_key_id);
# 155 "/opt/intel/sgxsdk/include/sgx_uae_quote_ex.h"
sgx_status_t sgx_get_quote_size_ex(const sgx_att_key_id_t *p_att_key_id,
                                                uint32_t* p_quote_size);
# 195 "/opt/intel/sgxsdk/include/sgx_uae_quote_ex.h"
sgx_status_t sgx_get_quote_ex(const sgx_report_t *p_app_report,
                                           const sgx_att_key_id_t *p_att_key_id,
                                           sgx_qe_report_info_t *p_qe_report_info,
                                           uint8_t *p_quote,
                                           uint32_t quote_size);



}
# 39 "/opt/intel/sgxsdk/include/sgx_uae_service.h" 2
# 40 "Enclave/Enclave.cpp" 2
# 1 "/opt/intel/sgxsdk/include/sgx_ukey_exchange.h" 1
# 37 "/opt/intel/sgxsdk/include/sgx_ukey_exchange.h"
# 1 "/opt/intel/sgxsdk/include/sgx_key_exchange.h" 1
# 37 "/opt/intel/sgxsdk/include/sgx_key_exchange.h"
# 1 "/opt/intel/sgxsdk/include/sgx_ecp_types.h" 1
# 39 "/opt/intel/sgxsdk/include/sgx_ecp_types.h"
#pragma pack(push, 1)

# 1 "/opt/intel/sgxsdk/include/sgx_tcrypto.h" 1
# 42 "/opt/intel/sgxsdk/include/sgx_ecp_types.h" 2





typedef struct _ecc_param_t
{
    uint32_t eccP[(32/sizeof(uint32_t))];
    uint32_t eccA[(32/sizeof(uint32_t))];
    uint32_t eccB[(32/sizeof(uint32_t))];
    uint32_t eccG[2][(32/sizeof(uint32_t))];
    uint32_t eccR[(32/sizeof(uint32_t))];
} sgx_ecc_param_t;

typedef uint8_t sgx_ec_key_128bit_t[16];

#pragma pack(pop)
# 38 "/opt/intel/sgxsdk/include/sgx_key_exchange.h" 2
# 1 "/opt/intel/sgxsdk/include/sgx_tae_service.h" 1
# 49 "/opt/intel/sgxsdk/include/sgx_tae_service.h"
extern "C" {


#pragma pack(push, 1)

typedef uint64_t sgx_time_t;

typedef uint8_t sgx_time_source_nonce_t[32];



typedef struct _mc_uuid {
    uint8_t counter_id[3];
    uint8_t nonce[13];
} sgx_mc_uuid_t;


typedef struct _ps_sec_prop_desc
{
    uint8_t sgx_ps_sec_prop_desc[256];
} sgx_ps_sec_prop_desc_t;

typedef struct _ps_sec_prop_desc_ex
{
    sgx_ps_sec_prop_desc_t ps_sec_prop_desc;
    sgx_measurement_t pse_mrsigner;
    sgx_prod_id_t pse_prod_id;
    sgx_isv_svn_t pse_isv_svn;
} sgx_ps_sec_prop_desc_ex_t;

#pragma pack(pop)


sgx_status_t sgx_create_pse_session(void);


sgx_status_t sgx_close_pse_session(void);


sgx_status_t sgx_get_ps_sec_prop(sgx_ps_sec_prop_desc_t* security_property);


sgx_status_t sgx_get_ps_sec_prop_ex(sgx_ps_sec_prop_desc_ex_t* security_property);


sgx_status_t sgx_get_trusted_time(
    sgx_time_t* current_time,
    sgx_time_source_nonce_t* time_source_nonce
    );





sgx_status_t sgx_create_monotonic_counter_ex(
    uint16_t owner_policy,
    const sgx_attributes_t* owner_attribute_mask,
    sgx_mc_uuid_t* counter_uuid,
    uint32_t* counter_value
    );


sgx_status_t sgx_create_monotonic_counter(
    sgx_mc_uuid_t* counter_uuid,
    uint32_t* counter_value
    );


sgx_status_t sgx_destroy_monotonic_counter(const sgx_mc_uuid_t* counter_uuid);


sgx_status_t sgx_increment_monotonic_counter(
    const sgx_mc_uuid_t* counter_uuid,
    uint32_t* counter_value
    );


sgx_status_t sgx_read_monotonic_counter(
    const sgx_mc_uuid_t* counter_uuid,
    uint32_t* counter_value
    );


}
# 39 "/opt/intel/sgxsdk/include/sgx_key_exchange.h" 2


extern "C" {


typedef uint32_t sgx_ra_context_t;

typedef sgx_key_128bit_t sgx_ra_key_128_t;

typedef enum _ra_key_type_t
{
    SGX_RA_KEY_SK = 1,
    SGX_RA_KEY_MK,
} sgx_ra_key_type_t;

typedef struct _ra_msg1_t
{
    sgx_ec256_public_t g_a;
    sgx_epid_group_id_t gid;
} sgx_ra_msg1_t;


typedef struct _ra_msg2_t
{
    sgx_ec256_public_t g_b;
    sgx_spid_t spid;
    uint16_t quote_type;
    uint16_t kdf_id;
    sgx_ec256_signature_t sign_gb_ga;
    sgx_mac_t mac;
    uint32_t sig_rl_size;
    uint8_t sig_rl[];
} sgx_ra_msg2_t;

typedef struct _ra_msg3_t
{
    sgx_mac_t mac;
    sgx_ec256_public_t g_a;
    sgx_ps_sec_prop_desc_t ps_sec_prop;
    uint8_t quote[];
} sgx_ra_msg3_t;


}
# 38 "/opt/intel/sgxsdk/include/sgx_ukey_exchange.h" 2


extern "C" {



typedef sgx_status_t (* sgx_ecall_get_ga_trusted_t)(
    sgx_enclave_id_t eid,
    sgx_status_t* retval,
    sgx_ra_context_t context,
    sgx_ec256_public_t *g_a);

typedef sgx_status_t (* sgx_ecall_proc_msg2_trusted_t)(
    sgx_enclave_id_t eid,
    sgx_status_t* retval,
    sgx_ra_context_t context,
    const sgx_ra_msg2_t *p_msg2,
    const sgx_target_info_t *p_qe_target,
    sgx_report_t *p_report,
    sgx_quote_nonce_t* nonce);

typedef sgx_status_t (* sgx_ecall_get_msg3_trusted_t)(
    sgx_enclave_id_t eid,
    sgx_status_t* retval,
    sgx_ra_context_t context,
    uint32_t quote_size,
    sgx_report_t* qe_report,
    sgx_ra_msg3_t *p_msg3,
    uint32_t msg3_size);
# 114 "/opt/intel/sgxsdk/include/sgx_ukey_exchange.h"
sgx_status_t sgx_ra_get_msg1(
    sgx_ra_context_t context,
    sgx_enclave_id_t eid,
    sgx_ecall_get_ga_trusted_t p_get_ga,
    sgx_ra_msg1_t *p_msg1);
# 185 "/opt/intel/sgxsdk/include/sgx_ukey_exchange.h"
sgx_status_t sgx_ra_proc_msg2(
    sgx_ra_context_t context,
    sgx_enclave_id_t eid,
    sgx_ecall_proc_msg2_trusted_t p_proc_msg2,
    sgx_ecall_get_msg3_trusted_t p_get_msg3,
    const sgx_ra_msg2_t *p_msg2,
    uint32_t msg2_size,
    sgx_ra_msg3_t **pp_msg3,
    uint32_t *p_msg3_size);
# 251 "/opt/intel/sgxsdk/include/sgx_ukey_exchange.h"
sgx_status_t sgx_ra_get_msg1_ex(
 const sgx_att_key_id_t *p_att_key_id,
 sgx_ra_context_t context,
 sgx_enclave_id_t eid,
 sgx_ecall_get_ga_trusted_t p_get_ga,
 sgx_ra_msg1_t *p_msg1);
# 327 "/opt/intel/sgxsdk/include/sgx_ukey_exchange.h"
sgx_status_t sgx_ra_proc_msg2_ex(
 const sgx_att_key_id_t *p_att_key_id,
 sgx_ra_context_t context,
 sgx_enclave_id_t eid,
 sgx_ecall_proc_msg2_trusted_t p_proc_msg2,
 sgx_ecall_get_msg3_trusted_t p_get_msg3,
 const sgx_ra_msg2_t *p_msg2,
 uint32_t msg2_size,
 sgx_ra_msg3_t **pp_msg3,
 uint32_t *p_msg3_size);


}
# 41 "Enclave/Enclave.cpp" 2
# 1 "/opt/intel/sgxsdk/include/sgx_uae_quote_ex.h" 1
# 42 "Enclave/Enclave.cpp" 2
# 1 "/opt/intel/sgxsdk/include/sgx_tseal.h" 1
# 48 "/opt/intel/sgxsdk/include/sgx_tseal.h"
typedef struct _aes_gcm_data_t
{
    uint32_t payload_size;
    uint8_t reserved[12];
    uint8_t payload_tag[16];
    uint8_t payload[];
} sgx_aes_gcm_data_t;

typedef struct _sealed_data_t
{
    sgx_key_request_t key_request;
    uint32_t plain_text_offset;
    uint8_t reserved[12];
    sgx_aes_gcm_data_t aes_data;
} sgx_sealed_data_t;


extern "C" {
# 78 "/opt/intel/sgxsdk/include/sgx_tseal.h"
    uint32_t sgx_calc_sealed_data_size(const uint32_t add_mac_txt_size, const uint32_t txt_encrypt_size);
# 90 "/opt/intel/sgxsdk/include/sgx_tseal.h"
    uint32_t sgx_get_add_mac_txt_len(const sgx_sealed_data_t* p_sealed_data);
# 102 "/opt/intel/sgxsdk/include/sgx_tseal.h"
    uint32_t sgx_get_encrypt_txt_len(const sgx_sealed_data_t* p_sealed_data);
# 130 "/opt/intel/sgxsdk/include/sgx_tseal.h"
    sgx_status_t sgx_seal_data(const uint32_t additional_MACtext_length,
        const uint8_t *p_additional_MACtext,
        const uint32_t text2encrypt_length,
        const uint8_t *p_text2encrypt,
        const uint32_t sealed_data_size,
        sgx_sealed_data_t *p_sealed_data);
# 159 "/opt/intel/sgxsdk/include/sgx_tseal.h"
    sgx_status_t sgx_seal_data_ex(const uint16_t key_policy,
        const sgx_attributes_t attribute_mask,
        const sgx_misc_select_t misc_mask,
        const uint32_t additional_MACtext_length,
        const uint8_t *p_additional_MACtext,
        const uint32_t text2encrypt_length,
        const uint8_t *p_text2encrypt,
        const uint32_t sealed_data_size,
        sgx_sealed_data_t *p_sealed_data);
# 186 "/opt/intel/sgxsdk/include/sgx_tseal.h"
    sgx_status_t sgx_unseal_data(const sgx_sealed_data_t *p_sealed_data,
        uint8_t *p_additional_MACtext,
        uint32_t *p_additional_MACtext_length,
        uint8_t *p_decrypted_text,
        uint32_t *p_decrypted_text_length);
# 210 "/opt/intel/sgxsdk/include/sgx_tseal.h"
    sgx_status_t sgx_mac_aadata(const uint32_t additional_MACtext_length,
        const uint8_t *p_additional_MACtext,
        const uint32_t sealed_data_size,
        sgx_sealed_data_t *p_sealed_data);
# 231 "/opt/intel/sgxsdk/include/sgx_tseal.h"
    sgx_status_t sgx_mac_aadata_ex(const uint16_t key_policy,
        const sgx_attributes_t attribute_mask,
        const sgx_misc_select_t misc_mask,
        const uint32_t additional_MACtext_length,
        const uint8_t *p_additional_MACtext,
        const uint32_t sealed_data_size,
        sgx_sealed_data_t *p_sealed_data);
# 251 "/opt/intel/sgxsdk/include/sgx_tseal.h"
    sgx_status_t sgx_unmac_aadata(const sgx_sealed_data_t *p_sealed_data,
        uint8_t *p_additional_MACtext,
        uint32_t *p_additional_MACtext_length);


}
# 43 "Enclave/Enclave.cpp" 2
# 1 "/opt/intel/sgxsdk/include/sgx_utils.h" 1
# 47 "/opt/intel/sgxsdk/include/sgx_utils.h"
extern "C" {
# 61 "/opt/intel/sgxsdk/include/sgx_utils.h"
sgx_status_t sgx_create_report(const sgx_target_info_t *target_info, const sgx_report_data_t *report_data, sgx_report_t *report);
# 70 "/opt/intel/sgxsdk/include/sgx_utils.h"
const sgx_report_t *sgx_self_report(void);
# 81 "/opt/intel/sgxsdk/include/sgx_utils.h"
sgx_status_t sgx_self_target(sgx_target_info_t *target_info);
# 92 "/opt/intel/sgxsdk/include/sgx_utils.h"
sgx_status_t sgx_verify_report(const sgx_report_t *report);
# 104 "/opt/intel/sgxsdk/include/sgx_utils.h"
sgx_status_t sgx_get_key(const sgx_key_request_t *key_request, sgx_key_128bit_t *key);


}
# 44 "Enclave/Enclave.cpp" 2
# 1 "/opt/intel/sgxsdk/include/sgx_urts.h" 1
# 45 "Enclave/Enclave.cpp" 2
# 1 "/opt/intel/sgxsdk/include/sgx_tkey_exchange.h" 1
# 40 "/opt/intel/sgxsdk/include/sgx_tkey_exchange.h"
extern "C" {
# 69 "/opt/intel/sgxsdk/include/sgx_tkey_exchange.h"
sgx_status_t sgx_ra_init(
    const sgx_ec256_public_t *p_pub_key,
    int b_pse,
    sgx_ra_context_t *p_context);
# 98 "/opt/intel/sgxsdk/include/sgx_tkey_exchange.h"
typedef sgx_status_t(*sgx_ra_derive_secret_keys_t)(
    const sgx_ec256_dh_shared_t* p_shared_key,
    uint16_t kdf_id,
    sgx_ec_key_128bit_t* p_smk_key,
    sgx_ec_key_128bit_t* p_sk_key,
    sgx_ec_key_128bit_t* p_mk_key,
    sgx_ec_key_128bit_t* p_vk_key);
# 138 "/opt/intel/sgxsdk/include/sgx_tkey_exchange.h"
sgx_status_t sgx_ra_init_ex(
    const sgx_ec256_public_t *p_pub_key,
    int b_pse,
    sgx_ra_derive_secret_keys_t derive_key_cb,
    sgx_ra_context_t *p_context);
# 159 "/opt/intel/sgxsdk/include/sgx_tkey_exchange.h"
sgx_status_t sgx_ra_get_keys(
    sgx_ra_context_t context,
    sgx_ra_key_type_t type,
    sgx_ra_key_128_t *p_key);
# 175 "/opt/intel/sgxsdk/include/sgx_tkey_exchange.h"
sgx_status_t sgx_ra_close(
    sgx_ra_context_t context);


}
# 46 "Enclave/Enclave.cpp" 2
# 1 "/opt/intel/sgxsdk/include/libcxx/string" 1
# 437 "/opt/intel/sgxsdk/include/libcxx/string"
# 1 "/opt/intel/sgxsdk/include/libcxx/__config" 1
# 19 "/opt/intel/sgxsdk/include/libcxx/__config"
       
# 20 "/opt/intel/sgxsdk/include/libcxx/__config" 3
# 463 "/opt/intel/sgxsdk/include/libcxx/__config" 3
# 1 "/opt/intel/sgxsdk/include/libcxx/__sgx" 1 3
# 61 "/opt/intel/sgxsdk/include/libcxx/__sgx" 3
# 1 "/opt/intel/sgxsdk/include/tlibc/sys/endian.h" 1 3
# 62 "/opt/intel/sgxsdk/include/libcxx/__sgx" 2 3
# 77 "/opt/intel/sgxsdk/include/libcxx/__sgx" 3
# 1 "/opt/intel/sgxsdk/include/tlibc/assert.h" 1 3
# 78 "/opt/intel/sgxsdk/include/libcxx/__sgx" 2 3
# 464 "/opt/intel/sgxsdk/include/libcxx/__config" 2 3
# 553 "/opt/intel/sgxsdk/include/libcxx/__config" 3

# 553 "/opt/intel/sgxsdk/include/libcxx/__config" 3
namespace std {
  inline namespace __1 {
  }
}
# 438 "/opt/intel/sgxsdk/include/libcxx/string" 2
# 1 "/opt/intel/sgxsdk/include/libcxx/iosfwd" 1
# 93 "/opt/intel/sgxsdk/include/libcxx/iosfwd"
       
# 94 "/opt/intel/sgxsdk/include/libcxx/iosfwd" 3


namespace std { inline namespace __1 {





template<class _CharT> struct __attribute__ ((__visibility__("default"))) char_traits;
template<class _Tp> class __attribute__ ((__visibility__("default"))) allocator;
# 195 "/opt/intel/sgxsdk/include/libcxx/iosfwd" 3
template <class _CharT,
          class _Traits = char_traits<_CharT>,
          class _Allocator = allocator<_CharT> >
    class __attribute__ ((__visibility__("default"))) basic_string;
typedef basic_string<char, char_traits<char>, allocator<char> > string;
typedef basic_string<wchar_t, char_traits<wchar_t>, allocator<wchar_t> > wstring;



template <class _Tp, class _Alloc = allocator<_Tp> >
class __attribute__ ((__visibility__("default"))) vector;

} }
# 439 "/opt/intel/sgxsdk/include/libcxx/string" 2
# 1 "/opt/intel/sgxsdk/include/libcxx/cstring" 1
# 64 "/opt/intel/sgxsdk/include/libcxx/cstring"
       
# 65 "/opt/intel/sgxsdk/include/libcxx/cstring" 3


namespace std { inline namespace __1 {

using ::size_t;
using ::memcpy;
using ::memmove;





using ::strncpy;





using ::strncat;
using ::memcmp;
using ::strcmp;
using ::strncmp;
using ::strcoll;
using ::strxfrm;

using ::memchr;

using ::strchr;

using ::strcspn;

using ::strpbrk;

using ::strrchr;

using ::strspn;

using ::strstr;



inline __attribute__ ((__visibility__("hidden"), __always_inline__)) char* strchr( char* __s, int __c) {return ::strchr(__s, __c);}
inline __attribute__ ((__visibility__("hidden"), __always_inline__)) char* strpbrk( char* __s1, const char* __s2) {return ::strpbrk(__s1, __s2);}
inline __attribute__ ((__visibility__("hidden"), __always_inline__)) char* strrchr( char* __s, int __c) {return ::strrchr(__s, __c);}
inline __attribute__ ((__visibility__("hidden"), __always_inline__)) void* memchr( void* __s, int __c, size_t __n) {return ::memchr(__s, __c, __n);}
inline __attribute__ ((__visibility__("hidden"), __always_inline__)) char* strstr( char* __s1, const char* __s2) {return ::strstr(__s1, __s2);}



using ::strtok;

using ::memset;
using ::strerror;
using ::strlen;

} }
# 440 "/opt/intel/sgxsdk/include/libcxx/string" 2
# 1 "/opt/intel/sgxsdk/include/libcxx/cstdio" 1
# 103 "/opt/intel/sgxsdk/include/libcxx/cstdio"
       
# 104 "/opt/intel/sgxsdk/include/libcxx/cstdio" 3
# 143 "/opt/intel/sgxsdk/include/libcxx/cstdio" 3
namespace std { inline namespace __1 {






using ::size_t;
# 161 "/opt/intel/sgxsdk/include/libcxx/cstdio" 3
using ::snprintf;
# 173 "/opt/intel/sgxsdk/include/libcxx/cstdio" 3
using ::vsnprintf;
# 222 "/opt/intel/sgxsdk/include/libcxx/cstdio" 3
} }
# 441 "/opt/intel/sgxsdk/include/libcxx/string" 2
# 1 "/opt/intel/sgxsdk/include/libcxx/cwchar" 1
# 107 "/opt/intel/sgxsdk/include/libcxx/cwchar"
# 1 "/opt/intel/sgxsdk/include/libcxx/cwctype" 1
# 54 "/opt/intel/sgxsdk/include/libcxx/cwctype"
# 1 "/opt/intel/sgxsdk/include/libcxx/cctype" 1
# 39 "/opt/intel/sgxsdk/include/libcxx/cctype"
# 1 "/opt/intel/sgxsdk/include/tlibc/ctype.h" 1
# 45 "/opt/intel/sgxsdk/include/tlibc/ctype.h"

# 45 "/opt/intel/sgxsdk/include/tlibc/ctype.h"
extern "C" {

int isalnum(int);
int isalpha(int);
int iscntrl(int);
int isdigit(int);
int isgraph(int);
int islower(int);
int isprint(int);
int ispunct(int);
int isspace(int);
int isupper(int);
int isxdigit(int);
int tolower(int);
int toupper(int);
int isblank(int);

}
# 40 "/opt/intel/sgxsdk/include/libcxx/cctype" 2






       
# 47 "/opt/intel/sgxsdk/include/libcxx/cctype" 3



# 49 "/opt/intel/sgxsdk/include/libcxx/cctype" 3
namespace std { inline namespace __1 {






using ::isalnum;







using ::isalpha;







using ::isblank;







using ::iscntrl;







using ::isdigit;







using ::isgraph;







using ::islower;







using ::isprint;







using ::ispunct;







using ::isspace;







using ::isupper;







using ::isxdigit;







using ::tolower;







using ::toupper;


} }
# 55 "/opt/intel/sgxsdk/include/libcxx/cwctype" 2
# 1 "/opt/intel/sgxsdk/include/tlibc/wctype.h" 1
# 45 "/opt/intel/sgxsdk/include/tlibc/wctype.h"

# 45 "/opt/intel/sgxsdk/include/tlibc/wctype.h"
typedef __wctrans_t wctrans_t;




typedef __wctype_t wctype_t;






extern "C" {




;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;

}
# 56 "/opt/intel/sgxsdk/include/libcxx/cwctype" 2


       
# 59 "/opt/intel/sgxsdk/include/libcxx/cwctype" 3



# 61 "/opt/intel/sgxsdk/include/libcxx/cwctype" 3
namespace std { inline namespace __1 {

using ::wint_t;
using ::wctrans_t;
using ::wctype_t;
# 213 "/opt/intel/sgxsdk/include/libcxx/cwctype" 3
} }
# 108 "/opt/intel/sgxsdk/include/libcxx/cwchar" 2
# 116 "/opt/intel/sgxsdk/include/libcxx/cwchar"
       
# 117 "/opt/intel/sgxsdk/include/libcxx/cwchar" 3


namespace std { inline namespace __1 {

using ::mbstate_t;
using ::size_t;





using ::wint_t;







using ::swprintf;





using ::vswprintf;
# 179 "/opt/intel/sgxsdk/include/libcxx/cwchar" 3
using ::wcsncpy;





using ::wcsncat;
using ::wcscmp;
using ::wcscoll;
using ::wcsncmp;
using ::wcsxfrm;
# 201 "/opt/intel/sgxsdk/include/libcxx/cwchar" 3
inline __attribute__ ((__visibility__("hidden"), __always_inline__)) const wchar_t* wcschr(const wchar_t* __s, wchar_t __c) {return ::wcschr(__s, __c);}
inline __attribute__ ((__visibility__("hidden"), __always_inline__)) wchar_t* wcschr( wchar_t* __s, wchar_t __c) {return ::wcschr(__s, __c);}

inline __attribute__ ((__visibility__("hidden"), __always_inline__)) const wchar_t* wcspbrk(const wchar_t* __s1, const wchar_t* __s2) {return ::wcspbrk(__s1, __s2);}
inline __attribute__ ((__visibility__("hidden"), __always_inline__)) wchar_t* wcspbrk( wchar_t* __s1, const wchar_t* __s2) {return ::wcspbrk(__s1, __s2);}

inline __attribute__ ((__visibility__("hidden"), __always_inline__)) const wchar_t* wcsrchr(const wchar_t* __s, wchar_t __c) {return ::wcsrchr(__s, __c);}
inline __attribute__ ((__visibility__("hidden"), __always_inline__)) wchar_t* wcsrchr( wchar_t* __s, wchar_t __c) {return ::wcsrchr(__s, __c);}

inline __attribute__ ((__visibility__("hidden"), __always_inline__)) const wchar_t* wcsstr(const wchar_t* __s1, const wchar_t* __s2) {return ::wcsstr(__s1, __s2);}
inline __attribute__ ((__visibility__("hidden"), __always_inline__)) wchar_t* wcsstr( wchar_t* __s1, const wchar_t* __s2) {return ::wcsstr(__s1, __s2);}

inline __attribute__ ((__visibility__("hidden"), __always_inline__)) const wchar_t* wmemchr(const wchar_t* __s, wchar_t __c, size_t __n) {return ::wmemchr(__s, __c, __n);}
inline __attribute__ ((__visibility__("hidden"), __always_inline__)) wchar_t* wmemchr( wchar_t* __s, wchar_t __c, size_t __n) {return ::wmemchr(__s, __c, __n);}



using ::wcscspn;
using ::wcslen;
using ::wcsspn;
using ::wcstok;
using ::wmemcmp;
using ::wmemcpy;
using ::wmemmove;
using ::wmemset;





using ::btowc;
using ::wctob;
using ::mbsinit;
using ::mbrlen;
using ::mbrtowc;
using ::wcrtomb;
using ::mbsrtowcs;
using ::wcsrtombs;
# 254 "/opt/intel/sgxsdk/include/libcxx/cwchar" 3
} }
# 442 "/opt/intel/sgxsdk/include/libcxx/string" 2
# 1 "/opt/intel/sgxsdk/include/libcxx/algorithm" 1
# 630 "/opt/intel/sgxsdk/include/libcxx/algorithm"
# 1 "/opt/intel/sgxsdk/include/libcxx/initializer_list" 1
# 47 "/opt/intel/sgxsdk/include/libcxx/initializer_list"
# 1 "/opt/intel/sgxsdk/include/libcxx/cstddef" 1
# 41 "/opt/intel/sgxsdk/include/libcxx/cstddef"
       
# 42 "/opt/intel/sgxsdk/include/libcxx/cstddef" 3


namespace std { inline namespace __1 {

using ::ptrdiff_t;
using ::size_t;





typedef long double max_align_t;
# 91 "/opt/intel/sgxsdk/include/libcxx/cstddef" 3
} }



namespace std
{
    typedef decltype(nullptr) nullptr_t;
}
# 48 "/opt/intel/sgxsdk/include/libcxx/initializer_list" 2


       
# 51 "/opt/intel/sgxsdk/include/libcxx/initializer_list" 3


namespace std
{



template<class _Ep>
class __attribute__ ((__visibility__("default"))) initializer_list
{
    const _Ep* __begin_;
    size_t __size_;

    __attribute__ ((__visibility__("hidden"), __always_inline__))
   
    initializer_list(const _Ep* __b, size_t __s) noexcept
        : __begin_(__b),
          __size_(__s)
        {}
public:
    typedef _Ep value_type;
    typedef const _Ep& reference;
    typedef const _Ep& const_reference;
    typedef size_t size_type;

    typedef const _Ep* iterator;
    typedef const _Ep* const_iterator;

    __attribute__ ((__visibility__("hidden"), __always_inline__))
   
    initializer_list() noexcept : __begin_(nullptr), __size_(0) {}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
   
    size_t size() const noexcept {return __size_;}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
   
    const _Ep* begin() const noexcept {return __begin_;}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
   
    const _Ep* end() const noexcept {return __begin_ + __size_;}
};

template<class _Ep>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))

const _Ep*
begin(initializer_list<_Ep> __il) noexcept
{
    return __il.begin();
}

template<class _Ep>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))

const _Ep*
end(initializer_list<_Ep> __il) noexcept
{
    return __il.end();
}



}
# 631 "/opt/intel/sgxsdk/include/libcxx/algorithm" 2
# 1 "/opt/intel/sgxsdk/include/libcxx/type_traits" 1
# 390 "/opt/intel/sgxsdk/include/libcxx/type_traits"
       
# 391 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3


namespace std { inline namespace __1 {

template <class _T1, class _T2> struct __attribute__ ((__visibility__("default"))) pair;
template <class _Tp> class __attribute__ ((__visibility__("default"))) reference_wrapper;
template <class _Tp> struct __attribute__ ((__visibility__("default"))) hash;

template <class>
struct __void_t { typedef void type; };

template <class _Tp>
struct __identity { typedef _Tp type; };

template <class _Tp, bool>
struct __attribute__ ((__visibility__("default"))) __dependent_type : public _Tp {};

template <bool _Bp, class _If, class _Then>
    struct __attribute__ ((__visibility__("default"))) conditional {typedef _If type;};
template <class _If, class _Then>
    struct __attribute__ ((__visibility__("default"))) conditional<false, _If, _Then> {typedef _Then type;};





template <bool, class _Tp> struct __attribute__ ((__visibility__("default"))) __lazy_enable_if {};
template <class _Tp> struct __attribute__ ((__visibility__("default"))) __lazy_enable_if<true, _Tp> {typedef typename _Tp::type type;};

template <bool, class _Tp = void> struct __attribute__ ((__visibility__("default"))) enable_if {};
template <class _Tp> struct __attribute__ ((__visibility__("default"))) enable_if<true, _Tp> {typedef _Tp type;};
# 441 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp*
addressof(_Tp& __x) noexcept
{
    return (_Tp*)&reinterpret_cast<const volatile char&>(__x);
}
# 491 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
struct __two {char __lx[2];};



template <class _Tp, _Tp __v>
struct __attribute__ ((__visibility__("default"))) integral_constant
{
    static constexpr const _Tp value = __v;
    typedef _Tp value_type;
    typedef integral_constant type;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
        constexpr operator value_type() const noexcept {return value;}




};

template <class _Tp, _Tp __v>
constexpr const _Tp integral_constant<_Tp, __v>::value;
# 520 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
typedef integral_constant<bool,(true)> true_type;
typedef integral_constant<bool,(false)> false_type;





template <bool _Last, class ..._Preds>
struct __lazy_and_impl;

template <class ..._Preds>
struct __lazy_and_impl<false, _Preds...> : false_type {};

template <>
struct __lazy_and_impl<true> : true_type {};

template <class _Pred>
struct __lazy_and_impl<true, _Pred> : integral_constant<bool, _Pred::type::value> {};

template <class _Hp, class ..._Tp>
struct __lazy_and_impl<true, _Hp, _Tp...> : __lazy_and_impl<_Hp::type::value, _Tp...> {};

template <class _P1, class ..._Pr>
struct __lazy_and : __lazy_and_impl<_P1::type::value, _Pr...> {};



template <bool _List, class ..._Preds>
struct __lazy_or_impl;

template <class ..._Preds>
struct __lazy_or_impl<true, _Preds...> : true_type {};

template <>
struct __lazy_or_impl<false> : false_type {};

template <class _Hp, class ..._Tp>
struct __lazy_or_impl<false, _Hp, _Tp...>
        : __lazy_or_impl<_Hp::type::value, _Tp...> {};

template <class _P1, class ..._Pr>
struct __lazy_or : __lazy_or_impl<_P1::type::value, _Pr...> {};



template <class _Pred>
struct __lazy_not : integral_constant<bool, !_Pred::type::value> {};


template<class...> struct __and_;
template<> struct __and_<> : true_type {};

template<class _B0> struct __and_<_B0> : _B0 {};

template<class _B0, class _B1>
struct __and_<_B0, _B1> : conditional<_B0::value, _B1, _B0>::type {};

template<class _B0, class _B1, class _B2, class... _Bn>
struct __and_<_B0, _B1, _B2, _Bn...>
        : conditional<_B0::value, __and_<_B1, _B2, _Bn...>, _B0>::type {};


template<class...> struct __or_;
template<> struct __or_<> : false_type {};

template<class _B0> struct __or_<_B0> : _B0 {};

template<class _B0, class _B1>
struct __or_<_B0, _B1> : conditional<_B0::value, _B0, _B1>::type {};

template<class _B0, class _B1, class _B2, class... _Bn>
struct __or_<_B0, _B1, _B2, _Bn...>
        : conditional<_B0::value, _B0, __or_<_B1, _B2, _Bn...> >::type {};


template<class _Tp>
struct __not_ : conditional<_Tp::value, false_type, true_type>::type {};





template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_const : public false_type {};
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_const<_Tp const> : public true_type {};
# 612 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_volatile : public false_type {};
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_volatile<_Tp volatile> : public true_type {};
# 622 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) remove_const {typedef _Tp type;};
template <class _Tp> struct __attribute__ ((__visibility__("default"))) remove_const<const _Tp> {typedef _Tp type;};






template <class _Tp> struct __attribute__ ((__visibility__("default"))) remove_volatile {typedef _Tp type;};
template <class _Tp> struct __attribute__ ((__visibility__("default"))) remove_volatile<volatile _Tp> {typedef _Tp type;};






template <class _Tp> struct __attribute__ ((__visibility__("default"))) remove_cv
{typedef typename remove_volatile<typename remove_const<_Tp>::type>::type type;};






template <class _Tp> struct __libcpp_is_void : public false_type {};
template <> struct __libcpp_is_void<void> : public true_type {};

template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_void
    : public __libcpp_is_void<typename remove_cv<_Tp>::type> {};
# 659 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __is_nullptr_t_impl : public false_type {};
template <> struct __is_nullptr_t_impl<nullptr_t> : public true_type {};

template <class _Tp> struct __attribute__ ((__visibility__("default"))) __is_nullptr_t
    : public __is_nullptr_t_impl<typename remove_cv<_Tp>::type> {};
# 677 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __libcpp_is_integral : public false_type {};
template <> struct __libcpp_is_integral<bool> : public true_type {};
template <> struct __libcpp_is_integral<char> : public true_type {};
template <> struct __libcpp_is_integral<signed char> : public true_type {};
template <> struct __libcpp_is_integral<unsigned char> : public true_type {};
template <> struct __libcpp_is_integral<wchar_t> : public true_type {};

template <> struct __libcpp_is_integral<char16_t> : public true_type {};
template <> struct __libcpp_is_integral<char32_t> : public true_type {};

template <> struct __libcpp_is_integral<short> : public true_type {};
template <> struct __libcpp_is_integral<unsigned short> : public true_type {};
template <> struct __libcpp_is_integral<int> : public true_type {};
template <> struct __libcpp_is_integral<unsigned int> : public true_type {};
template <> struct __libcpp_is_integral<long> : public true_type {};
template <> struct __libcpp_is_integral<unsigned long> : public true_type {};
template <> struct __libcpp_is_integral<long long> : public true_type {};
template <> struct __libcpp_is_integral<unsigned long long> : public true_type {};

template <> struct __libcpp_is_integral<__int128_t> : public true_type {};
template <> struct __libcpp_is_integral<__uint128_t> : public true_type {};


template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_integral
    : public __libcpp_is_integral<typename remove_cv<_Tp>::type> {};
# 710 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __libcpp_is_floating_point : public false_type {};
template <> struct __libcpp_is_floating_point<float> : public true_type {};
template <> struct __libcpp_is_floating_point<double> : public true_type {};
template <> struct __libcpp_is_floating_point<long double> : public true_type {};

template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_floating_point
    : public __libcpp_is_floating_point<typename remove_cv<_Tp>::type> {};
# 725 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_array
    : public false_type {};
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_array<_Tp[]>
    : public true_type {};
template <class _Tp, size_t _Np> struct __attribute__ ((__visibility__("default"))) is_array<_Tp[_Np]>
    : public true_type {};
# 739 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __libcpp_is_pointer : public false_type {};
template <class _Tp> struct __libcpp_is_pointer<_Tp*> : public true_type {};

template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_pointer
    : public __libcpp_is_pointer<typename remove_cv<_Tp>::type> {};
# 752 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_lvalue_reference : public false_type {};
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_lvalue_reference<_Tp&> : public true_type {};

template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_rvalue_reference : public false_type {};

template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_rvalue_reference<_Tp&&> : public true_type {};


template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_reference : public false_type {};
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_reference<_Tp&> : public true_type {};

template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_reference<_Tp&&> : public true_type {};
# 780 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_union
    : public integral_constant<bool, __is_union(_Tp)> {};
# 800 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_class
    : public integral_constant<bool, __is_class(_Tp)> {};
# 823 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp, class _Up> struct __attribute__ ((__visibility__("default"))) is_same : public false_type {};
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_same<_Tp, _Tp> : public true_type {};
# 833 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
namespace __libcpp_is_function_imp
{
struct __dummy_type {};
template <class _Tp> char __test(_Tp*);
template <class _Tp> char __test(__dummy_type);
template <class _Tp> __two __test(...);
template <class _Tp> _Tp& __source(int);
template <class _Tp> __dummy_type __source(...);
}

template <class _Tp, bool = is_class<_Tp>::value ||
                            is_union<_Tp>::value ||
                            is_void<_Tp>::value ||
                            is_reference<_Tp>::value ||
                            __is_nullptr_t<_Tp>::value >
struct __libcpp_is_function
    : public integral_constant<bool, sizeof(__libcpp_is_function_imp::__test<_Tp>(__libcpp_is_function_imp::__source<_Tp>(0))) == 1>
    {};
template <class _Tp> struct __libcpp_is_function<_Tp, true> : public false_type {};

template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_function
    : public __libcpp_is_function<_Tp> {};
# 867 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _MP, bool _IsMemberFunctionPtr, bool _IsMemberObjectPtr>
struct __member_pointer_traits_imp
{
};


template <class _Tp> struct __libcpp_is_member_function_pointer
    : public false_type {};

template <class _Ret, class _Class>
struct __libcpp_is_member_function_pointer<_Ret _Class::*>
    : public is_function<_Ret> {};

template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_member_function_pointer
    : public __libcpp_is_member_function_pointer<typename remove_cv<_Tp>::type>::type {};
# 890 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __libcpp_is_member_pointer : public false_type {};
template <class _Tp, class _Up> struct __libcpp_is_member_pointer<_Tp _Up::*> : public true_type {};

template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_member_pointer
    : public __libcpp_is_member_pointer<typename remove_cv<_Tp>::type> {};
# 903 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_member_object_pointer
    : public integral_constant<bool, is_member_pointer<_Tp>::value &&
                                    !is_member_function_pointer<_Tp>::value> {};
# 916 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_enum
    : public integral_constant<bool, __is_enum(_Tp)> {};
# 942 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_arithmetic
    : public integral_constant<bool, is_integral<_Tp>::value ||
                                     is_floating_point<_Tp>::value> {};
# 953 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_fundamental
    : public integral_constant<bool, is_void<_Tp>::value ||
                                     __is_nullptr_t<_Tp>::value ||
                                     is_arithmetic<_Tp>::value> {};
# 965 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_scalar
    : public integral_constant<bool, is_arithmetic<_Tp>::value ||
                                     is_member_pointer<_Tp>::value ||
                                     is_pointer<_Tp>::value ||
                                     __is_nullptr_t<_Tp>::value ||
                                     is_enum<_Tp>::value > {};

template <> struct __attribute__ ((__visibility__("default"))) is_scalar<nullptr_t> : public true_type {};
# 981 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_object
    : public integral_constant<bool, is_scalar<_Tp>::value ||
                                     is_array<_Tp>::value ||
                                     is_union<_Tp>::value ||
                                     is_class<_Tp>::value > {};
# 994 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_compound
    : public integral_constant<bool, !is_fundamental<_Tp>::value> {};
# 1005 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
struct __is_referenceable_impl {
    template <class _Tp> static _Tp& __test(int);
    template <class _Tp> static __two __test(...);
};

template <class _Tp>
struct __is_referenceable : integral_constant<bool,
    !is_same<decltype(__is_referenceable_impl::__test<_Tp>(0)), __two>::value> {};




template <class _Tp, bool = is_reference<_Tp>::value ||
                            is_function<_Tp>::value ||
                            is_const<_Tp>::value >
struct __add_const {typedef _Tp type;};

template <class _Tp>
struct __add_const<_Tp, false> {typedef const _Tp type;};

template <class _Tp> struct __attribute__ ((__visibility__("default"))) add_const
    {typedef typename __add_const<_Tp>::type type;};







template <class _Tp, bool = is_reference<_Tp>::value ||
                            is_function<_Tp>::value ||
                            is_volatile<_Tp>::value >
struct __add_volatile {typedef _Tp type;};

template <class _Tp>
struct __add_volatile<_Tp, false> {typedef volatile _Tp type;};

template <class _Tp> struct __attribute__ ((__visibility__("default"))) add_volatile
    {typedef typename __add_volatile<_Tp>::type type;};







template <class _Tp> struct __attribute__ ((__visibility__("default"))) add_cv
    {typedef typename add_const<typename add_volatile<_Tp>::type>::type type;};







template <class _Tp> struct __attribute__ ((__visibility__("default"))) remove_reference {typedef _Tp type;};
template <class _Tp> struct __attribute__ ((__visibility__("default"))) remove_reference<_Tp&> {typedef _Tp type;};

template <class _Tp> struct __attribute__ ((__visibility__("default"))) remove_reference<_Tp&&> {typedef _Tp type;};
# 1072 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp, bool = __is_referenceable<_Tp>::value> struct __add_lvalue_reference_impl { typedef _Tp type; };
template <class _Tp > struct __add_lvalue_reference_impl<_Tp, true> { typedef _Tp& type; };

template <class _Tp> struct __attribute__ ((__visibility__("default"))) add_lvalue_reference
{typedef typename __add_lvalue_reference_impl<_Tp>::type type;};







template <class _Tp, bool = __is_referenceable<_Tp>::value> struct __add_rvalue_reference_impl { typedef _Tp type; };
template <class _Tp > struct __add_rvalue_reference_impl<_Tp, true> { typedef _Tp&& type; };

template <class _Tp> struct __attribute__ ((__visibility__("default"))) add_rvalue_reference
{typedef typename __add_rvalue_reference_impl<_Tp>::type type;};
# 1098 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> _Tp&& __declval(int);
template <class _Tp> _Tp __declval(long);

template <class _Tp>
decltype(std::__1::__declval<_Tp>(0))
declval() noexcept;
# 1115 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp>
struct __uncvref {
    typedef typename remove_cv<typename remove_reference<_Tp>::type>::type type;
};

template <class _Tp>
struct __unconstref {
    typedef typename remove_const<typename remove_reference<_Tp>::type>::type type;
};



template <class _Tp, class _Up>
struct __is_same_uncvref : is_same<typename __uncvref<_Tp>::type,
                                   typename __uncvref<_Up>::type> {};

struct __any
{
    __any(...);
};



template <class _Tp> struct __attribute__ ((__visibility__("default"))) remove_pointer {typedef _Tp type;};
template <class _Tp> struct __attribute__ ((__visibility__("default"))) remove_pointer<_Tp*> {typedef _Tp type;};
template <class _Tp> struct __attribute__ ((__visibility__("default"))) remove_pointer<_Tp* const> {typedef _Tp type;};
template <class _Tp> struct __attribute__ ((__visibility__("default"))) remove_pointer<_Tp* volatile> {typedef _Tp type;};
template <class _Tp> struct __attribute__ ((__visibility__("default"))) remove_pointer<_Tp* const volatile> {typedef _Tp type;};







template <class _Tp,
        bool = __is_referenceable<_Tp>::value ||
                is_same<typename remove_cv<_Tp>::type, void>::value>
struct __add_pointer_impl
    {typedef typename remove_reference<_Tp>::type* type;};
template <class _Tp> struct __add_pointer_impl<_Tp, false>
    {typedef _Tp type;};

template <class _Tp> struct __attribute__ ((__visibility__("default"))) add_pointer
    {typedef typename __add_pointer_impl<_Tp>::type type;};







template <class _Tp, bool = is_integral<_Tp>::value>
struct __libcpp_is_signed_impl : public integral_constant<bool,(_Tp(-1) < _Tp(0))> {};

template <class _Tp>
struct __libcpp_is_signed_impl<_Tp, false> : public true_type {};

template <class _Tp, bool = is_arithmetic<_Tp>::value>
struct __libcpp_is_signed : public __libcpp_is_signed_impl<_Tp> {};

template <class _Tp> struct __libcpp_is_signed<_Tp, false> : public false_type {};

template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_signed : public __libcpp_is_signed<_Tp> {};
# 1187 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp, bool = is_integral<_Tp>::value>
struct __libcpp_is_unsigned_impl : public integral_constant<bool,(_Tp(0) < _Tp(-1))> {};

template <class _Tp>
struct __libcpp_is_unsigned_impl<_Tp, false> : public false_type {};

template <class _Tp, bool = is_arithmetic<_Tp>::value>
struct __libcpp_is_unsigned : public __libcpp_is_unsigned_impl<_Tp> {};

template <class _Tp> struct __libcpp_is_unsigned<_Tp, false> : public false_type {};

template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_unsigned : public __libcpp_is_unsigned<_Tp> {};
# 1207 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) rank
    : public integral_constant<size_t, 0> {};
template <class _Tp> struct __attribute__ ((__visibility__("default"))) rank<_Tp[]>
    : public integral_constant<size_t, rank<_Tp>::value + 1> {};
template <class _Tp, size_t _Np> struct __attribute__ ((__visibility__("default"))) rank<_Tp[_Np]>
    : public integral_constant<size_t, rank<_Tp>::value + 1> {};
# 1221 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp, unsigned _Ip = 0> struct __attribute__ ((__visibility__("default"))) extent
    : public integral_constant<size_t, 0> {};
template <class _Tp> struct __attribute__ ((__visibility__("default"))) extent<_Tp[], 0>
    : public integral_constant<size_t, 0> {};
template <class _Tp, unsigned _Ip> struct __attribute__ ((__visibility__("default"))) extent<_Tp[], _Ip>
    : public integral_constant<size_t, extent<_Tp, _Ip-1>::value> {};
template <class _Tp, size_t _Np> struct __attribute__ ((__visibility__("default"))) extent<_Tp[_Np], 0>
    : public integral_constant<size_t, _Np> {};
template <class _Tp, size_t _Np, unsigned _Ip> struct __attribute__ ((__visibility__("default"))) extent<_Tp[_Np], _Ip>
    : public integral_constant<size_t, extent<_Tp, _Ip-1>::value> {};
# 1239 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) remove_extent
    {typedef _Tp type;};
template <class _Tp> struct __attribute__ ((__visibility__("default"))) remove_extent<_Tp[]>
    {typedef _Tp type;};
template <class _Tp, size_t _Np> struct __attribute__ ((__visibility__("default"))) remove_extent<_Tp[_Np]>
    {typedef _Tp type;};







template <class _Tp> struct __attribute__ ((__visibility__("default"))) remove_all_extents
    {typedef _Tp type;};
template <class _Tp> struct __attribute__ ((__visibility__("default"))) remove_all_extents<_Tp[]>
    {typedef typename remove_all_extents<_Tp>::type type;};
template <class _Tp, size_t _Np> struct __attribute__ ((__visibility__("default"))) remove_all_extents<_Tp[_Np]>
    {typedef typename remove_all_extents<_Tp>::type type;};







template <class _Tp>
struct __attribute__ ((__visibility__("default"))) decay
{
private:
    typedef typename remove_reference<_Tp>::type _Up;
public:
    typedef typename conditional
                     <
                         is_array<_Up>::value,
                         typename remove_extent<_Up>::type*,
                         typename conditional
                         <
                              is_function<_Up>::value,
                              typename add_pointer<_Up>::type,
                              typename remove_cv<_Up>::type
                         >::type
                     >::type type;
};







namespace __is_abstract_imp
{
template <class _Tp> char __test(_Tp (*)[1]);
template <class _Tp> __two __test(...);
}

template <class _Tp, bool = is_class<_Tp>::value>
struct __libcpp_abstract : public integral_constant<bool, sizeof(__is_abstract_imp::__test<_Tp>(0)) != 1> {};

template <class _Tp> struct __libcpp_abstract<_Tp, false> : public false_type {};

template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_abstract : public __libcpp_abstract<_Tp> {};
# 1311 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default")))
__libcpp_is_final : public integral_constant<bool, __is_final(_Tp)> {};
# 1332 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Bp, class _Dp>
struct __attribute__ ((__visibility__("default"))) is_base_of
    : public integral_constant<bool, __is_base_of(_Bp, _Dp)> {};
# 1378 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
namespace __is_convertible_imp
{
template <class _Tp> void __test_convert(_Tp);

template <class _From, class _To, class = void>
struct __is_convertible_test : public false_type {};

template <class _From, class _To>
struct __is_convertible_test<_From, _To,
    decltype(std::__1::__is_convertible_imp::__test_convert<_To>(std::__1::declval<_From>()))> : public true_type
{};

template <class _Tp, bool _IsArray = is_array<_Tp>::value,
                     bool _IsFunction = is_function<_Tp>::value,
                     bool _IsVoid = is_void<_Tp>::value>
                     struct __is_array_function_or_void {enum {value = 0};};
template <class _Tp> struct __is_array_function_or_void<_Tp, true, false, false> {enum {value = 1};};
template <class _Tp> struct __is_array_function_or_void<_Tp, false, true, false> {enum {value = 2};};
template <class _Tp> struct __is_array_function_or_void<_Tp, false, false, true> {enum {value = 3};};
}

template <class _Tp,
    unsigned = __is_convertible_imp::__is_array_function_or_void<typename remove_reference<_Tp>::type>::value>
struct __is_convertible_check
{
    static const size_t __v = 0;
};

template <class _Tp>
struct __is_convertible_check<_Tp, 0>
{
    static const size_t __v = sizeof(_Tp);
};

template <class _T1, class _T2,
    unsigned _T1_is_array_function_or_void = __is_convertible_imp::__is_array_function_or_void<_T1>::value,
    unsigned _T2_is_array_function_or_void = __is_convertible_imp::__is_array_function_or_void<_T2>::value>
struct __is_convertible
    : public integral_constant<bool,
        __is_convertible_imp::__is_convertible_test<_T1, _T2>::value
# 1426 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
    >
{};

template <class _T1, class _T2> struct __is_convertible<_T1, _T2, 0, 1> : public false_type {};
template <class _T1, class _T2> struct __is_convertible<_T1, _T2, 1, 1> : public false_type {};
template <class _T1, class _T2> struct __is_convertible<_T1, _T2, 2, 1> : public false_type {};
template <class _T1, class _T2> struct __is_convertible<_T1, _T2, 3, 1> : public false_type {};

template <class _T1, class _T2> struct __is_convertible<_T1, _T2, 0, 2> : public false_type {};
template <class _T1, class _T2> struct __is_convertible<_T1, _T2, 1, 2> : public false_type {};
template <class _T1, class _T2> struct __is_convertible<_T1, _T2, 2, 2> : public false_type {};
template <class _T1, class _T2> struct __is_convertible<_T1, _T2, 3, 2> : public false_type {};

template <class _T1, class _T2> struct __is_convertible<_T1, _T2, 0, 3> : public false_type {};
template <class _T1, class _T2> struct __is_convertible<_T1, _T2, 1, 3> : public false_type {};
template <class _T1, class _T2> struct __is_convertible<_T1, _T2, 2, 3> : public false_type {};
template <class _T1, class _T2> struct __is_convertible<_T1, _T2, 3, 3> : public true_type {};

template <class _T1, class _T2> struct __attribute__ ((__visibility__("default"))) is_convertible
    : public __is_convertible<_T1, _T2>
{
    static const size_t __complete_check1 = __is_convertible_check<_T1>::__v;
    static const size_t __complete_check2 = __is_convertible_check<_T2>::__v;
};
# 1462 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp>
struct __attribute__ ((__visibility__("default"))) is_empty
    : public integral_constant<bool, __is_empty(_Tp)> {};
# 1504 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template<typename _Tp> char &__is_polymorphic_impl(
    typename enable_if<sizeof((_Tp*)dynamic_cast<const volatile void*>(declval<_Tp*>())) != 0,
                       int>::type);
template<typename _Tp> __two &__is_polymorphic_impl(...);

template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_polymorphic
    : public integral_constant<bool, sizeof(__is_polymorphic_impl<_Tp>(0)) == 1> {};
# 1523 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) has_virtual_destructor
    : public integral_constant<bool, __has_virtual_destructor(_Tp)> {};
# 1540 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) alignment_of
    : public integral_constant<size_t, __alignof__(_Tp)> {};
# 1550 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Hp, class _Tp>
struct __type_list
{
    typedef _Hp _Head;
    typedef _Tp _Tail;
};

struct __nat
{

    __nat() = delete;
    __nat(const __nat&) = delete;
    __nat& operator=(const __nat&) = delete;
    ~__nat() = delete;

};

template <class _Tp>
struct __align_type
{
    static const size_t value = alignment_of<_Tp>::value;
    typedef _Tp type;
};

struct __struct_double {long double __lx;};
struct __struct_double4 {double __lx[4];};

typedef
    __type_list<__align_type<unsigned char>,
    __type_list<__align_type<unsigned short>,
    __type_list<__align_type<unsigned int>,
    __type_list<__align_type<unsigned long>,
    __type_list<__align_type<unsigned long long>,
    __type_list<__align_type<double>,
    __type_list<__align_type<long double>,
    __type_list<__align_type<__struct_double>,
    __type_list<__align_type<__struct_double4>,
    __type_list<__align_type<int*>,
    __nat
    > > > > > > > > > > __all_types;

template <class _TL, size_t _Align> struct __find_pod;

template <class _Hp, size_t _Align>
struct __find_pod<__type_list<_Hp, __nat>, _Align>
{
    typedef typename conditional<
                             _Align == _Hp::value,
                             typename _Hp::type,
                             void
                         >::type type;
};

template <class _Hp, class _Tp, size_t _Align>
struct __find_pod<__type_list<_Hp, _Tp>, _Align>
{
    typedef typename conditional<
                             _Align == _Hp::value,
                             typename _Hp::type,
                             typename __find_pod<_Tp, _Align>::type
                         >::type type;
};

template <class _TL, size_t _Len> struct __find_max_align;

template <class _Hp, size_t _Len>
struct __find_max_align<__type_list<_Hp, __nat>, _Len> : public integral_constant<size_t, _Hp::value> {};

template <size_t _Len, size_t _A1, size_t _A2>
struct __select_align
{
private:
    static const size_t __min = _A2 < _A1 ? _A2 : _A1;
    static const size_t __max = _A1 < _A2 ? _A2 : _A1;
public:
    static const size_t value = _Len < __max ? __min : __max;
};

template <class _Hp, class _Tp, size_t _Len>
struct __find_max_align<__type_list<_Hp, _Tp>, _Len>
    : public integral_constant<size_t, __select_align<_Len, _Hp::value, __find_max_align<_Tp, _Len>::value>::value> {};

template <size_t _Len, size_t _Align = __find_max_align<__all_types, _Len>::value>
struct __attribute__ ((__visibility__("default"))) aligned_storage
{
    typedef typename __find_pod<__all_types, _Align>::type _Aligner;
    static_assert(!is_void<_Aligner>::value, "");
    union type
    {
        _Aligner __align;
        unsigned char __data[(_Len + _Align - 1)/_Align * _Align];
    };
};
# 1659 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <size_t _Len>struct __attribute__ ((__visibility__("default"))) aligned_storage<_Len, 0x1>{ struct __attribute__((__aligned__(0x1))) type { unsigned char __lx[(_Len + 0x1 - 1)/0x1 * 0x1]; };};
template <size_t _Len>struct __attribute__ ((__visibility__("default"))) aligned_storage<_Len, 0x2>{ struct __attribute__((__aligned__(0x2))) type { unsigned char __lx[(_Len + 0x2 - 1)/0x2 * 0x2]; };};
template <size_t _Len>struct __attribute__ ((__visibility__("default"))) aligned_storage<_Len, 0x4>{ struct __attribute__((__aligned__(0x4))) type { unsigned char __lx[(_Len + 0x4 - 1)/0x4 * 0x4]; };};
template <size_t _Len>struct __attribute__ ((__visibility__("default"))) aligned_storage<_Len, 0x8>{ struct __attribute__((__aligned__(0x8))) type { unsigned char __lx[(_Len + 0x8 - 1)/0x8 * 0x8]; };};
template <size_t _Len>struct __attribute__ ((__visibility__("default"))) aligned_storage<_Len, 0x10>{ struct __attribute__((__aligned__(0x10))) type { unsigned char __lx[(_Len + 0x10 - 1)/0x10 * 0x10]; };};
template <size_t _Len>struct __attribute__ ((__visibility__("default"))) aligned_storage<_Len, 0x20>{ struct __attribute__((__aligned__(0x20))) type { unsigned char __lx[(_Len + 0x20 - 1)/0x20 * 0x20]; };};
template <size_t _Len>struct __attribute__ ((__visibility__("default"))) aligned_storage<_Len, 0x40>{ struct __attribute__((__aligned__(0x40))) type { unsigned char __lx[(_Len + 0x40 - 1)/0x40 * 0x40]; };};
template <size_t _Len>struct __attribute__ ((__visibility__("default"))) aligned_storage<_Len, 0x80>{ struct __attribute__((__aligned__(0x80))) type { unsigned char __lx[(_Len + 0x80 - 1)/0x80 * 0x80]; };};
template <size_t _Len>struct __attribute__ ((__visibility__("default"))) aligned_storage<_Len, 0x100>{ struct __attribute__((__aligned__(0x100))) type { unsigned char __lx[(_Len + 0x100 - 1)/0x100 * 0x100]; };};
template <size_t _Len>struct __attribute__ ((__visibility__("default"))) aligned_storage<_Len, 0x200>{ struct __attribute__((__aligned__(0x200))) type { unsigned char __lx[(_Len + 0x200 - 1)/0x200 * 0x200]; };};
template <size_t _Len>struct __attribute__ ((__visibility__("default"))) aligned_storage<_Len, 0x400>{ struct __attribute__((__aligned__(0x400))) type { unsigned char __lx[(_Len + 0x400 - 1)/0x400 * 0x400]; };};
template <size_t _Len>struct __attribute__ ((__visibility__("default"))) aligned_storage<_Len, 0x800>{ struct __attribute__((__aligned__(0x800))) type { unsigned char __lx[(_Len + 0x800 - 1)/0x800 * 0x800]; };};
template <size_t _Len>struct __attribute__ ((__visibility__("default"))) aligned_storage<_Len, 0x1000>{ struct __attribute__((__aligned__(0x1000))) type { unsigned char __lx[(_Len + 0x1000 - 1)/0x1000 * 0x1000]; };};
template <size_t _Len>struct __attribute__ ((__visibility__("default"))) aligned_storage<_Len, 0x2000>{ struct __attribute__((__aligned__(0x2000))) type { unsigned char __lx[(_Len + 0x2000 - 1)/0x2000 * 0x2000]; };};


template <size_t _Len>struct __attribute__ ((__visibility__("default"))) aligned_storage<_Len, 0x4000>{ struct __attribute__((__aligned__(0x4000))) type { unsigned char __lx[(_Len + 0x4000 - 1)/0x4000 * 0x4000]; };};
# 1684 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <size_t _I0, size_t ..._In>
struct __static_max;

template <size_t _I0>
struct __static_max<_I0>
{
    static const size_t value = _I0;
};

template <size_t _I0, size_t _I1, size_t ..._In>
struct __static_max<_I0, _I1, _In...>
{
    static const size_t value = _I0 >= _I1 ? __static_max<_I0, _In...>::value :
                                             __static_max<_I1, _In...>::value;
};

template <size_t _Len, class _Type0, class ..._Types>
struct aligned_union
{
    static const size_t alignment_value = __static_max<__alignof__(_Type0),
                                                       __alignof__(_Types)...>::value;
    static const size_t __len = __static_max<_Len, sizeof(_Type0),
                                             sizeof(_Types)...>::value;
    typedef typename aligned_storage<__len, alignment_value>::type type;
};







template <class _Tp>
struct __numeric_type
{
   static void __test(...);
   static float __test(float);
   static double __test(char);
   static double __test(int);
   static double __test(unsigned);
   static double __test(long);
   static double __test(unsigned long);
   static double __test(long long);
   static double __test(unsigned long long);
   static double __test(double);
   static long double __test(long double);

   typedef decltype(__test(declval<_Tp>())) type;
   static const bool value = !is_same<type, void>::value;
};

template <>
struct __numeric_type<void>
{
   static const bool value = true;
};



template <class _A1, class _A2 = void, class _A3 = void,
          bool = __numeric_type<_A1>::value &&
                 __numeric_type<_A2>::value &&
                 __numeric_type<_A3>::value>
class __promote_imp
{
public:
    static const bool value = false;
};

template <class _A1, class _A2, class _A3>
class __promote_imp<_A1, _A2, _A3, true>
{
private:
    typedef typename __promote_imp<_A1>::type __type1;
    typedef typename __promote_imp<_A2>::type __type2;
    typedef typename __promote_imp<_A3>::type __type3;
public:
    typedef decltype(__type1() + __type2() + __type3()) type;
    static const bool value = true;
};

template <class _A1, class _A2>
class __promote_imp<_A1, _A2, void, true>
{
private:
    typedef typename __promote_imp<_A1>::type __type1;
    typedef typename __promote_imp<_A2>::type __type2;
public:
    typedef decltype(__type1() + __type2()) type;
    static const bool value = true;
};

template <class _A1>
class __promote_imp<_A1, void, void, true>
{
public:
    typedef typename __numeric_type<_A1>::type type;
    static const bool value = true;
};

template <class _A1, class _A2 = void, class _A3 = void>
class __promote : public __promote_imp<_A1, _A2, _A3> {};



typedef
    __type_list<signed char,
    __type_list<signed short,
    __type_list<signed int,
    __type_list<signed long,
    __type_list<signed long long,

    __type_list<__int128_t,

    __nat

    >

    > > > > > __signed_types;

typedef
    __type_list<unsigned char,
    __type_list<unsigned short,
    __type_list<unsigned int,
    __type_list<unsigned long,
    __type_list<unsigned long long,

    __type_list<__uint128_t,

    __nat

    >

    > > > > > __unsigned_types;

template <class _TypeList, size_t _Size, bool = _Size <= sizeof(typename _TypeList::_Head)> struct __find_first;

template <class _Hp, class _Tp, size_t _Size>
struct __find_first<__type_list<_Hp, _Tp>, _Size, true>
{
    typedef _Hp type;
};

template <class _Hp, class _Tp, size_t _Size>
struct __find_first<__type_list<_Hp, _Tp>, _Size, false>
{
    typedef typename __find_first<_Tp, _Size>::type type;
};

template <class _Tp, class _Up, bool = is_const<typename remove_reference<_Tp>::type>::value,
                             bool = is_volatile<typename remove_reference<_Tp>::type>::value>
struct __apply_cv
{
    typedef _Up type;
};

template <class _Tp, class _Up>
struct __apply_cv<_Tp, _Up, true, false>
{
    typedef const _Up type;
};

template <class _Tp, class _Up>
struct __apply_cv<_Tp, _Up, false, true>
{
    typedef volatile _Up type;
};

template <class _Tp, class _Up>
struct __apply_cv<_Tp, _Up, true, true>
{
    typedef const volatile _Up type;
};

template <class _Tp, class _Up>
struct __apply_cv<_Tp&, _Up, false, false>
{
    typedef _Up& type;
};

template <class _Tp, class _Up>
struct __apply_cv<_Tp&, _Up, true, false>
{
    typedef const _Up& type;
};

template <class _Tp, class _Up>
struct __apply_cv<_Tp&, _Up, false, true>
{
    typedef volatile _Up& type;
};

template <class _Tp, class _Up>
struct __apply_cv<_Tp&, _Up, true, true>
{
    typedef const volatile _Up& type;
};

template <class _Tp, bool = is_integral<_Tp>::value || is_enum<_Tp>::value>
struct __make_signed {};

template <class _Tp>
struct __make_signed<_Tp, true>
{
    typedef typename __find_first<__signed_types, sizeof(_Tp)>::type type;
};

template <> struct __make_signed<bool, true> {};
template <> struct __make_signed< signed short, true> {typedef short type;};
template <> struct __make_signed<unsigned short, true> {typedef short type;};
template <> struct __make_signed< signed int, true> {typedef int type;};
template <> struct __make_signed<unsigned int, true> {typedef int type;};
template <> struct __make_signed< signed long, true> {typedef long type;};
template <> struct __make_signed<unsigned long, true> {typedef long type;};
template <> struct __make_signed< signed long long, true> {typedef long long type;};
template <> struct __make_signed<unsigned long long, true> {typedef long long type;};

template <> struct __make_signed<__int128_t, true> {typedef __int128_t type;};
template <> struct __make_signed<__uint128_t, true> {typedef __int128_t type;};


template <class _Tp>
struct __attribute__ ((__visibility__("default"))) make_signed
{
    typedef typename __apply_cv<_Tp, typename __make_signed<typename remove_cv<_Tp>::type>::type>::type type;
};





template <class _Tp, bool = is_integral<_Tp>::value || is_enum<_Tp>::value>
struct __make_unsigned {};

template <class _Tp>
struct __make_unsigned<_Tp, true>
{
    typedef typename __find_first<__unsigned_types, sizeof(_Tp)>::type type;
};

template <> struct __make_unsigned<bool, true> {};
template <> struct __make_unsigned< signed short, true> {typedef unsigned short type;};
template <> struct __make_unsigned<unsigned short, true> {typedef unsigned short type;};
template <> struct __make_unsigned< signed int, true> {typedef unsigned int type;};
template <> struct __make_unsigned<unsigned int, true> {typedef unsigned int type;};
template <> struct __make_unsigned< signed long, true> {typedef unsigned long type;};
template <> struct __make_unsigned<unsigned long, true> {typedef unsigned long type;};
template <> struct __make_unsigned< signed long long, true> {typedef unsigned long long type;};
template <> struct __make_unsigned<unsigned long long, true> {typedef unsigned long long type;};

template <> struct __make_unsigned<__int128_t, true> {typedef __uint128_t type;};
template <> struct __make_unsigned<__uint128_t, true> {typedef __uint128_t type;};


template <class _Tp>
struct __attribute__ ((__visibility__("default"))) make_unsigned
{
    typedef typename __apply_cv<_Tp, typename __make_unsigned<typename remove_cv<_Tp>::type>::type>::type type;
};
# 1976 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class ..._Tp>
struct __attribute__ ((__visibility__("default"))) common_type {};



template <class _Tp>
struct __attribute__ ((__visibility__("default"))) common_type<_Tp>
{
    typedef typename decay<_Tp>::type type;
};



template <class _Tp, class _Up, class = void>
struct __common_type2 {};

template <class _Tp, class _Up>
struct __common_type2<_Tp, _Up,
    typename __void_t<decltype(
        true ? std::__1::declval<_Tp>() : std::__1::declval<_Up>()
    )>::type>
{
    typedef typename decay<decltype(
        true ? std::__1::declval<_Tp>() : std::__1::declval<_Up>()
    )>::type type;
};

template <class _Tp, class _Up>
struct __attribute__ ((__visibility__("default"))) common_type<_Tp, _Up>
    : __common_type2<_Tp, _Up> {};



template <class ...Tp> struct __common_types;

template <class, class = void>
struct __common_type_impl {};

template <class _Tp, class _Up, class ..._Vp>
struct __common_type_impl<__common_types<_Tp, _Up, _Vp...>,
    typename __void_t<typename common_type<_Tp, _Up>::type>::type>
{
    typedef typename common_type<
        typename common_type<_Tp, _Up>::type, _Vp...
    >::type type;
};

template <class _Tp, class _Up, class ..._Vp>
struct __attribute__ ((__visibility__("default"))) common_type<_Tp, _Up, _Vp...>
    : __common_type_impl<__common_types<_Tp, _Up, _Vp...> > {};
# 2035 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template<typename, typename _Tp> struct __select_2nd { typedef _Tp type; };

template <class _Tp, class _Arg>
typename __select_2nd<decltype((std::__1::declval<_Tp>() = std::__1::declval<_Arg>())), true_type>::type

__is_assignable_test(_Tp&&, _Arg&&);




template <class _Arg>
false_type

__is_assignable_test(__any, _Arg&&);




template <class _Tp, class _Arg, bool = is_void<_Tp>::value || is_void<_Arg>::value>
struct __is_assignable_imp
    : public common_type
        <
            decltype(std::__1::__is_assignable_test(declval<_Tp>(), declval<_Arg>()))
        >::type {};

template <class _Tp, class _Arg>
struct __is_assignable_imp<_Tp, _Arg, true>
    : public false_type
{
};

template <class _Tp, class _Arg>
struct is_assignable
    : public __is_assignable_imp<_Tp, _Arg> {};
# 2077 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_copy_assignable
    : public is_assignable<typename add_lvalue_reference<_Tp>::type,
                  typename add_lvalue_reference<typename add_const<_Tp>::type>::type> {};
# 2088 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_move_assignable

    : public is_assignable<typename add_lvalue_reference<_Tp>::type,
                     const typename add_rvalue_reference<_Tp>::type> {};
# 2110 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class>
struct __is_destructible_apply { typedef int type; };

template <typename _Tp>
struct __is_destructor_wellformed {
    template <typename _Tp1>
    static char __test (
        typename __is_destructible_apply<decltype(std::__1::declval<_Tp1&>().~_Tp1())>::type
    );

    template <typename _Tp1>
    static __two __test (...);

    static const bool value = sizeof(__test<_Tp>(12)) == sizeof(char);
};

template <class _Tp, bool>
struct __destructible_imp;

template <class _Tp>
struct __destructible_imp<_Tp, false>
   : public std::__1::integral_constant<bool,
        __is_destructor_wellformed<typename std::__1::remove_all_extents<_Tp>::type>::value> {};

template <class _Tp>
struct __destructible_imp<_Tp, true>
    : public std::__1::true_type {};

template <class _Tp, bool>
struct __destructible_false;

template <class _Tp>
struct __destructible_false<_Tp, false> : public __destructible_imp<_Tp, std::__1::is_reference<_Tp>::value> {};

template <class _Tp>
struct __destructible_false<_Tp, true> : public std::__1::false_type {};

template <class _Tp>
struct is_destructible
    : public __destructible_false<_Tp, std::__1::is_function<_Tp>::value> {};

template <class _Tp>
struct is_destructible<_Tp[]>
    : public std::__1::false_type {};

template <>
struct is_destructible<void>
    : public std::__1::false_type {};
# 2168 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename remove_reference<_Tp>::type&&
move(_Tp&& __t) noexcept
{
    typedef typename remove_reference<_Tp>::type _Up;
    return static_cast<_Up&&>(__t);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp&&
forward(typename remove_reference<_Tp>::type& __t) noexcept
{
    return static_cast<_Tp&&>(__t);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp&&
forward(typename remove_reference<_Tp>::type&& __t) noexcept
{
    static_assert(!is_lvalue_reference<_Tp>::value,
                  "Can not forward an rvalue as an lvalue.");
    return static_cast<_Tp&&>(__t);
}
# 2238 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename decay<_Tp>::type
__decay_copy(_Tp&& __t)
{
    return std::__1::forward<_Tp>(__t);
}
# 2260 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param...), true, false>
{
    typedef _Class _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param..., ...), true, false>
{
    typedef _Class _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param..., ...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param...) const, true, false>
{
    typedef _Class const _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param..., ...) const, true, false>
{
    typedef _Class const _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param..., ...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param...) volatile, true, false>
{
    typedef _Class volatile _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param..., ...) volatile, true, false>
{
    typedef _Class volatile _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param..., ...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param...) const volatile, true, false>
{
    typedef _Class const volatile _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param..., ...) const volatile, true, false>
{
    typedef _Class const volatile _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param..., ...);
};




template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param...) &, true, false>
{
    typedef _Class& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param..., ...) &, true, false>
{
    typedef _Class& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param..., ...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param...) const&, true, false>
{
    typedef _Class const& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param..., ...) const&, true, false>
{
    typedef _Class const& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param..., ...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param...) volatile&, true, false>
{
    typedef _Class volatile& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param..., ...) volatile&, true, false>
{
    typedef _Class volatile& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param..., ...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param...) const volatile&, true, false>
{
    typedef _Class const volatile& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param..., ...) const volatile&, true, false>
{
    typedef _Class const volatile& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param..., ...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param...) &&, true, false>
{
    typedef _Class&& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param..., ...) &&, true, false>
{
    typedef _Class&& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param..., ...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param...) const&&, true, false>
{
    typedef _Class const&& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param..., ...) const&&, true, false>
{
    typedef _Class const&& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param..., ...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param...) volatile&&, true, false>
{
    typedef _Class volatile&& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param..., ...) volatile&&, true, false>
{
    typedef _Class volatile&& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param..., ...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param...) const volatile&&, true, false>
{
    typedef _Class const volatile&& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param...);
};

template <class _Rp, class _Class, class ..._Param>
struct __member_pointer_traits_imp<_Rp (_Class::*)(_Param..., ...) const volatile&&, true, false>
{
    typedef _Class const volatile&& _ClassType;
    typedef _Rp _ReturnType;
    typedef _Rp (_FnType) (_Param..., ...);
};
# 2717 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Rp, class _Class>
struct __member_pointer_traits_imp<_Rp _Class::*, false, true>
{
    typedef _Class _ClassType;
    typedef _Rp _ReturnType;
};

template <class _MP>
struct __member_pointer_traits
    : public __member_pointer_traits_imp<typename remove_cv<_MP>::type,
                    is_member_function_pointer<_MP>::value,
                    is_member_object_pointer<_MP>::value>
{



};


template <class _DecayedFp>
struct __member_pointer_class_type {};

template <class _Ret, class _ClassType>
struct __member_pointer_class_type<_Ret _ClassType::*> {
  typedef _ClassType type;
};



template <class _Callable> class result_of;
# 2898 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
namespace __is_construct
{
struct __nat {};
}
# 2916 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp, class ..._Args>
typename __select_2nd<decltype(std::__1::move(_Tp(std::__1::declval<_Args>()...))), true_type>::type
__is_constructible_test(_Tp&&, _Args&& ...);

template <class ..._Args>
false_type
__is_constructible_test(__any, _Args&& ...);

template <bool, class _Tp, class... _Args>
struct __libcpp_is_constructible
    : public common_type
             <
                 decltype(__is_constructible_test(declval<_Tp>(), declval<_Args>()...))
             >::type
    {};



template <class _Rp, class... _A1, class... _A2>
struct __libcpp_is_constructible<false, _Rp(_A1...), _A2...>
    : public false_type
    {};





template <class _Tp>
struct __libcpp_is_constructible<true, _Tp>
    : public is_scalar<_Tp>
    {};




template <class _Tp>
struct __is_constructible_ref
{
    true_type static __lxx(_Tp);
    false_type static __lxx(...);
};

template <class _Tp, class _A0>
struct __libcpp_is_constructible<true, _Tp, _A0>
    : public common_type
             <
                 decltype(__is_constructible_ref<_Tp>::__lxx(declval<_A0>()))
             >::type
    {};



template <class _Tp, class _A0, class ..._Args>
struct __libcpp_is_constructible<true, _Tp, _A0, _Args...>
    : public false_type
    {};



template <bool, class _Tp, class... _Args>
struct __is_constructible_void_check
    : public __libcpp_is_constructible<is_scalar<_Tp>::value || is_reference<_Tp>::value,
                                _Tp, _Args...>
    {};



template <class _Tp, class... _Args>
struct __is_constructible_void_check<true, _Tp, _Args...>
    : public false_type
    {};

template <class ..._Args> struct __contains_void;

template <> struct __contains_void<> : false_type {};

template <class _A0, class ..._Args>
struct __contains_void<_A0, _Args...>
{
    static const bool value = is_void<_A0>::value ||
                              __contains_void<_Args...>::value;
};



template <class _Tp, class... _Args>
struct __attribute__ ((__visibility__("default"))) is_constructible
    : public __is_constructible_void_check<__contains_void<_Tp, _Args...>::value
                                        || is_abstract<_Tp>::value,
                                           _Tp, _Args...>
    {};




template <class _Ap, size_t _Np>
struct __libcpp_is_constructible<false, _Ap[_Np]>
    : public is_constructible<typename remove_all_extents<_Ap>::type>
    {};



template <class _Ap, size_t _Np, class ..._Args>
struct __libcpp_is_constructible<false, _Ap[_Np], _Args...>
    : public false_type
    {};



template <class _Ap, class ..._Args>
struct __libcpp_is_constructible<false, _Ap[], _Args...>
    : public false_type
    {};
# 3214 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp>
struct __attribute__ ((__visibility__("default"))) is_default_constructible
    : public is_constructible<_Tp>
    {};
# 3226 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp>
struct __attribute__ ((__visibility__("default"))) is_copy_constructible
    : public is_constructible<_Tp,
                  typename add_lvalue_reference<typename add_const<_Tp>::type>::type> {};
# 3238 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp>
struct __attribute__ ((__visibility__("default"))) is_move_constructible

    : public is_constructible<_Tp, typename add_rvalue_reference<_Tp>::type>



    {};
# 3258 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp, class... _Args>
struct __attribute__ ((__visibility__("default"))) is_trivially_constructible
    : integral_constant<bool, __is_trivially_constructible(_Tp, _Args...)>
{
};
# 3386 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_trivially_default_constructible
    : public is_trivially_constructible<_Tp>
    {};
# 3397 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_trivially_copy_constructible
    : public is_trivially_constructible<_Tp, typename add_lvalue_reference<const _Tp>::type>
    {};
# 3408 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_trivially_move_constructible

    : public is_trivially_constructible<_Tp, typename add_rvalue_reference<_Tp>::type>



    {};
# 3425 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp, class _Arg>
struct is_trivially_assignable
    : integral_constant<bool, __is_trivially_assignable(_Tp, _Arg)>
{
};
# 3466 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_trivially_copy_assignable
    : public is_trivially_assignable<typename add_lvalue_reference<_Tp>::type,
                  typename add_lvalue_reference<typename add_const<_Tp>::type>::type> {};
# 3477 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_trivially_move_assignable
    : public is_trivially_assignable<typename add_lvalue_reference<_Tp>::type,

                                     typename add_rvalue_reference<_Tp>::type>



    {};
# 3495 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_trivially_destructible
    : public integral_constant<bool, is_destructible<_Tp>::value && __has_trivial_destructor(_Tp)> {};
# 3532 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <bool, bool, class _Tp, class... _Args> struct __libcpp_is_nothrow_constructible;

template <class _Tp, class... _Args>
struct __libcpp_is_nothrow_constructible< true, false, _Tp, _Args...>
    : public integral_constant<bool, noexcept(_Tp(declval<_Args>()...))>
{
};

template <class _Tp>
void __implicit_conversion_to(_Tp) noexcept { }

template <class _Tp, class _Arg>
struct __libcpp_is_nothrow_constructible< true, true, _Tp, _Arg>
    : public integral_constant<bool, noexcept(__implicit_conversion_to<_Tp>(declval<_Arg>()))>
{
};

template <class _Tp, bool _IsReference, class... _Args>
struct __libcpp_is_nothrow_constructible< false, _IsReference, _Tp, _Args...>
    : public false_type
{
};

template <class _Tp, class... _Args>
struct __attribute__ ((__visibility__("default"))) is_nothrow_constructible
    : __libcpp_is_nothrow_constructible<is_constructible<_Tp, _Args...>::value, is_reference<_Tp>::value, _Tp, _Args...>
{
};

template <class _Tp, size_t _Ns>
struct __attribute__ ((__visibility__("default"))) is_nothrow_constructible<_Tp[_Ns]>
    : __libcpp_is_nothrow_constructible<is_constructible<_Tp>::value, is_reference<_Tp>::value, _Tp>
{
};
# 3684 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_nothrow_default_constructible
    : public is_nothrow_constructible<_Tp>
    {};
# 3695 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_nothrow_copy_constructible
    : public is_nothrow_constructible<_Tp,
                  typename add_lvalue_reference<typename add_const<_Tp>::type>::type> {};
# 3706 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_nothrow_move_constructible

    : public is_nothrow_constructible<_Tp, typename add_rvalue_reference<_Tp>::type>



    {};
# 3723 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <bool, class _Tp, class _Arg> struct __libcpp_is_nothrow_assignable;

template <class _Tp, class _Arg>
struct __libcpp_is_nothrow_assignable<false, _Tp, _Arg>
    : public false_type
{
};

template <class _Tp, class _Arg>
struct __libcpp_is_nothrow_assignable<true, _Tp, _Arg>
    : public integral_constant<bool, noexcept(std::__1::declval<_Tp>() = std::__1::declval<_Arg>()) >
{
};

template <class _Tp, class _Arg>
struct __attribute__ ((__visibility__("default"))) is_nothrow_assignable
    : public __libcpp_is_nothrow_assignable<is_assignable<_Tp, _Arg>::value, _Tp, _Arg>
{
};
# 3794 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_nothrow_copy_assignable
    : public is_nothrow_assignable<typename add_lvalue_reference<_Tp>::type,
                  typename add_lvalue_reference<typename add_const<_Tp>::type>::type> {};
# 3805 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_nothrow_move_assignable
    : public is_nothrow_assignable<typename add_lvalue_reference<_Tp>::type,

                                     typename add_rvalue_reference<_Tp>::type>



    {};
# 3823 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <bool, class _Tp> struct __libcpp_is_nothrow_destructible;

template <class _Tp>
struct __libcpp_is_nothrow_destructible<false, _Tp>
    : public false_type
{
};

template <class _Tp>
struct __libcpp_is_nothrow_destructible<true, _Tp>
    : public integral_constant<bool, noexcept(std::__1::declval<_Tp>().~_Tp()) >
{
};

template <class _Tp>
struct __attribute__ ((__visibility__("default"))) is_nothrow_destructible
    : public __libcpp_is_nothrow_destructible<is_destructible<_Tp>::value, _Tp>
{
};

template <class _Tp, size_t _Ns>
struct __attribute__ ((__visibility__("default"))) is_nothrow_destructible<_Tp[_Ns]>
    : public is_nothrow_destructible<_Tp>
{
};

template <class _Tp>
struct __attribute__ ((__visibility__("default"))) is_nothrow_destructible<_Tp&>
    : public true_type
{
};



template <class _Tp>
struct __attribute__ ((__visibility__("default"))) is_nothrow_destructible<_Tp&&>
    : public true_type
{
};
# 3889 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_pod
    : public integral_constant<bool, __is_pod(_Tp)> {};
# 3909 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_literal_type

    : public integral_constant<bool, __is_literal_type(_Tp)>




    {};
# 3925 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_standard_layout

    : public integral_constant<bool, __is_standard_layout(_Tp)>



    {};
# 3940 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_trivially_copyable



    : public integral_constant<bool, !is_volatile<_Tp>::value && __is_trivially_copyable(_Tp)>



    {};
# 3957 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __attribute__ ((__visibility__("default"))) is_trivial

    : public integral_constant<bool, __is_trivial(_Tp)>




    {};






template <class _Tp> struct __is_reference_wrapper_impl : public false_type {};
template <class _Tp> struct __is_reference_wrapper_impl<reference_wrapper<_Tp> > : public true_type {};
template <class _Tp> struct __is_reference_wrapper
    : public __is_reference_wrapper_impl<typename remove_cv<_Tp>::type> {};





template <class ..._Tp> struct __check_complete;

template <>
struct __check_complete<>
{
};

template <class _Hp, class _T0, class ..._Tp>
struct __check_complete<_Hp, _T0, _Tp...>
    : private __check_complete<_Hp>,
      private __check_complete<_T0, _Tp...>
{
};

template <class _Hp>
struct __check_complete<_Hp, _Hp>
    : private __check_complete<_Hp>
{
};

template <class _Tp>
struct __check_complete<_Tp>
{
    static_assert(sizeof(_Tp) > 0, "Type must be complete.");
};

template <class _Tp>
struct __check_complete<_Tp&>
    : private __check_complete<_Tp>
{
};

template <class _Tp>
struct __check_complete<_Tp&&>
    : private __check_complete<_Tp>
{
};

template <class _Rp, class ..._Param>
struct __check_complete<_Rp (*)(_Param...)>
    : private __check_complete<_Rp>
{
};

template <class ..._Param>
struct __check_complete<void (*)(_Param...)>
{
};

template <class _Rp, class ..._Param>
struct __check_complete<_Rp (_Param...)>
    : private __check_complete<_Rp>
{
};

template <class ..._Param>
struct __check_complete<void (_Param...)>
{
};

template <class _Rp, class _Class, class ..._Param>
struct __check_complete<_Rp (_Class::*)(_Param...)>
    : private __check_complete<_Class>
{
};

template <class _Rp, class _Class, class ..._Param>
struct __check_complete<_Rp (_Class::*)(_Param...) const>
    : private __check_complete<_Class>
{
};

template <class _Rp, class _Class, class ..._Param>
struct __check_complete<_Rp (_Class::*)(_Param...) volatile>
    : private __check_complete<_Class>
{
};

template <class _Rp, class _Class, class ..._Param>
struct __check_complete<_Rp (_Class::*)(_Param...) const volatile>
    : private __check_complete<_Class>
{
};

template <class _Rp, class _Class, class ..._Param>
struct __check_complete<_Rp (_Class::*)(_Param...) &>
    : private __check_complete<_Class>
{
};

template <class _Rp, class _Class, class ..._Param>
struct __check_complete<_Rp (_Class::*)(_Param...) const&>
    : private __check_complete<_Class>
{
};

template <class _Rp, class _Class, class ..._Param>
struct __check_complete<_Rp (_Class::*)(_Param...) volatile&>
    : private __check_complete<_Class>
{
};

template <class _Rp, class _Class, class ..._Param>
struct __check_complete<_Rp (_Class::*)(_Param...) const volatile&>
    : private __check_complete<_Class>
{
};

template <class _Rp, class _Class, class ..._Param>
struct __check_complete<_Rp (_Class::*)(_Param...) &&>
    : private __check_complete<_Class>
{
};

template <class _Rp, class _Class, class ..._Param>
struct __check_complete<_Rp (_Class::*)(_Param...) const&&>
    : private __check_complete<_Class>
{
};

template <class _Rp, class _Class, class ..._Param>
struct __check_complete<_Rp (_Class::*)(_Param...) volatile&&>
    : private __check_complete<_Class>
{
};

template <class _Rp, class _Class, class ..._Param>
struct __check_complete<_Rp (_Class::*)(_Param...) const volatile&&>
    : private __check_complete<_Class>
{
};

template <class _Rp, class _Class>
struct __check_complete<_Rp _Class::*>
    : private __check_complete<_Class>
{
};


template <class _Fp, class _A0,
         class _DecayFp = typename decay<_Fp>::type,
         class _DecayA0 = typename decay<_A0>::type,
         class _ClassT = typename __member_pointer_class_type<_DecayFp>::type>
using __enable_if_bullet1 = typename enable_if
    <
        is_member_function_pointer<_DecayFp>::value
        && is_base_of<_ClassT, _DecayA0>::value
    >::type;

template <class _Fp, class _A0,
         class _DecayFp = typename decay<_Fp>::type,
         class _DecayA0 = typename decay<_A0>::type>
using __enable_if_bullet2 = typename enable_if
    <
        is_member_function_pointer<_DecayFp>::value
        && __is_reference_wrapper<_DecayA0>::value
    >::type;

template <class _Fp, class _A0,
         class _DecayFp = typename decay<_Fp>::type,
         class _DecayA0 = typename decay<_A0>::type,
         class _ClassT = typename __member_pointer_class_type<_DecayFp>::type>
using __enable_if_bullet3 = typename enable_if
    <
        is_member_function_pointer<_DecayFp>::value
        && !is_base_of<_ClassT, _DecayA0>::value
        && !__is_reference_wrapper<_DecayA0>::value
    >::type;

template <class _Fp, class _A0,
         class _DecayFp = typename decay<_Fp>::type,
         class _DecayA0 = typename decay<_A0>::type,
         class _ClassT = typename __member_pointer_class_type<_DecayFp>::type>
using __enable_if_bullet4 = typename enable_if
    <
        is_member_object_pointer<_DecayFp>::value
        && is_base_of<_ClassT, _DecayA0>::value
    >::type;

template <class _Fp, class _A0,
         class _DecayFp = typename decay<_Fp>::type,
         class _DecayA0 = typename decay<_A0>::type>
using __enable_if_bullet5 = typename enable_if
    <
        is_member_object_pointer<_DecayFp>::value
        && __is_reference_wrapper<_DecayA0>::value
    >::type;

template <class _Fp, class _A0,
         class _DecayFp = typename decay<_Fp>::type,
         class _DecayA0 = typename decay<_A0>::type,
         class _ClassT = typename __member_pointer_class_type<_DecayFp>::type>
using __enable_if_bullet6 = typename enable_if
    <
        is_member_object_pointer<_DecayFp>::value
        && !is_base_of<_ClassT, _DecayA0>::value
        && !__is_reference_wrapper<_DecayA0>::value
    >::type;
# 4187 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class ..._Args>
auto __invoke(__any, _Args&& ...__args) -> __nat;

template <class ..._Args>
auto __invoke_constexpr(__any, _Args&& ...__args) -> __nat;



template <class _Fp, class _A0, class ..._Args,
          class = __enable_if_bullet1<_Fp, _A0>>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
auto
__invoke(_Fp&& __f, _A0&& __a0, _Args&& ...__args)
noexcept(noexcept((std::__1::forward<_A0>(__a0).*__f)(std::__1::forward<_Args>(__args)...))) -> decltype((std::__1::forward<_A0>(__a0).*__f)(std::__1::forward<_Args>(__args)...)) { return (std::__1::forward<_A0>(__a0).*__f)(std::__1::forward<_Args>(__args)...); }

template <class _Fp, class _A0, class ..._Args,
          class = __enable_if_bullet1<_Fp, _A0>>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
constexpr auto
__invoke_constexpr(_Fp&& __f, _A0&& __a0, _Args&& ...__args)
noexcept(noexcept((std::__1::forward<_A0>(__a0).*__f)(std::__1::forward<_Args>(__args)...))) -> decltype((std::__1::forward<_A0>(__a0).*__f)(std::__1::forward<_Args>(__args)...)) { return (std::__1::forward<_A0>(__a0).*__f)(std::__1::forward<_Args>(__args)...); }

template <class _Fp, class _A0, class ..._Args,
          class = __enable_if_bullet2<_Fp, _A0>>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
auto
__invoke(_Fp&& __f, _A0&& __a0, _Args&& ...__args)
noexcept(noexcept((__a0.get().*__f)(std::__1::forward<_Args>(__args)...))) -> decltype((__a0.get().*__f)(std::__1::forward<_Args>(__args)...)) { return (__a0.get().*__f)(std::__1::forward<_Args>(__args)...); }

template <class _Fp, class _A0, class ..._Args,
          class = __enable_if_bullet2<_Fp, _A0>>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
constexpr auto
__invoke_constexpr(_Fp&& __f, _A0&& __a0, _Args&& ...__args)
noexcept(noexcept((__a0.get().*__f)(std::__1::forward<_Args>(__args)...))) -> decltype((__a0.get().*__f)(std::__1::forward<_Args>(__args)...)) { return (__a0.get().*__f)(std::__1::forward<_Args>(__args)...); }

template <class _Fp, class _A0, class ..._Args,
          class = __enable_if_bullet3<_Fp, _A0>>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
auto
__invoke(_Fp&& __f, _A0&& __a0, _Args&& ...__args)
noexcept(noexcept(((*std::__1::forward<_A0>(__a0)).*__f)(std::__1::forward<_Args>(__args)...))) -> decltype(((*std::__1::forward<_A0>(__a0)).*__f)(std::__1::forward<_Args>(__args)...)) { return ((*std::__1::forward<_A0>(__a0)).*__f)(std::__1::forward<_Args>(__args)...); }

template <class _Fp, class _A0, class ..._Args,
          class = __enable_if_bullet3<_Fp, _A0>>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
constexpr auto
__invoke_constexpr(_Fp&& __f, _A0&& __a0, _Args&& ...__args)
noexcept(noexcept(((*std::__1::forward<_A0>(__a0)).*__f)(std::__1::forward<_Args>(__args)...))) -> decltype(((*std::__1::forward<_A0>(__a0)).*__f)(std::__1::forward<_Args>(__args)...)) { return ((*std::__1::forward<_A0>(__a0)).*__f)(std::__1::forward<_Args>(__args)...); }



template <class _Fp, class _A0,
          class = __enable_if_bullet4<_Fp, _A0>>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
auto
__invoke(_Fp&& __f, _A0&& __a0)
noexcept(noexcept(std::__1::forward<_A0>(__a0).*__f)) -> decltype(std::__1::forward<_A0>(__a0).*__f) { return std::__1::forward<_A0>(__a0).*__f; }

template <class _Fp, class _A0,
          class = __enable_if_bullet4<_Fp, _A0>>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
constexpr auto
__invoke_constexpr(_Fp&& __f, _A0&& __a0)
noexcept(noexcept(std::__1::forward<_A0>(__a0).*__f)) -> decltype(std::__1::forward<_A0>(__a0).*__f) { return std::__1::forward<_A0>(__a0).*__f; }

template <class _Fp, class _A0,
          class = __enable_if_bullet5<_Fp, _A0>>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
auto
__invoke(_Fp&& __f, _A0&& __a0)
noexcept(noexcept(__a0.get().*__f)) -> decltype(__a0.get().*__f) { return __a0.get().*__f; }

template <class _Fp, class _A0,
          class = __enable_if_bullet5<_Fp, _A0>>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
constexpr auto
__invoke_constexpr(_Fp&& __f, _A0&& __a0)
noexcept(noexcept(__a0.get().*__f)) -> decltype(__a0.get().*__f) { return __a0.get().*__f; }

template <class _Fp, class _A0,
          class = __enable_if_bullet6<_Fp, _A0>>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
auto
__invoke(_Fp&& __f, _A0&& __a0)
noexcept(noexcept((*std::__1::forward<_A0>(__a0)).*__f)) -> decltype((*std::__1::forward<_A0>(__a0)).*__f) { return (*std::__1::forward<_A0>(__a0)).*__f; }

template <class _Fp, class _A0,
          class = __enable_if_bullet6<_Fp, _A0>>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
constexpr auto
__invoke_constexpr(_Fp&& __f, _A0&& __a0)
noexcept(noexcept((*std::__1::forward<_A0>(__a0)).*__f)) -> decltype((*std::__1::forward<_A0>(__a0)).*__f) { return (*std::__1::forward<_A0>(__a0)).*__f; }



template <class _Fp, class ..._Args>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
auto
__invoke(_Fp&& __f, _Args&& ...__args)
noexcept(noexcept(std::__1::forward<_Fp>(__f)(std::__1::forward<_Args>(__args)...))) -> decltype(std::__1::forward<_Fp>(__f)(std::__1::forward<_Args>(__args)...)) { return std::__1::forward<_Fp>(__f)(std::__1::forward<_Args>(__args)...); }

template <class _Fp, class ..._Args>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
constexpr auto
__invoke_constexpr(_Fp&& __f, _Args&& ...__args)
noexcept(noexcept(std::__1::forward<_Fp>(__f)(std::__1::forward<_Args>(__args)...))) -> decltype(std::__1::forward<_Fp>(__f)(std::__1::forward<_Args>(__args)...)) { return std::__1::forward<_Fp>(__f)(std::__1::forward<_Args>(__args)...); }





template <class _Ret, class _Fp, class ..._Args>
struct __invokable_r
    : private __check_complete<_Fp>
{
    using _Result = decltype(
        std::__1::__invoke(std::__1::declval<_Fp>(), std::__1::declval<_Args>()...));

    static const bool value =
        conditional<
            !is_same<_Result, __nat>::value,
            typename conditional<
                is_void<_Ret>::value,
                true_type,
                is_convertible<_Result, _Ret>
            >::type,
            false_type
        >::type::value;
};

template <class _Fp, class ..._Args>
using __invokable = __invokable_r<void, _Fp, _Args...>;

template <bool _IsInvokable, bool _IsCVVoid, class _Ret, class _Fp, class ..._Args>
struct __nothrow_invokable_r_imp {
  static const bool value = false;
};

template <class _Ret, class _Fp, class ..._Args>
struct __nothrow_invokable_r_imp<true, false, _Ret, _Fp, _Args...>
{
    typedef __nothrow_invokable_r_imp _ThisT;

    template <class _Tp>
    static void __test_noexcept(_Tp) noexcept;

    static const bool value = noexcept(_ThisT::__test_noexcept<_Ret>(
        std::__1::__invoke(std::__1::declval<_Fp>(), std::__1::declval<_Args>()...)));
};

template <class _Ret, class _Fp, class ..._Args>
struct __nothrow_invokable_r_imp<true, true, _Ret, _Fp, _Args...>
{
    static const bool value = noexcept(
        std::__1::__invoke(std::__1::declval<_Fp>(), std::__1::declval<_Args>()...));
};

template <class _Ret, class _Fp, class ..._Args>
using __nothrow_invokable_r =
    __nothrow_invokable_r_imp<
            __invokable_r<_Ret, _Fp, _Args...>::value,
            is_void<_Ret>::value,
            _Ret, _Fp, _Args...
    >;

template <class _Fp, class ..._Args>
struct __invoke_of
    : public enable_if<
        __invokable<_Fp, _Args...>::value,
        typename __invokable_r<void, _Fp, _Args...>::_Result>
{
};



template <class _Fp, class ..._Args>
class __attribute__ ((__visibility__("default"))) result_of<_Fp(_Args...)>
    : public __invoke_of<_Fp, _Args...>
{
};
# 4404 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp> struct __is_swappable;
template <class _Tp> struct __is_nothrow_swappable;

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))

typename enable_if
<
    is_move_constructible<_Tp>::value &&
    is_move_assignable<_Tp>::value
>::type



swap(_Tp& __x, _Tp& __y) noexcept(is_nothrow_move_constructible<_Tp>::value && is_nothrow_move_assignable<_Tp>::value)

{
    _Tp __t(std::__1::move(__x));
    __x = std::__1::move(__y);
    __y = std::__1::move(__t);
}

template<class _Tp, size_t _Np>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if<
    __is_swappable<_Tp>::value
>::type
swap(_Tp (&__a)[_Np], _Tp (&__b)[_Np]) noexcept(__is_nothrow_swappable<_Tp>::value);

template <class _ForwardIterator1, class _ForwardIterator2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
iter_swap(_ForwardIterator1 __a, _ForwardIterator2 __b)

               noexcept(noexcept(swap(*std::__1::declval<_ForwardIterator1>(), *std::__1::declval<_ForwardIterator2>())))

{
    swap(*__a, *__b);
}



namespace __detail
{


template <class _Tp, class _Up = _Tp,
          bool _NotVoid = !is_void<_Tp>::value && !is_void<_Up>::value>
struct __swappable_with
{
    template <class _LHS, class _RHS>
    static decltype(swap(std::__1::declval<_LHS>(), std::__1::declval<_RHS>()))
    __test_swap(int);
    template <class, class>
    static __nat __test_swap(long);


    typedef decltype((__test_swap<_Tp, _Up>(0))) __swap1;
    typedef decltype((__test_swap<_Up, _Tp>(0))) __swap2;

    static const bool value = !is_same<__swap1, __nat>::value
                           && !is_same<__swap2, __nat>::value;
};

template <class _Tp, class _Up>
struct __swappable_with<_Tp, _Up, false> : false_type {};

template <class _Tp, class _Up = _Tp, bool _Swappable = __swappable_with<_Tp, _Up>::value>
struct __nothrow_swappable_with {
  static const bool value =

      noexcept(swap(std::__1::declval<_Tp>(), std::__1::declval<_Up>()))
  && noexcept(swap(std::__1::declval<_Up>(), std::__1::declval<_Tp>()));



};

template <class _Tp, class _Up>
struct __nothrow_swappable_with<_Tp, _Up, false> : false_type {};

}

template <class _Tp>
struct __is_swappable
    : public integral_constant<bool, __detail::__swappable_with<_Tp&>::value>
{
};

template <class _Tp>
struct __is_nothrow_swappable
    : public integral_constant<bool, __detail::__nothrow_swappable_with<_Tp&>::value>
{
};
# 4553 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp>
struct underlying_type
{
    typedef __underlying_type(_Tp) type;
};
# 4576 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
template <class _Tp, bool = is_enum<_Tp>::value>
struct __sfinae_underlying_type
{
    typedef typename underlying_type<_Tp>::type type;
    typedef decltype(((type)1) + 0) __promoted_type;
};

template <class _Tp>
struct __sfinae_underlying_type<_Tp, false> {};

inline __attribute__ ((__visibility__("hidden"), __always_inline__))
int __convert_to_integral(int __val) { return __val; }

inline __attribute__ ((__visibility__("hidden"), __always_inline__))
unsigned __convert_to_integral(unsigned __val) { return __val; }

inline __attribute__ ((__visibility__("hidden"), __always_inline__))
long __convert_to_integral(long __val) { return __val; }

inline __attribute__ ((__visibility__("hidden"), __always_inline__))
unsigned long __convert_to_integral(unsigned long __val) { return __val; }

inline __attribute__ ((__visibility__("hidden"), __always_inline__))
long long __convert_to_integral(long long __val) { return __val; }

inline __attribute__ ((__visibility__("hidden"), __always_inline__))
unsigned long long __convert_to_integral(unsigned long long __val) {return __val; }


inline __attribute__ ((__visibility__("hidden"), __always_inline__))
__int128_t __convert_to_integral(__int128_t __val) { return __val; }

inline __attribute__ ((__visibility__("hidden"), __always_inline__))
__uint128_t __convert_to_integral(__uint128_t __val) { return __val; }


template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename __sfinae_underlying_type<_Tp>::__promoted_type
__convert_to_integral(_Tp __val) { return __val; }



template <class _Tp>
struct __has_operator_addressof_member_imp
{
    template <class _Up>
        static auto __test(int)
            -> typename __select_2nd<decltype(std::__1::declval<_Up>().operator&()), true_type>::type;
    template <class>
        static auto __test(long) -> false_type;

    static const bool value = decltype(__test<_Tp>(0))::value;
};

template <class _Tp>
struct __has_operator_addressof_free_imp
{
    template <class _Up>
        static auto __test(int)
            -> typename __select_2nd<decltype(operator&(std::__1::declval<_Up>())), true_type>::type;
    template <class>
        static auto __test(long) -> false_type;

    static const bool value = decltype(__test<_Tp>(0))::value;
};

template <class _Tp>
struct __has_operator_addressof
    : public integral_constant<bool, __has_operator_addressof_member_imp<_Tp>::value
                                  || __has_operator_addressof_free_imp<_Tp>::value>
{};
# 4671 "/opt/intel/sgxsdk/include/libcxx/type_traits" 3
struct __extract_key_fail_tag {};
struct __extract_key_self_tag {};
struct __extract_key_first_tag {};

template <class _ValTy, class _Key,
          class _RawValTy = typename __unconstref<_ValTy>::type>
struct __can_extract_key
    : conditional<is_same<_RawValTy, _Key>::value, __extract_key_self_tag,
                  __extract_key_fail_tag>::type {};

template <class _Pair, class _Key, class _First, class _Second>
struct __can_extract_key<_Pair, _Key, pair<_First, _Second>>
    : conditional<is_same<typename remove_const<_First>::type, _Key>::value,
                  __extract_key_first_tag, __extract_key_fail_tag>::type {};




template <class _ValTy, class _Key, class _ContainerValueTy,
          class _RawValTy = typename __unconstref<_ValTy>::type>
struct __can_extract_map_key
    : integral_constant<bool, is_same<_RawValTy, _Key>::value> {};



template <class _ValTy, class _Key, class _RawValTy>
struct __can_extract_map_key<_ValTy, _Key, _Key, _RawValTy>
    : false_type {};



} }
# 632 "/opt/intel/sgxsdk/include/libcxx/algorithm" 2

# 1 "/opt/intel/sgxsdk/include/libcxx/utility" 1
# 179 "/opt/intel/sgxsdk/include/libcxx/utility"
# 1 "/opt/intel/sgxsdk/include/libcxx/__tuple" 1
# 19 "/opt/intel/sgxsdk/include/libcxx/__tuple"
       
# 20 "/opt/intel/sgxsdk/include/libcxx/__tuple" 3



namespace std { inline namespace __1 {

template <class _Tp> class __attribute__ ((__visibility__("default"))) tuple_size;

template <class _Tp>
class __attribute__ ((__visibility__("default"))) tuple_size<const _Tp>
    : public tuple_size<_Tp> {};

template <class _Tp>
class __attribute__ ((__visibility__("default"))) tuple_size<volatile _Tp>
    : public tuple_size<_Tp> {};

template <class _Tp>
class __attribute__ ((__visibility__("default"))) tuple_size<const volatile _Tp>
    : public tuple_size<_Tp> {};

template <size_t _Ip, class _Tp> class __attribute__ ((__visibility__("default"))) tuple_element;

template <size_t _Ip, class _Tp>
class __attribute__ ((__visibility__("default"))) tuple_element<_Ip, const _Tp>
{
public:
    typedef typename add_const<typename tuple_element<_Ip, _Tp>::type>::type type;
};

template <size_t _Ip, class _Tp>
class __attribute__ ((__visibility__("default"))) tuple_element<_Ip, volatile _Tp>
{
public:
    typedef typename add_volatile<typename tuple_element<_Ip, _Tp>::type>::type type;
};

template <size_t _Ip, class _Tp>
class __attribute__ ((__visibility__("default"))) tuple_element<_Ip, const volatile _Tp>
{
public:
    typedef typename add_cv<typename tuple_element<_Ip, _Tp>::type>::type type;
};

template <class _Tp> struct __tuple_like : false_type {};

template <class _Tp> struct __tuple_like<const _Tp> : public __tuple_like<_Tp> {};
template <class _Tp> struct __tuple_like<volatile _Tp> : public __tuple_like<_Tp> {};
template <class _Tp> struct __tuple_like<const volatile _Tp> : public __tuple_like<_Tp> {};





template <size_t...> struct __tuple_indices {};

template <class _IdxType, _IdxType... _Values>
struct __integer_sequence {
  template <template <class _OIdxType, _OIdxType...> class _ToIndexSeq, class _ToIndexType>
  using __convert = _ToIndexSeq<_ToIndexType, _Values...>;

  template <size_t _Sp>
  using __to_tuple_indices = __tuple_indices<(_Values + _Sp)...>;
};


namespace __detail {

template<typename _Tp, size_t ..._Extra> struct __repeat;
template<typename _Tp, _Tp ..._Np, size_t ..._Extra> struct __repeat<__integer_sequence<_Tp, _Np...>, _Extra...> {
  typedef __integer_sequence<_Tp,
                           _Np...,
                           sizeof...(_Np) + _Np...,
                           2 * sizeof...(_Np) + _Np...,
                           3 * sizeof...(_Np) + _Np...,
                           4 * sizeof...(_Np) + _Np...,
                           5 * sizeof...(_Np) + _Np...,
                           6 * sizeof...(_Np) + _Np...,
                           7 * sizeof...(_Np) + _Np...,
                           _Extra...> type;
};

template<size_t _Np> struct __parity;
template<size_t _Np> struct __make : __parity<_Np % 8>::template __pmake<_Np> {};

template<> struct __make<0> { typedef __integer_sequence<size_t> type; };
template<> struct __make<1> { typedef __integer_sequence<size_t, 0> type; };
template<> struct __make<2> { typedef __integer_sequence<size_t, 0, 1> type; };
template<> struct __make<3> { typedef __integer_sequence<size_t, 0, 1, 2> type; };
template<> struct __make<4> { typedef __integer_sequence<size_t, 0, 1, 2, 3> type; };
template<> struct __make<5> { typedef __integer_sequence<size_t, 0, 1, 2, 3, 4> type; };
template<> struct __make<6> { typedef __integer_sequence<size_t, 0, 1, 2, 3, 4, 5> type; };
template<> struct __make<7> { typedef __integer_sequence<size_t, 0, 1, 2, 3, 4, 5, 6> type; };

template<> struct __parity<0> { template<size_t _Np> struct __pmake : __repeat<typename __make<_Np / 8>::type> {}; };
template<> struct __parity<1> { template<size_t _Np> struct __pmake : __repeat<typename __make<_Np / 8>::type, _Np - 1> {}; };
template<> struct __parity<2> { template<size_t _Np> struct __pmake : __repeat<typename __make<_Np / 8>::type, _Np - 2, _Np - 1> {}; };
template<> struct __parity<3> { template<size_t _Np> struct __pmake : __repeat<typename __make<_Np / 8>::type, _Np - 3, _Np - 2, _Np - 1> {}; };
template<> struct __parity<4> { template<size_t _Np> struct __pmake : __repeat<typename __make<_Np / 8>::type, _Np - 4, _Np - 3, _Np - 2, _Np - 1> {}; };
template<> struct __parity<5> { template<size_t _Np> struct __pmake : __repeat<typename __make<_Np / 8>::type, _Np - 5, _Np - 4, _Np - 3, _Np - 2, _Np - 1> {}; };
template<> struct __parity<6> { template<size_t _Np> struct __pmake : __repeat<typename __make<_Np / 8>::type, _Np - 6, _Np - 5, _Np - 4, _Np - 3, _Np - 2, _Np - 1> {}; };
template<> struct __parity<7> { template<size_t _Np> struct __pmake : __repeat<typename __make<_Np / 8>::type, _Np - 7, _Np - 6, _Np - 5, _Np - 4, _Np - 3, _Np - 2, _Np - 1> {}; };

}
# 131 "/opt/intel/sgxsdk/include/libcxx/__tuple" 3
template <size_t _Ep, size_t _Sp>
using __make_indices_imp =
    typename __detail::__make<_Ep - _Sp>::type::template __to_tuple_indices<_Sp>;



template <size_t _Ep, size_t _Sp = 0>
struct __make_tuple_indices
{
    static_assert(_Sp <= _Ep, "__make_tuple_indices input error");
    typedef __make_indices_imp<_Ep, _Sp> type;
};


template <class ..._Tp> class __attribute__ ((__visibility__("default"))) tuple;

template <class... _Tp> struct __tuple_like<tuple<_Tp...> > : true_type {};

template <size_t _Ip, class ..._Tp>
__attribute__ ((__visibility__("hidden"), __always_inline__))
typename tuple_element<_Ip, tuple<_Tp...> >::type&
get(tuple<_Tp...>&) noexcept;

template <size_t _Ip, class ..._Tp>
__attribute__ ((__visibility__("hidden"), __always_inline__))
const typename tuple_element<_Ip, tuple<_Tp...> >::type&
get(const tuple<_Tp...>&) noexcept;

template <size_t _Ip, class ..._Tp>
__attribute__ ((__visibility__("hidden"), __always_inline__))
typename tuple_element<_Ip, tuple<_Tp...> >::type&&
get(tuple<_Tp...>&&) noexcept;

template <size_t _Ip, class ..._Tp>
__attribute__ ((__visibility__("hidden"), __always_inline__))
const typename tuple_element<_Ip, tuple<_Tp...> >::type&&
get(const tuple<_Tp...>&&) noexcept;




template <class _T1, class _T2> struct __tuple_like<pair<_T1, _T2> > : true_type {};

template <size_t _Ip, class _T1, class _T2>
__attribute__ ((__visibility__("hidden"), __always_inline__))
typename tuple_element<_Ip, pair<_T1, _T2> >::type&
get(pair<_T1, _T2>&) noexcept;

template <size_t _Ip, class _T1, class _T2>
__attribute__ ((__visibility__("hidden"), __always_inline__))
const typename tuple_element<_Ip, pair<_T1, _T2> >::type&
get(const pair<_T1, _T2>&) noexcept;


template <size_t _Ip, class _T1, class _T2>
__attribute__ ((__visibility__("hidden"), __always_inline__))
typename tuple_element<_Ip, pair<_T1, _T2> >::type&&
get(pair<_T1, _T2>&&) noexcept;

template <size_t _Ip, class _T1, class _T2>
__attribute__ ((__visibility__("hidden"), __always_inline__))
const typename tuple_element<_Ip, pair<_T1, _T2> >::type&&
get(const pair<_T1, _T2>&&) noexcept;




template <class _Tp, size_t _Size> struct __attribute__ ((__visibility__("default"))) array;

template <class _Tp, size_t _Size> struct __tuple_like<array<_Tp, _Size> > : true_type {};

template <size_t _Ip, class _Tp, size_t _Size>
__attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp&
get(array<_Tp, _Size>&) noexcept;

template <size_t _Ip, class _Tp, size_t _Size>
__attribute__ ((__visibility__("hidden"), __always_inline__))
const _Tp&
get(const array<_Tp, _Size>&) noexcept;


template <size_t _Ip, class _Tp, size_t _Size>
__attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp&&
get(array<_Tp, _Size>&&) noexcept;

template <size_t _Ip, class _Tp, size_t _Size>
__attribute__ ((__visibility__("hidden"), __always_inline__))
const _Tp&&
get(const array<_Tp, _Size>&&) noexcept;







template <class ..._Tp> struct __tuple_types {};



namespace __indexer_detail {

template <size_t _Idx, class _Tp>
struct __indexed { using type = _Tp; };

template <class _Types, class _Indexes> struct __indexer;

template <class ..._Types, size_t ..._Idx>
struct __indexer<__tuple_types<_Types...>, __tuple_indices<_Idx...>>
    : __indexed<_Idx, _Types>...
{};

template <size_t _Idx, class _Tp>
__indexed<_Idx, _Tp> __at_index(__indexed<_Idx, _Tp> const&);

}

template <size_t _Idx, class ..._Types>
using __type_pack_element = typename decltype(
    __indexer_detail::__at_index<_Idx>(
        __indexer_detail::__indexer<
            __tuple_types<_Types...>,
            typename __make_tuple_indices<sizeof...(_Types)>::type
        >{})
  )::type;


template <size_t _Ip, class ..._Types>
class __attribute__ ((__visibility__("default"))) tuple_element<_Ip, __tuple_types<_Types...>>
{
public:
    static_assert(_Ip < sizeof...(_Types), "tuple_element index out of range");
    typedef __type_pack_element<_Ip, _Types...> type;
};


template <class ..._Tp>
class __attribute__ ((__visibility__("default"))) tuple_size<__tuple_types<_Tp...> >
    : public integral_constant<size_t, sizeof...(_Tp)>
{
};

template <class... _Tp> struct __tuple_like<__tuple_types<_Tp...> > : true_type {};

template <bool _ApplyLV, bool _ApplyConst, bool _ApplyVolatile>
struct __apply_cv_mf;
template <>
struct __apply_cv_mf<false, false, false> {
  template <class _Tp> using __apply = _Tp;
};
template <>
struct __apply_cv_mf<false, true, false> {
  template <class _Tp> using __apply = const _Tp;
};
template <>
struct __apply_cv_mf<false, false, true> {
  template <class _Tp> using __apply = volatile _Tp;
};
template <>
struct __apply_cv_mf<false, true, true> {
  template <class _Tp> using __apply = const volatile _Tp;
};
template <>
struct __apply_cv_mf<true, false, false> {
  template <class _Tp> using __apply = _Tp&;
};
template <>
struct __apply_cv_mf<true, true, false> {
  template <class _Tp> using __apply = const _Tp&;
};
template <>
struct __apply_cv_mf<true, false, true> {
  template <class _Tp> using __apply = volatile _Tp&;
};
template <>
struct __apply_cv_mf<true, true, true> {
  template <class _Tp> using __apply = const volatile _Tp&;
};
template <class _Tp, class _RawTp = typename remove_reference<_Tp>::type>
using __apply_cv_t = __apply_cv_mf<
    is_lvalue_reference<_Tp>::value,
    is_const<_RawTp>::value,
    is_volatile<_RawTp>::value>;
# 324 "/opt/intel/sgxsdk/include/libcxx/__tuple" 3
template <class _TupleTypes, class _TupleIndices>
struct __make_tuple_types_flat;

template <template <class...> class _Tuple, class ..._Types, size_t ..._Idx>
struct __make_tuple_types_flat<_Tuple<_Types...>, __tuple_indices<_Idx...>> {

  template <class _Tp, class _ApplyFn = __apply_cv_t<_Tp>>
  using __apply_quals = __tuple_types<
      typename _ApplyFn::template __apply<__type_pack_element<_Idx, _Types...>>...
    >;
};

template <class _Vt, size_t _Np, size_t ..._Idx>
struct __make_tuple_types_flat<array<_Vt, _Np>, __tuple_indices<_Idx...>> {
  template <size_t>
  using __value_type = _Vt;
  template <class _Tp, class _ApplyFn = __apply_cv_t<_Tp>>
  using __apply_quals = __tuple_types<
      typename _ApplyFn::template __apply<__value_type<_Idx>>...
    >;
};

template <class _Tp, size_t _Ep = tuple_size<typename remove_reference<_Tp>::type>::value,
          size_t _Sp = 0,
          bool _SameSize = (_Ep == tuple_size<typename remove_reference<_Tp>::type>::value)>
struct __make_tuple_types
{
    static_assert(_Sp <= _Ep, "__make_tuple_types input error");
    using _RawTp = typename remove_cv<typename remove_reference<_Tp>::type>::type;
    using _Maker = __make_tuple_types_flat<_RawTp, typename __make_tuple_indices<_Ep, _Sp>::type>;
    using type = typename _Maker::template __apply_quals<_Tp>;
};

template <class ..._Types, size_t _Ep>
struct __make_tuple_types<tuple<_Types...>, _Ep, 0, true> {
  typedef __tuple_types<_Types...> type;
};

template <class ..._Types, size_t _Ep>
struct __make_tuple_types<__tuple_types<_Types...>, _Ep, 0, true> {
  typedef __tuple_types<_Types...> type;
};

template <bool ..._Preds>
struct __all_dummy;

template <bool ..._Pred>
using __all = is_same<__all_dummy<_Pred...>, __all_dummy<(_Pred, true)...>>;

struct __tuple_sfinae_base {
  template <template <class, class...> class _Trait,
            class ..._LArgs, class ..._RArgs>
  static auto __do_test(__tuple_types<_LArgs...>, __tuple_types<_RArgs...>)
    -> __all<typename enable_if<_Trait<_LArgs, _RArgs>::value, bool>::type{true}...>;
  template <template <class...> class>
  static auto __do_test(...) -> false_type;

  template <class _FromArgs, class _ToArgs>
  using __constructible = decltype(__do_test<is_constructible>(_ToArgs{}, _FromArgs{}));
  template <class _FromArgs, class _ToArgs>
  using __convertible = decltype(__do_test<is_convertible>(_FromArgs{}, _ToArgs{}));
  template <class _FromArgs, class _ToArgs>
  using __assignable = decltype(__do_test<is_assignable>(_ToArgs{}, _FromArgs{}));
};



template <class _Tp, class _Up, bool = __tuple_like<typename remove_reference<_Tp>::type>::value,
                                bool = __tuple_like<_Up>::value>
struct __tuple_convertible
    : public false_type {};

template <class _Tp, class _Up>
struct __tuple_convertible<_Tp, _Up, true, true>
    : public __tuple_sfinae_base::__convertible<
      typename __make_tuple_types<_Tp>::type
    , typename __make_tuple_types<_Up>::type
    >
{};



template <class _Tp, class _Up, bool = __tuple_like<typename remove_reference<_Tp>::type>::value,
                                bool = __tuple_like<_Up>::value>
struct __tuple_constructible
    : public false_type {};

template <class _Tp, class _Up>
struct __tuple_constructible<_Tp, _Up, true, true>
    : public __tuple_sfinae_base::__constructible<
      typename __make_tuple_types<_Tp>::type
    , typename __make_tuple_types<_Up>::type
    >
{};



template <class _Tp, class _Up, bool = __tuple_like<typename remove_reference<_Tp>::type>::value,
                                bool = __tuple_like<_Up>::value>
struct __tuple_assignable
    : public false_type {};

template <class _Tp, class _Up>
struct __tuple_assignable<_Tp, _Up, true, true>
    : public __tuple_sfinae_base::__assignable<
      typename __make_tuple_types<_Tp>::type
    , typename __make_tuple_types<_Up&>::type
    >
{};



} }
# 180 "/opt/intel/sgxsdk/include/libcxx/utility" 2




       
# 185 "/opt/intel/sgxsdk/include/libcxx/utility" 3


namespace std { inline namespace __1 {

namespace rel_ops
{

template<class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator!=(const _Tp& __x, const _Tp& __y)
{
    return !(__x == __y);
}

template<class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator> (const _Tp& __x, const _Tp& __y)
{
    return __y < __x;
}

template<class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<=(const _Tp& __x, const _Tp& __y)
{
    return !(__y < __x);
}

template<class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>=(const _Tp& __x, const _Tp& __y)
{
    return !(__x < __y);
}

}




template <class _ForwardIterator1, class _ForwardIterator2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ForwardIterator2
swap_ranges(_ForwardIterator1 __first1, _ForwardIterator1 __last1, _ForwardIterator2 __first2)
{
    for(; __first1 != __last1; ++__first1, (void) ++__first2)
        swap(*__first1, *__first2);
    return __first2;
}


template<class _Tp, size_t _Np>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if<
    __is_swappable<_Tp>::value
>::type
swap(_Tp (&__a)[_Np], _Tp (&__b)[_Np]) noexcept(__is_nothrow_swappable<_Tp>::value)
{
    std::__1::swap_ranges(__a, __a + _Np, __b);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))

typename conditional
<
    !is_nothrow_move_constructible<_Tp>::value && is_copy_constructible<_Tp>::value,
    const _Tp&,
    _Tp&&
>::type



move_if_noexcept(_Tp& __x) noexcept
{
    return std::__1::move(__x);
}






struct __attribute__ ((__visibility__("default"))) piecewise_construct_t { };



constexpr piecewise_construct_t piecewise_construct = piecewise_construct_t();


template <class _T1, class _T2>
struct __attribute__ ((__visibility__("default"))) pair
{
    typedef _T1 first_type;
    typedef _T2 second_type;

    _T1 first;
    _T2 second;


    template <bool _Dummy = true, class = typename enable_if<
        __dependent_type<is_default_constructible<_T1>, _Dummy>::value &&
        __dependent_type<is_default_constructible<_T2>, _Dummy>::value
      >::type>

    __attribute__ ((__visibility__("hidden"), __always_inline__)) constexpr pair() : first(), second() {}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    pair(const _T1& __x, const _T2& __y)
        : first(__x), second(__y) {}

    template<class _U1, class _U2>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        pair(const pair<_U1, _U2>& __p

                 ,typename enable_if<is_convertible<const _U1&, _T1>::value &&
                                    is_convertible<const _U2&, _T2>::value>::type* = 0

                                      )
            : first(__p.first), second(__p.second) {}
# 330 "/opt/intel/sgxsdk/include/libcxx/utility" 3
    pair(pair const&) = default;
    pair(pair&&) = default;




    __attribute__ ((__visibility__("hidden"), __always_inline__))
    pair& operator=(const pair& __p)
        noexcept(is_nothrow_copy_assignable<first_type>::value && is_nothrow_copy_assignable<second_type>::value)

    {
        first = __p.first;
        second = __p.second;
        return *this;
    }



    template <class _U1, class _U2,
              class = typename enable_if<is_convertible<_U1, first_type>::value &&
                                         is_convertible<_U2, second_type>::value>::type>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        pair(_U1&& __u1, _U2&& __u2)
            : first(std::__1::forward<_U1>(__u1)),
              second(std::__1::forward<_U2>(__u2))
            {}

    template<class _U1, class _U2>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        pair(pair<_U1, _U2>&& __p,
                 typename enable_if<is_convertible<_U1, _T1>::value &&
                                    is_convertible<_U2, _T2>::value>::type* = 0)
            : first(std::__1::forward<_U1>(__p.first)),
              second(std::__1::forward<_U2>(__p.second)) {}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    pair&
    operator=(pair&& __p) noexcept(is_nothrow_move_assignable<first_type>::value && is_nothrow_move_assignable<second_type>::value)

    {
        first = std::__1::forward<first_type>(__p.first);
        second = std::__1::forward<second_type>(__p.second);
        return *this;
    }



    template<class _Tuple,
             class = typename enable_if<__tuple_convertible<_Tuple, pair>::value>::type>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        pair(_Tuple&& __p)
            : first(std::__1::forward<typename tuple_element<0,
                                  typename __make_tuple_types<_Tuple>::type>::type>(std::__1::get<0>(__p))),
              second(std::__1::forward<typename tuple_element<1,
                                   typename __make_tuple_types<_Tuple>::type>::type>(std::__1::get<1>(__p)))
            {}



    template <class... _Args1, class... _Args2>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        pair(piecewise_construct_t __pc, tuple<_Args1...> __first_args,
                                    tuple<_Args2...> __second_args)
            : pair(__pc, __first_args, __second_args,
                   typename __make_tuple_indices<sizeof...(_Args1)>::type(),
                   typename __make_tuple_indices<sizeof...(_Args2) >::type())
            {}

    template <class _Tuple,
              class = typename enable_if<__tuple_assignable<_Tuple, pair>::value>::type>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        pair&
        operator=(_Tuple&& __p)
        {
            typedef typename __make_tuple_types<_Tuple>::type _TupleRef;
            typedef typename tuple_element<0, _TupleRef>::type _U0;
            typedef typename tuple_element<1, _TupleRef>::type _U1;
            first = std::__1::forward<_U0>(std::__1::get<0>(__p));
            second = std::__1::forward<_U1>(std::__1::get<1>(__p));
            return *this;
        }




    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void
    swap(pair& __p) noexcept(__is_nothrow_swappable<first_type>::value && __is_nothrow_swappable<second_type>::value)

    {
        using std::__1::swap;
        swap(first, __p.first);
        swap(second, __p.second);
    }
private:


    template <class... _Args1, class... _Args2, size_t... _I1, size_t... _I2>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        pair(piecewise_construct_t,
             tuple<_Args1...>& __first_args, tuple<_Args2...>& __second_args,
             __tuple_indices<_I1...>, __tuple_indices<_I2...>);

};

template <class _T1, class _T2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator==(const pair<_T1,_T2>& __x, const pair<_T1,_T2>& __y)
{
    return __x.first == __y.first && __x.second == __y.second;
}

template <class _T1, class _T2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator!=(const pair<_T1,_T2>& __x, const pair<_T1,_T2>& __y)
{
    return !(__x == __y);
}

template <class _T1, class _T2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator< (const pair<_T1,_T2>& __x, const pair<_T1,_T2>& __y)
{
    return __x.first < __y.first || (!(__y.first < __x.first) && __x.second < __y.second);
}

template <class _T1, class _T2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator> (const pair<_T1,_T2>& __x, const pair<_T1,_T2>& __y)
{
    return __y < __x;
}

template <class _T1, class _T2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>=(const pair<_T1,_T2>& __x, const pair<_T1,_T2>& __y)
{
    return !(__x < __y);
}

template <class _T1, class _T2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<=(const pair<_T1,_T2>& __x, const pair<_T1,_T2>& __y)
{
    return !(__y < __x);
}

template <class _T1, class _T2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    __is_swappable<_T1>::value &&
    __is_swappable<_T2>::value,
    void
>::type
swap(pair<_T1, _T2>& __x, pair<_T1, _T2>& __y)
                     noexcept((__is_nothrow_swappable<_T1>::value && __is_nothrow_swappable<_T2>::value))

{
    __x.swap(__y);
}




template <class _Tp>
struct __make_pair_return_impl
{
    typedef _Tp type;
};

template <class _Tp>
struct __make_pair_return_impl<reference_wrapper<_Tp>>
{
    typedef _Tp& type;
};

template <class _Tp>
struct __make_pair_return
{
    typedef typename __make_pair_return_impl<typename decay<_Tp>::type>::type type;
};

template <class _T1, class _T2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
pair<typename __make_pair_return<_T1>::type, typename __make_pair_return<_T2>::type>
make_pair(_T1&& __t1, _T2&& __t2)
{
    return pair<typename __make_pair_return<_T1>::type, typename __make_pair_return<_T2>::type>
               (std::__1::forward<_T1>(__t1), std::__1::forward<_T2>(__t2));
}
# 540 "/opt/intel/sgxsdk/include/libcxx/utility" 3
template <class _T1, class _T2>
  class __attribute__ ((__visibility__("default"))) tuple_size<pair<_T1, _T2> >
    : public integral_constant<size_t, 2> {};

template <class _T1, class _T2>
class __attribute__ ((__visibility__("default"))) tuple_element<0, pair<_T1, _T2> >
{
public:
    typedef _T1 type;
};

template <class _T1, class _T2>
class __attribute__ ((__visibility__("default"))) tuple_element<1, pair<_T1, _T2> >
{
public:
    typedef _T2 type;
};

template <size_t _Ip> struct __get_pair;

template <>
struct __get_pair<0>
{
    template <class _T1, class _T2>
    static
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _T1&
    get(pair<_T1, _T2>& __p) noexcept {return __p.first;}

    template <class _T1, class _T2>
    static
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    const _T1&
    get(const pair<_T1, _T2>& __p) noexcept {return __p.first;}



    template <class _T1, class _T2>
    static
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _T1&&
    get(pair<_T1, _T2>&& __p) noexcept {return std::__1::forward<_T1>(__p.first);}

    template <class _T1, class _T2>
    static
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    const _T1&&
    get(const pair<_T1, _T2>&& __p) noexcept {return std::__1::forward<const _T1>(__p.first);}


};

template <>
struct __get_pair<1>
{
    template <class _T1, class _T2>
    static
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _T2&
    get(pair<_T1, _T2>& __p) noexcept {return __p.second;}

    template <class _T1, class _T2>
    static
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    const _T2&
    get(const pair<_T1, _T2>& __p) noexcept {return __p.second;}



    template <class _T1, class _T2>
    static
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _T2&&
    get(pair<_T1, _T2>&& __p) noexcept {return std::__1::forward<_T2>(__p.second);}

    template <class _T1, class _T2>
    static
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    const _T2&&
    get(const pair<_T1, _T2>&& __p) noexcept {return std::__1::forward<const _T2>(__p.second);}


};

template <size_t _Ip, class _T1, class _T2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename tuple_element<_Ip, pair<_T1, _T2> >::type&
get(pair<_T1, _T2>& __p) noexcept
{
    return __get_pair<_Ip>::get(__p);
}

template <size_t _Ip, class _T1, class _T2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
const typename tuple_element<_Ip, pair<_T1, _T2> >::type&
get(const pair<_T1, _T2>& __p) noexcept
{
    return __get_pair<_Ip>::get(__p);
}



template <size_t _Ip, class _T1, class _T2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename tuple_element<_Ip, pair<_T1, _T2> >::type&&
get(pair<_T1, _T2>&& __p) noexcept
{
    return __get_pair<_Ip>::get(std::__1::move(__p));
}

template <size_t _Ip, class _T1, class _T2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
const typename tuple_element<_Ip, pair<_T1, _T2> >::type&&
get(const pair<_T1, _T2>&& __p) noexcept
{
    return __get_pair<_Ip>::get(std::__1::move(__p));
}
# 785 "/opt/intel/sgxsdk/include/libcxx/utility" 3
} }
# 634 "/opt/intel/sgxsdk/include/libcxx/algorithm" 2
# 1 "/opt/intel/sgxsdk/include/libcxx/memory" 1
# 601 "/opt/intel/sgxsdk/include/libcxx/memory"
# 1 "/opt/intel/sgxsdk/include/libcxx/typeinfo" 1
# 61 "/opt/intel/sgxsdk/include/libcxx/typeinfo"
# 1 "/opt/intel/sgxsdk/include/libcxx/exception" 1
# 82 "/opt/intel/sgxsdk/include/libcxx/exception"
# 1 "/opt/intel/sgxsdk/include/tlibc/../stdc++/exception" 1
# 35 "/opt/intel/sgxsdk/include/tlibc/../stdc++/exception"
# 1 "/opt/intel/sgxsdk/include/sgx_defs.h" 1
# 36 "/opt/intel/sgxsdk/include/tlibc/../stdc++/exception" 2
# 1 "/opt/intel/sgxsdk/include/stdc++/linux/exception" 1
# 31 "/opt/intel/sgxsdk/include/stdc++/linux/exception"

# 31 "/opt/intel/sgxsdk/include/stdc++/linux/exception"
namespace std
{
 class exception
 {
 public:
  exception() throw();
  exception(const exception&) throw();
  exception& operator=(const exception&) throw();
  virtual ~exception();
  virtual const char* what() const throw();
 };




 class bad_alloc: public exception
 {
 public:
  bad_alloc() throw();
  bad_alloc(const bad_alloc&) throw();
  bad_alloc& operator=(const bad_alloc&) throw();
  ~bad_alloc();
  virtual const char* what() const throw();
 };

    class bad_exception : public exception
    {
    public:
        bad_exception() throw();
        virtual ~bad_exception() throw();
        virtual const char* what() const throw();
    };

    bool uncaught_exception() throw();

    typedef void (*unexpected_handler)();
    unexpected_handler set_unexpected(unexpected_handler) throw();
    void unexpected();

    typedef void (*terminate_handler)();
    terminate_handler set_terminate(terminate_handler) throw();
    void terminate();

}
# 37 "/opt/intel/sgxsdk/include/tlibc/../stdc++/exception" 2
# 83 "/opt/intel/sgxsdk/include/libcxx/exception" 2
# 62 "/opt/intel/sgxsdk/include/libcxx/typeinfo" 2

# 1 "/opt/intel/sgxsdk/include/libcxx/cstdint" 1
# 148 "/opt/intel/sgxsdk/include/libcxx/cstdint"
       
# 149 "/opt/intel/sgxsdk/include/libcxx/cstdint" 3



# 151 "/opt/intel/sgxsdk/include/libcxx/cstdint" 3
namespace std { inline namespace __1 {

using::int8_t;
using::int16_t;
using::int32_t;
using::int64_t;

using::uint8_t;
using::uint16_t;
using::uint32_t;
using::uint64_t;

using::int_least8_t;
using::int_least16_t;
using::int_least32_t;
using::int_least64_t;

using::uint_least8_t;
using::uint_least16_t;
using::uint_least32_t;
using::uint_least64_t;

using::int_fast8_t;
using::int_fast16_t;
using::int_fast32_t;
using::int_fast64_t;

using::uint_fast8_t;
using::uint_fast16_t;
using::uint_fast32_t;
using::uint_fast64_t;

using::intptr_t;
using::uintptr_t;

using::intmax_t;
using::uintmax_t;

} }
# 64 "/opt/intel/sgxsdk/include/libcxx/typeinfo" 2


       
# 67 "/opt/intel/sgxsdk/include/libcxx/typeinfo" 3


namespace std
{

class __attribute__ ((__visibility__("default"))) type_info
{
    type_info& operator=(const type_info&);
    type_info(const type_info&);
protected:

    const char* __type_name;





    __attribute__ ((__visibility__("hidden"), __always_inline__))
    explicit type_info(const char* __n)

        : __type_name(__n) {}




public:
    virtual ~type_info();

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    const char* name() const noexcept

        {return __type_name;}




    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool before(const type_info& __arg) const noexcept

        {return __type_name < __arg.__type_name;}






    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_t hash_code() const noexcept

        {return *reinterpret_cast<const size_t*>(&__type_name);}
# 126 "/opt/intel/sgxsdk/include/libcxx/typeinfo" 3
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator==(const type_info& __arg) const noexcept

        {return __type_name == __arg.__type_name;}






    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator!=(const type_info& __arg) const noexcept
        {return !operator==(__arg);}







};

class __attribute__ ((__visibility__("default"))) bad_cast
    : public exception
{
public:
    bad_cast() noexcept;
    virtual ~bad_cast() noexcept;
    virtual const char* what() const noexcept;
};

class __attribute__ ((__visibility__("default"))) bad_typeid
    : public exception
{
public:
    bad_typeid() noexcept;
    virtual ~bad_typeid() noexcept;
    virtual const char* what() const noexcept;
};

}
# 602 "/opt/intel/sgxsdk/include/libcxx/memory" 2


# 1 "/opt/intel/sgxsdk/include/libcxx/new" 1
# 72 "/opt/intel/sgxsdk/include/libcxx/new"
# 1 "/opt/intel/sgxsdk/include/tlibc/../stdc++/new" 1
# 40 "/opt/intel/sgxsdk/include/tlibc/../stdc++/new"

# 40 "/opt/intel/sgxsdk/include/tlibc/../stdc++/new"
namespace std
{
    typedef void (*new_handler)();

 struct nothrow_t {};
 const nothrow_t nothrow = {};





 new_handler set_new_handler(new_handler handler);
};

void* operator new (size_t);
void* operator new[] (size_t);

void* operator new (size_t, const std::nothrow_t&);
void* operator new (size_t, void*);
void* operator new[] (size_t, const std::nothrow_t&);
void* operator new[] (size_t, void*);

void operator delete (void*);
void operator delete (void*, const std::nothrow_t&);
void operator delete (void*, void*);
void operator delete[] (void*);
void operator delete[] (void*, const std::nothrow_t&);
void operator delete[] (void*, void*);
# 73 "/opt/intel/sgxsdk/include/libcxx/new" 2





# 1 "/opt/intel/sgxsdk/include/libcxx/__undef___deallocate" 1
# 79 "/opt/intel/sgxsdk/include/libcxx/new" 2
# 170 "/opt/intel/sgxsdk/include/libcxx/new"

# 170 "/opt/intel/sgxsdk/include/libcxx/new" 3
namespace std { inline namespace __1 {


# 172 "/opt/intel/sgxsdk/include/libcxx/new"
inline 
# 172 "/opt/intel/sgxsdk/include/libcxx/new" 3
      __attribute__ ((__visibility__("hidden"), __always_inline__)) 
# 172 "/opt/intel/sgxsdk/include/libcxx/new"
                                void *__allocate(size_t __size) {

  return ::operator new(__size);



}

inline 
# 180 "/opt/intel/sgxsdk/include/libcxx/new" 3
      __attribute__ ((__visibility__("hidden"), __always_inline__)) 
# 180 "/opt/intel/sgxsdk/include/libcxx/new"
                                void __deallocate(void *__ptr) {

  ::operator delete(__ptr);



}


# 188 "/opt/intel/sgxsdk/include/libcxx/new" 3
} }
# 605 "/opt/intel/sgxsdk/include/libcxx/memory" 2

# 1 "/opt/intel/sgxsdk/include/libcxx/limits" 1
# 106 "/opt/intel/sgxsdk/include/libcxx/limits"
       
# 107 "/opt/intel/sgxsdk/include/libcxx/limits" 3





# 1 "/opt/intel/sgxsdk/include/libcxx/__undef_min_max" 1 3
# 113 "/opt/intel/sgxsdk/include/libcxx/limits" 2 3
# 122 "/opt/intel/sgxsdk/include/libcxx/limits" 3
namespace std { inline namespace __1 {

enum float_round_style
{
    round_indeterminate = -1,
    round_toward_zero = 0,
    round_to_nearest = 1,
    round_toward_infinity = 2,
    round_toward_neg_infinity = 3
};

enum float_denorm_style
{
    denorm_indeterminate = -1,
    denorm_absent = 0,
    denorm_present = 1
};

template <class _Tp, bool = is_arithmetic<_Tp>::value>
class __libcpp_numeric_limits
{
protected:
    typedef _Tp type;

    static constexpr const bool is_specialized = false;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type min() noexcept {return type();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type max() noexcept {return type();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type lowest() noexcept {return type();}

    static constexpr const int digits = 0;
    static constexpr const int digits10 = 0;
    static constexpr const int max_digits10 = 0;
    static constexpr const bool is_signed = false;
    static constexpr const bool is_integer = false;
    static constexpr const bool is_exact = false;
    static constexpr const int radix = 0;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type epsilon() noexcept {return type();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type round_error() noexcept {return type();}

    static constexpr const int min_exponent = 0;
    static constexpr const int min_exponent10 = 0;
    static constexpr const int max_exponent = 0;
    static constexpr const int max_exponent10 = 0;

    static constexpr const bool has_infinity = false;
    static constexpr const bool has_quiet_NaN = false;
    static constexpr const bool has_signaling_NaN = false;
    static constexpr const float_denorm_style has_denorm = denorm_absent;
    static constexpr const bool has_denorm_loss = false;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type infinity() noexcept {return type();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type quiet_NaN() noexcept {return type();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type signaling_NaN() noexcept {return type();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type denorm_min() noexcept {return type();}

    static constexpr const bool is_iec559 = false;
    static constexpr const bool is_bounded = false;
    static constexpr const bool is_modulo = false;

    static constexpr const bool traps = false;
    static constexpr const bool tinyness_before = false;
    static constexpr const float_round_style round_style = round_toward_zero;
};

template <class _Tp, int digits, bool is_signed>
struct __libcpp_compute_min
{
    static constexpr const _Tp value = _Tp(_Tp(1) << digits);
};

template <class _Tp, int digits>
struct __libcpp_compute_min<_Tp, digits, false>
{
    static constexpr const _Tp value = _Tp(0);
};

template <class _Tp>
class __libcpp_numeric_limits<_Tp, true>
{
protected:
    typedef _Tp type;

    static constexpr const bool is_specialized = true;

    static constexpr const bool is_signed = type(-1) < type(0);
    static constexpr const int digits = static_cast<int>(sizeof(type) * 8 - is_signed);
    static constexpr const int digits10 = digits * 3 / 10;
    static constexpr const int max_digits10 = 0;
    static constexpr const type __min = __libcpp_compute_min<type, digits, is_signed>::value;
    static constexpr const type __max = is_signed ? type(type(~0) ^ __min) : type(~0);
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type min() noexcept {return __min;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type max() noexcept {return __max;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type lowest() noexcept {return min();}

    static constexpr const bool is_integer = true;
    static constexpr const bool is_exact = true;
    static constexpr const int radix = 2;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type epsilon() noexcept {return type(0);}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type round_error() noexcept {return type(0);}

    static constexpr const int min_exponent = 0;
    static constexpr const int min_exponent10 = 0;
    static constexpr const int max_exponent = 0;
    static constexpr const int max_exponent10 = 0;

    static constexpr const bool has_infinity = false;
    static constexpr const bool has_quiet_NaN = false;
    static constexpr const bool has_signaling_NaN = false;
    static constexpr const float_denorm_style has_denorm = denorm_absent;
    static constexpr const bool has_denorm_loss = false;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type infinity() noexcept {return type(0);}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type quiet_NaN() noexcept {return type(0);}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type signaling_NaN() noexcept {return type(0);}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type denorm_min() noexcept {return type(0);}

    static constexpr const bool is_iec559 = false;
    static constexpr const bool is_bounded = true;
    static constexpr const bool is_modulo = !std::__1::is_signed<_Tp>::value;



    static constexpr const bool traps = true;



    static constexpr const bool tinyness_before = false;
    static constexpr const float_round_style round_style = round_toward_zero;
};

template <>
class __libcpp_numeric_limits<bool, true>
{
protected:
    typedef bool type;

    static constexpr const bool is_specialized = true;

    static constexpr const bool is_signed = false;
    static constexpr const int digits = 1;
    static constexpr const int digits10 = 0;
    static constexpr const int max_digits10 = 0;
    static constexpr const type __min = false;
    static constexpr const type __max = true;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type min() noexcept {return __min;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type max() noexcept {return __max;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type lowest() noexcept {return min();}

    static constexpr const bool is_integer = true;
    static constexpr const bool is_exact = true;
    static constexpr const int radix = 2;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type epsilon() noexcept {return type(0);}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type round_error() noexcept {return type(0);}

    static constexpr const int min_exponent = 0;
    static constexpr const int min_exponent10 = 0;
    static constexpr const int max_exponent = 0;
    static constexpr const int max_exponent10 = 0;

    static constexpr const bool has_infinity = false;
    static constexpr const bool has_quiet_NaN = false;
    static constexpr const bool has_signaling_NaN = false;
    static constexpr const float_denorm_style has_denorm = denorm_absent;
    static constexpr const bool has_denorm_loss = false;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type infinity() noexcept {return type(0);}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type quiet_NaN() noexcept {return type(0);}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type signaling_NaN() noexcept {return type(0);}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type denorm_min() noexcept {return type(0);}

    static constexpr const bool is_iec559 = false;
    static constexpr const bool is_bounded = true;
    static constexpr const bool is_modulo = false;

    static constexpr const bool traps = false;
    static constexpr const bool tinyness_before = false;
    static constexpr const float_round_style round_style = round_toward_zero;
};

template <>
class __libcpp_numeric_limits<float, true>
{
protected:
    typedef float type;

    static constexpr const bool is_specialized = true;

    static constexpr const bool is_signed = true;
    static constexpr const int digits = 24;
    static constexpr const int digits10 = 6;
    static constexpr const int max_digits10 = 2+(digits * 30103)/100000;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type min() noexcept {return 1.17549435082228750796873653722224568e-38F;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type max() noexcept {return 3.40282346638528859811704183484516925e+38F;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type lowest() noexcept {return -max();}

    static constexpr const bool is_integer = false;
    static constexpr const bool is_exact = false;
    static constexpr const int radix = 2;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type epsilon() noexcept {return 1.19209289550781250000000000000000000e-7F;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type round_error() noexcept {return 0.5F;}

    static constexpr const int min_exponent = (-125);
    static constexpr const int min_exponent10 = (-37);
    static constexpr const int max_exponent = 128;
    static constexpr const int max_exponent10 = 38;

    static constexpr const bool has_infinity = true;
    static constexpr const bool has_quiet_NaN = true;
    static constexpr const bool has_signaling_NaN = true;
    static constexpr const float_denorm_style has_denorm = denorm_present;
    static constexpr const bool has_denorm_loss = false;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type infinity() noexcept {return __builtin_huge_valf();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type quiet_NaN() noexcept {return __builtin_nanf("");}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type signaling_NaN() noexcept {return __builtin_nansf("");}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type denorm_min() noexcept {return 1.40129846432481707092372958328991613e-45F;}

    static constexpr const bool is_iec559 = true;
    static constexpr const bool is_bounded = true;
    static constexpr const bool is_modulo = false;

    static constexpr const bool traps = false;
    static constexpr const bool tinyness_before = false;
    static constexpr const float_round_style round_style = round_to_nearest;
};

template <>
class __libcpp_numeric_limits<double, true>
{
protected:
    typedef double type;

    static constexpr const bool is_specialized = true;

    static constexpr const bool is_signed = true;
    static constexpr const int digits = 53;
    static constexpr const int digits10 = 15;
    static constexpr const int max_digits10 = 2+(digits * 30103)/100000;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type min() noexcept {return double(2.22507385850720138309023271733240406e-308L);}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type max() noexcept {return double(1.79769313486231570814527423731704357e+308L);}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type lowest() noexcept {return -max();}

    static constexpr const bool is_integer = false;
    static constexpr const bool is_exact = false;
    static constexpr const int radix = 2;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type epsilon() noexcept {return double(2.22044604925031308084726333618164062e-16L);}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type round_error() noexcept {return 0.5;}

    static constexpr const int min_exponent = (-1021);
    static constexpr const int min_exponent10 = (-307);
    static constexpr const int max_exponent = 1024;
    static constexpr const int max_exponent10 = 308;

    static constexpr const bool has_infinity = true;
    static constexpr const bool has_quiet_NaN = true;
    static constexpr const bool has_signaling_NaN = true;
    static constexpr const float_denorm_style has_denorm = denorm_present;
    static constexpr const bool has_denorm_loss = false;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type infinity() noexcept {return __builtin_huge_val();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type quiet_NaN() noexcept {return __builtin_nan("");}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type signaling_NaN() noexcept {return __builtin_nans("");}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type denorm_min() noexcept {return double(4.94065645841246544176568792868221372e-324L);}

    static constexpr const bool is_iec559 = true;
    static constexpr const bool is_bounded = true;
    static constexpr const bool is_modulo = false;

    static constexpr const bool traps = false;
    static constexpr const bool tinyness_before = false;
    static constexpr const float_round_style round_style = round_to_nearest;
};

template <>
class __libcpp_numeric_limits<long double, true>
{
protected:
    typedef long double type;

    static constexpr const bool is_specialized = true;

    static constexpr const bool is_signed = true;
    static constexpr const int digits = 64;
    static constexpr const int digits10 = 18;
    static constexpr const int max_digits10 = 2+(digits * 30103)/100000;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type min() noexcept {return 3.36210314311209350626267781732175260e-4932L;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type max() noexcept {return 1.18973149535723176502126385303097021e+4932L;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type lowest() noexcept {return -max();}

    static constexpr const bool is_integer = false;
    static constexpr const bool is_exact = false;
    static constexpr const int radix = 2;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type epsilon() noexcept {return 1.08420217248550443400745280086994171e-19L;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type round_error() noexcept {return 0.5;}

    static constexpr const int min_exponent = (-16381);
    static constexpr const int min_exponent10 = (-4931);
    static constexpr const int max_exponent = 16384;
    static constexpr const int max_exponent10 = 4932;

    static constexpr const bool has_infinity = true;
    static constexpr const bool has_quiet_NaN = true;
    static constexpr const bool has_signaling_NaN = true;
    static constexpr const float_denorm_style has_denorm = denorm_present;
    static constexpr const bool has_denorm_loss = false;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type infinity() noexcept {return __builtin_huge_vall();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type quiet_NaN() noexcept {return __builtin_nanl("");}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type signaling_NaN() noexcept {return __builtin_nansl("");}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type denorm_min() noexcept {return 3.64519953188247460252840593361941982e-4951L;}




    static constexpr const bool is_iec559 = true;

    static constexpr const bool is_bounded = true;
    static constexpr const bool is_modulo = false;

    static constexpr const bool traps = false;
    static constexpr const bool tinyness_before = false;
    static constexpr const float_round_style round_style = round_to_nearest;
};

template <class _Tp>
class __attribute__ ((__visibility__("default"))) numeric_limits
    : private __libcpp_numeric_limits<typename remove_cv<_Tp>::type>
{
    typedef __libcpp_numeric_limits<typename remove_cv<_Tp>::type> __base;
    typedef typename __base::type type;
public:
    static constexpr const bool is_specialized = __base::is_specialized;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type min() noexcept {return __base::min();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type max() noexcept {return __base::max();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type lowest() noexcept {return __base::lowest();}

    static constexpr const int digits = __base::digits;
    static constexpr const int digits10 = __base::digits10;
    static constexpr const int max_digits10 = __base::max_digits10;
    static constexpr const bool is_signed = __base::is_signed;
    static constexpr const bool is_integer = __base::is_integer;
    static constexpr const bool is_exact = __base::is_exact;
    static constexpr const int radix = __base::radix;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type epsilon() noexcept {return __base::epsilon();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type round_error() noexcept {return __base::round_error();}

    static constexpr const int min_exponent = __base::min_exponent;
    static constexpr const int min_exponent10 = __base::min_exponent10;
    static constexpr const int max_exponent = __base::max_exponent;
    static constexpr const int max_exponent10 = __base::max_exponent10;

    static constexpr const bool has_infinity = __base::has_infinity;
    static constexpr const bool has_quiet_NaN = __base::has_quiet_NaN;
    static constexpr const bool has_signaling_NaN = __base::has_signaling_NaN;
    static constexpr const float_denorm_style has_denorm = __base::has_denorm;
    static constexpr const bool has_denorm_loss = __base::has_denorm_loss;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type infinity() noexcept {return __base::infinity();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type quiet_NaN() noexcept {return __base::quiet_NaN();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type signaling_NaN() noexcept {return __base::signaling_NaN();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type denorm_min() noexcept {return __base::denorm_min();}

    static constexpr const bool is_iec559 = __base::is_iec559;
    static constexpr const bool is_bounded = __base::is_bounded;
    static constexpr const bool is_modulo = __base::is_modulo;

    static constexpr const bool traps = __base::traps;
    static constexpr const bool tinyness_before = __base::tinyness_before;
    static constexpr const float_round_style round_style = __base::round_style;
};

template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::is_specialized;
template <class _Tp>
    constexpr const int numeric_limits<_Tp>::digits;
template <class _Tp>
    constexpr const int numeric_limits<_Tp>::digits10;
template <class _Tp>
    constexpr const int numeric_limits<_Tp>::max_digits10;
template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::is_signed;
template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::is_integer;
template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::is_exact;
template <class _Tp>
    constexpr const int numeric_limits<_Tp>::radix;
template <class _Tp>
    constexpr const int numeric_limits<_Tp>::min_exponent;
template <class _Tp>
    constexpr const int numeric_limits<_Tp>::min_exponent10;
template <class _Tp>
    constexpr const int numeric_limits<_Tp>::max_exponent;
template <class _Tp>
    constexpr const int numeric_limits<_Tp>::max_exponent10;
template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::has_infinity;
template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::has_quiet_NaN;
template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::has_signaling_NaN;
template <class _Tp>
    constexpr const float_denorm_style numeric_limits<_Tp>::has_denorm;
template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::has_denorm_loss;
template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::is_iec559;
template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::is_bounded;
template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::is_modulo;
template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::traps;
template <class _Tp>
    constexpr const bool numeric_limits<_Tp>::tinyness_before;
template <class _Tp>
    constexpr const float_round_style numeric_limits<_Tp>::round_style;

template <class _Tp>
class __attribute__ ((__visibility__("default"))) numeric_limits<const _Tp>
    : private numeric_limits<_Tp>
{
    typedef numeric_limits<_Tp> __base;
    typedef _Tp type;
public:
    static constexpr const bool is_specialized = __base::is_specialized;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type min() noexcept {return __base::min();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type max() noexcept {return __base::max();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type lowest() noexcept {return __base::lowest();}

    static constexpr const int digits = __base::digits;
    static constexpr const int digits10 = __base::digits10;
    static constexpr const int max_digits10 = __base::max_digits10;
    static constexpr const bool is_signed = __base::is_signed;
    static constexpr const bool is_integer = __base::is_integer;
    static constexpr const bool is_exact = __base::is_exact;
    static constexpr const int radix = __base::radix;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type epsilon() noexcept {return __base::epsilon();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type round_error() noexcept {return __base::round_error();}

    static constexpr const int min_exponent = __base::min_exponent;
    static constexpr const int min_exponent10 = __base::min_exponent10;
    static constexpr const int max_exponent = __base::max_exponent;
    static constexpr const int max_exponent10 = __base::max_exponent10;

    static constexpr const bool has_infinity = __base::has_infinity;
    static constexpr const bool has_quiet_NaN = __base::has_quiet_NaN;
    static constexpr const bool has_signaling_NaN = __base::has_signaling_NaN;
    static constexpr const float_denorm_style has_denorm = __base::has_denorm;
    static constexpr const bool has_denorm_loss = __base::has_denorm_loss;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type infinity() noexcept {return __base::infinity();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type quiet_NaN() noexcept {return __base::quiet_NaN();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type signaling_NaN() noexcept {return __base::signaling_NaN();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type denorm_min() noexcept {return __base::denorm_min();}

    static constexpr const bool is_iec559 = __base::is_iec559;
    static constexpr const bool is_bounded = __base::is_bounded;
    static constexpr const bool is_modulo = __base::is_modulo;

    static constexpr const bool traps = __base::traps;
    static constexpr const bool tinyness_before = __base::tinyness_before;
    static constexpr const float_round_style round_style = __base::round_style;
};

template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::is_specialized;
template <class _Tp>
    constexpr const int numeric_limits<const _Tp>::digits;
template <class _Tp>
    constexpr const int numeric_limits<const _Tp>::digits10;
template <class _Tp>
    constexpr const int numeric_limits<const _Tp>::max_digits10;
template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::is_signed;
template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::is_integer;
template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::is_exact;
template <class _Tp>
    constexpr const int numeric_limits<const _Tp>::radix;
template <class _Tp>
    constexpr const int numeric_limits<const _Tp>::min_exponent;
template <class _Tp>
    constexpr const int numeric_limits<const _Tp>::min_exponent10;
template <class _Tp>
    constexpr const int numeric_limits<const _Tp>::max_exponent;
template <class _Tp>
    constexpr const int numeric_limits<const _Tp>::max_exponent10;
template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::has_infinity;
template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::has_quiet_NaN;
template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::has_signaling_NaN;
template <class _Tp>
    constexpr const float_denorm_style numeric_limits<const _Tp>::has_denorm;
template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::has_denorm_loss;
template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::is_iec559;
template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::is_bounded;
template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::is_modulo;
template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::traps;
template <class _Tp>
    constexpr const bool numeric_limits<const _Tp>::tinyness_before;
template <class _Tp>
    constexpr const float_round_style numeric_limits<const _Tp>::round_style;

template <class _Tp>
class __attribute__ ((__visibility__("default"))) numeric_limits<volatile _Tp>
    : private numeric_limits<_Tp>
{
    typedef numeric_limits<_Tp> __base;
    typedef _Tp type;
public:
    static constexpr const bool is_specialized = __base::is_specialized;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type min() noexcept {return __base::min();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type max() noexcept {return __base::max();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type lowest() noexcept {return __base::lowest();}

    static constexpr const int digits = __base::digits;
    static constexpr const int digits10 = __base::digits10;
    static constexpr const int max_digits10 = __base::max_digits10;
    static constexpr const bool is_signed = __base::is_signed;
    static constexpr const bool is_integer = __base::is_integer;
    static constexpr const bool is_exact = __base::is_exact;
    static constexpr const int radix = __base::radix;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type epsilon() noexcept {return __base::epsilon();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type round_error() noexcept {return __base::round_error();}

    static constexpr const int min_exponent = __base::min_exponent;
    static constexpr const int min_exponent10 = __base::min_exponent10;
    static constexpr const int max_exponent = __base::max_exponent;
    static constexpr const int max_exponent10 = __base::max_exponent10;

    static constexpr const bool has_infinity = __base::has_infinity;
    static constexpr const bool has_quiet_NaN = __base::has_quiet_NaN;
    static constexpr const bool has_signaling_NaN = __base::has_signaling_NaN;
    static constexpr const float_denorm_style has_denorm = __base::has_denorm;
    static constexpr const bool has_denorm_loss = __base::has_denorm_loss;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type infinity() noexcept {return __base::infinity();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type quiet_NaN() noexcept {return __base::quiet_NaN();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type signaling_NaN() noexcept {return __base::signaling_NaN();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type denorm_min() noexcept {return __base::denorm_min();}

    static constexpr const bool is_iec559 = __base::is_iec559;
    static constexpr const bool is_bounded = __base::is_bounded;
    static constexpr const bool is_modulo = __base::is_modulo;

    static constexpr const bool traps = __base::traps;
    static constexpr const bool tinyness_before = __base::tinyness_before;
    static constexpr const float_round_style round_style = __base::round_style;
};

template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::is_specialized;
template <class _Tp>
    constexpr const int numeric_limits<volatile _Tp>::digits;
template <class _Tp>
    constexpr const int numeric_limits<volatile _Tp>::digits10;
template <class _Tp>
    constexpr const int numeric_limits<volatile _Tp>::max_digits10;
template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::is_signed;
template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::is_integer;
template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::is_exact;
template <class _Tp>
    constexpr const int numeric_limits<volatile _Tp>::radix;
template <class _Tp>
    constexpr const int numeric_limits<volatile _Tp>::min_exponent;
template <class _Tp>
    constexpr const int numeric_limits<volatile _Tp>::min_exponent10;
template <class _Tp>
    constexpr const int numeric_limits<volatile _Tp>::max_exponent;
template <class _Tp>
    constexpr const int numeric_limits<volatile _Tp>::max_exponent10;
template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::has_infinity;
template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::has_quiet_NaN;
template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::has_signaling_NaN;
template <class _Tp>
    constexpr const float_denorm_style numeric_limits<volatile _Tp>::has_denorm;
template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::has_denorm_loss;
template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::is_iec559;
template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::is_bounded;
template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::is_modulo;
template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::traps;
template <class _Tp>
    constexpr const bool numeric_limits<volatile _Tp>::tinyness_before;
template <class _Tp>
    constexpr const float_round_style numeric_limits<volatile _Tp>::round_style;

template <class _Tp>
class __attribute__ ((__visibility__("default"))) numeric_limits<const volatile _Tp>
    : private numeric_limits<_Tp>
{
    typedef numeric_limits<_Tp> __base;
    typedef _Tp type;
public:
    static constexpr const bool is_specialized = __base::is_specialized;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type min() noexcept {return __base::min();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type max() noexcept {return __base::max();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type lowest() noexcept {return __base::lowest();}

    static constexpr const int digits = __base::digits;
    static constexpr const int digits10 = __base::digits10;
    static constexpr const int max_digits10 = __base::max_digits10;
    static constexpr const bool is_signed = __base::is_signed;
    static constexpr const bool is_integer = __base::is_integer;
    static constexpr const bool is_exact = __base::is_exact;
    static constexpr const int radix = __base::radix;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type epsilon() noexcept {return __base::epsilon();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type round_error() noexcept {return __base::round_error();}

    static constexpr const int min_exponent = __base::min_exponent;
    static constexpr const int min_exponent10 = __base::min_exponent10;
    static constexpr const int max_exponent = __base::max_exponent;
    static constexpr const int max_exponent10 = __base::max_exponent10;

    static constexpr const bool has_infinity = __base::has_infinity;
    static constexpr const bool has_quiet_NaN = __base::has_quiet_NaN;
    static constexpr const bool has_signaling_NaN = __base::has_signaling_NaN;
    static constexpr const float_denorm_style has_denorm = __base::has_denorm;
    static constexpr const bool has_denorm_loss = __base::has_denorm_loss;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type infinity() noexcept {return __base::infinity();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type quiet_NaN() noexcept {return __base::quiet_NaN();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type signaling_NaN() noexcept {return __base::signaling_NaN();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) static constexpr type denorm_min() noexcept {return __base::denorm_min();}

    static constexpr const bool is_iec559 = __base::is_iec559;
    static constexpr const bool is_bounded = __base::is_bounded;
    static constexpr const bool is_modulo = __base::is_modulo;

    static constexpr const bool traps = __base::traps;
    static constexpr const bool tinyness_before = __base::tinyness_before;
    static constexpr const float_round_style round_style = __base::round_style;
};

template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::is_specialized;
template <class _Tp>
    constexpr const int numeric_limits<const volatile _Tp>::digits;
template <class _Tp>
    constexpr const int numeric_limits<const volatile _Tp>::digits10;
template <class _Tp>
    constexpr const int numeric_limits<const volatile _Tp>::max_digits10;
template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::is_signed;
template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::is_integer;
template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::is_exact;
template <class _Tp>
    constexpr const int numeric_limits<const volatile _Tp>::radix;
template <class _Tp>
    constexpr const int numeric_limits<const volatile _Tp>::min_exponent;
template <class _Tp>
    constexpr const int numeric_limits<const volatile _Tp>::min_exponent10;
template <class _Tp>
    constexpr const int numeric_limits<const volatile _Tp>::max_exponent;
template <class _Tp>
    constexpr const int numeric_limits<const volatile _Tp>::max_exponent10;
template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::has_infinity;
template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::has_quiet_NaN;
template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::has_signaling_NaN;
template <class _Tp>
    constexpr const float_denorm_style numeric_limits<const volatile _Tp>::has_denorm;
template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::has_denorm_loss;
template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::is_iec559;
template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::is_bounded;
template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::is_modulo;
template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::traps;
template <class _Tp>
    constexpr const bool numeric_limits<const volatile _Tp>::tinyness_before;
template <class _Tp>
    constexpr const float_round_style numeric_limits<const volatile _Tp>::round_style;

} }
# 607 "/opt/intel/sgxsdk/include/libcxx/memory" 2
# 1 "/opt/intel/sgxsdk/include/libcxx/iterator" 1
# 412 "/opt/intel/sgxsdk/include/libcxx/iterator"
# 1 "/opt/intel/sgxsdk/include/libcxx/__functional_base" 1
# 21 "/opt/intel/sgxsdk/include/libcxx/__functional_base"
       
# 22 "/opt/intel/sgxsdk/include/libcxx/__functional_base" 3


namespace std { inline namespace __1 {

template <class _Arg, class _Result>
struct __attribute__ ((__visibility__("default"))) unary_function
{
    typedef _Arg argument_type;
    typedef _Result result_type;
};

template <class _Arg1, class _Arg2, class _Result>
struct __attribute__ ((__visibility__("default"))) binary_function
{
    typedef _Arg1 first_argument_type;
    typedef _Arg2 second_argument_type;
    typedef _Result result_type;
};

template <class _Tp>
struct __has_result_type
{
private:
    struct __two {char __lx; char __lxx;};
    template <class _Up> static __two __test(...);
    template <class _Up> static char __test(typename _Up::result_type* = 0);
public:
    static const bool value = sizeof(__test<_Tp>(0)) == 1;
};




template <class _Tp>

struct __attribute__ ((__visibility__("default"))) less : binary_function<_Tp, _Tp, bool>
{
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator()(const _Tp& __x, const _Tp& __y) const
        {return __x < __y;}
};
# 80 "/opt/intel/sgxsdk/include/libcxx/__functional_base" 3
template <class _Tp>
struct __derives_from_unary_function
{
private:
    struct __two {char __lx; char __lxx;};
    static __two __test(...);
    template <class _Ap, class _Rp>
        static unary_function<_Ap, _Rp>
        __test(const volatile unary_function<_Ap, _Rp>*);
public:
    static const bool value = !is_same<decltype(__test((_Tp*)0)), __two>::value;
    typedef decltype(__test((_Tp*)0)) type;
};

template <class _Tp>
struct __derives_from_binary_function
{
private:
    struct __two {char __lx; char __lxx;};
    static __two __test(...);
    template <class _A1, class _A2, class _Rp>
        static binary_function<_A1, _A2, _Rp>
        __test(const volatile binary_function<_A1, _A2, _Rp>*);
public:
    static const bool value = !is_same<decltype(__test((_Tp*)0)), __two>::value;
    typedef decltype(__test((_Tp*)0)) type;
};

template <class _Tp, bool = __derives_from_unary_function<_Tp>::value>
struct __maybe_derive_from_unary_function
    : public __derives_from_unary_function<_Tp>::type
{
};

template <class _Tp>
struct __maybe_derive_from_unary_function<_Tp, false>
{
};

template <class _Tp, bool = __derives_from_binary_function<_Tp>::value>
struct __maybe_derive_from_binary_function
    : public __derives_from_binary_function<_Tp>::type
{
};

template <class _Tp>
struct __maybe_derive_from_binary_function<_Tp, false>
{
};

template <class _Tp, bool = __has_result_type<_Tp>::value>
struct __weak_result_type_imp
    : public __maybe_derive_from_unary_function<_Tp>,
      public __maybe_derive_from_binary_function<_Tp>
{
    typedef typename _Tp::result_type result_type;
};

template <class _Tp>
struct __weak_result_type_imp<_Tp, false>
    : public __maybe_derive_from_unary_function<_Tp>,
      public __maybe_derive_from_binary_function<_Tp>
{
};

template <class _Tp>
struct __weak_result_type
    : public __weak_result_type_imp<_Tp>
{
};



template <class _Rp>
struct __weak_result_type<_Rp ()>
{
    typedef _Rp result_type;
};

template <class _Rp>
struct __weak_result_type<_Rp (&)()>
{
    typedef _Rp result_type;
};

template <class _Rp>
struct __weak_result_type<_Rp (*)()>
{
    typedef _Rp result_type;
};



template <class _Rp, class _A1>
struct __weak_result_type<_Rp (_A1)>
    : public unary_function<_A1, _Rp>
{
};

template <class _Rp, class _A1>
struct __weak_result_type<_Rp (&)(_A1)>
    : public unary_function<_A1, _Rp>
{
};

template <class _Rp, class _A1>
struct __weak_result_type<_Rp (*)(_A1)>
    : public unary_function<_A1, _Rp>
{
};

template <class _Rp, class _Cp>
struct __weak_result_type<_Rp (_Cp::*)()>
    : public unary_function<_Cp*, _Rp>
{
};

template <class _Rp, class _Cp>
struct __weak_result_type<_Rp (_Cp::*)() const>
    : public unary_function<const _Cp*, _Rp>
{
};

template <class _Rp, class _Cp>
struct __weak_result_type<_Rp (_Cp::*)() volatile>
    : public unary_function<volatile _Cp*, _Rp>
{
};

template <class _Rp, class _Cp>
struct __weak_result_type<_Rp (_Cp::*)() const volatile>
    : public unary_function<const volatile _Cp*, _Rp>
{
};



template <class _Rp, class _A1, class _A2>
struct __weak_result_type<_Rp (_A1, _A2)>
    : public binary_function<_A1, _A2, _Rp>
{
};

template <class _Rp, class _A1, class _A2>
struct __weak_result_type<_Rp (*)(_A1, _A2)>
    : public binary_function<_A1, _A2, _Rp>
{
};

template <class _Rp, class _A1, class _A2>
struct __weak_result_type<_Rp (&)(_A1, _A2)>
    : public binary_function<_A1, _A2, _Rp>
{
};

template <class _Rp, class _Cp, class _A1>
struct __weak_result_type<_Rp (_Cp::*)(_A1)>
    : public binary_function<_Cp*, _A1, _Rp>
{
};

template <class _Rp, class _Cp, class _A1>
struct __weak_result_type<_Rp (_Cp::*)(_A1) const>
    : public binary_function<const _Cp*, _A1, _Rp>
{
};

template <class _Rp, class _Cp, class _A1>
struct __weak_result_type<_Rp (_Cp::*)(_A1) volatile>
    : public binary_function<volatile _Cp*, _A1, _Rp>
{
};

template <class _Rp, class _Cp, class _A1>
struct __weak_result_type<_Rp (_Cp::*)(_A1) const volatile>
    : public binary_function<const volatile _Cp*, _A1, _Rp>
{
};





template <class _Rp, class _A1, class _A2, class _A3, class ..._A4>
struct __weak_result_type<_Rp (_A1, _A2, _A3, _A4...)>
{
    typedef _Rp result_type;
};

template <class _Rp, class _A1, class _A2, class _A3, class ..._A4>
struct __weak_result_type<_Rp (&)(_A1, _A2, _A3, _A4...)>
{
    typedef _Rp result_type;
};

template <class _Rp, class _A1, class _A2, class _A3, class ..._A4>
struct __weak_result_type<_Rp (*)(_A1, _A2, _A3, _A4...)>
{
    typedef _Rp result_type;
};

template <class _Rp, class _Cp, class _A1, class _A2, class ..._A3>
struct __weak_result_type<_Rp (_Cp::*)(_A1, _A2, _A3...)>
{
    typedef _Rp result_type;
};

template <class _Rp, class _Cp, class _A1, class _A2, class ..._A3>
struct __weak_result_type<_Rp (_Cp::*)(_A1, _A2, _A3...) const>
{
    typedef _Rp result_type;
};

template <class _Rp, class _Cp, class _A1, class _A2, class ..._A3>
struct __weak_result_type<_Rp (_Cp::*)(_A1, _A2, _A3...) volatile>
{
    typedef _Rp result_type;
};

template <class _Rp, class _Cp, class _A1, class _A2, class ..._A3>
struct __weak_result_type<_Rp (_Cp::*)(_A1, _A2, _A3...) const volatile>
{
    typedef _Rp result_type;
};





template <class _Tp, class ..._Args>
struct __invoke_return
{
    typedef decltype(__invoke(std::__1::declval<_Tp>(), std::__1::declval<_Args>()...)) type;
};
# 322 "/opt/intel/sgxsdk/include/libcxx/__functional_base" 3
template <class _Ret>
struct __invoke_void_return_wrapper
{

    template <class ..._Args>
    static _Ret __call(_Args&&... __args) {
        return __invoke(std::__1::forward<_Args>(__args)...);
    }
# 351 "/opt/intel/sgxsdk/include/libcxx/__functional_base" 3
};

template <>
struct __invoke_void_return_wrapper<void>
{

    template <class ..._Args>
    static void __call(_Args&&... __args) {
        __invoke(std::__1::forward<_Args>(__args)...);
    }
# 382 "/opt/intel/sgxsdk/include/libcxx/__functional_base" 3
};

template <class _Tp>
class __attribute__ ((__visibility__("default"))) reference_wrapper
    : public __weak_result_type<_Tp>
{
public:

    typedef _Tp type;
private:
    type* __f_;

public:

    __attribute__ ((__visibility__("hidden"), __always_inline__)) reference_wrapper(type& __f) noexcept
        : __f_(std::__1::addressof(__f)) {}

    private: reference_wrapper(type&&); public:



    __attribute__ ((__visibility__("hidden"), __always_inline__)) operator type& () const noexcept {return *__f_;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) type& get() const noexcept {return *__f_;}



    template <class... _ArgTypes>
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    typename __invoke_of<type&, _ArgTypes...>::type
    operator() (_ArgTypes&&... __args) const {
        return __invoke(get(), std::__1::forward<_ArgTypes>(__args)...);
    }
# 520 "/opt/intel/sgxsdk/include/libcxx/__functional_base" 3
};


template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
reference_wrapper<_Tp>
ref(_Tp& __t) noexcept
{
    return reference_wrapper<_Tp>(__t);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
reference_wrapper<_Tp>
ref(reference_wrapper<_Tp> __t) noexcept
{
    return ref(__t.get());
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
reference_wrapper<const _Tp>
cref(const _Tp& __t) noexcept
{
    return reference_wrapper<const _Tp>(__t);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
reference_wrapper<const _Tp>
cref(reference_wrapper<_Tp> __t) noexcept
{
    return cref(__t.get());
}





template <class _Tp> void ref(const _Tp&&) = delete;
template <class _Tp> void cref(const _Tp&&) = delete;
# 588 "/opt/intel/sgxsdk/include/libcxx/__functional_base" 3
struct __attribute__ ((__visibility__("default"))) allocator_arg_t { };




constexpr allocator_arg_t allocator_arg = allocator_arg_t();




template <class _Tp>
struct __has_allocator_type
{
private:
    struct __two {char __lx; char __lxx;};
    template <class _Up> static __two __test(...);
    template <class _Up> static char __test(typename _Up::allocator_type* = 0);
public:
    static const bool value = sizeof(__test<_Tp>(0)) == 1;
};

template <class _Tp, class _Alloc, bool = __has_allocator_type<_Tp>::value>
struct __uses_allocator
    : public integral_constant<bool,
        is_convertible<_Alloc, typename _Tp::allocator_type>::value>
{
};

template <class _Tp, class _Alloc>
struct __uses_allocator<_Tp, _Alloc, false>
    : public false_type
{
};

template <class _Tp, class _Alloc>
struct __attribute__ ((__visibility__("default"))) uses_allocator
    : public __uses_allocator<_Tp, _Alloc>
{
};





template <class _Tp, class _Alloc, class ..._Args>
struct __uses_alloc_ctor_imp
{
    static const bool __ua = uses_allocator<_Tp, _Alloc>::value;
    static const bool __ic =
        is_constructible<_Tp, allocator_arg_t, _Alloc, _Args...>::value;
    static const int value = __ua ? 2 - __ic : 0;
};

template <class _Tp, class _Alloc, class ..._Args>
struct __uses_alloc_ctor
    : integral_constant<int, __uses_alloc_ctor_imp<_Tp, _Alloc, _Args...>::value>
    {};

template <class _Tp, class _Allocator, class... _Args>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void __user_alloc_construct_impl (integral_constant<int, 0>, _Tp *__storage, const _Allocator &, _Args &&... __args )
{
    new (__storage) _Tp (std::__1::forward<_Args>(__args)...);
}

template <class _Tp, class _Allocator, class... _Args>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void __user_alloc_construct_impl (integral_constant<int, 1>, _Tp *__storage, const _Allocator &__a, _Args &&... __args )
{
    new (__storage) _Tp (allocator_arg, __a, std::__1::forward<_Args>(__args)...);
}

template <class _Tp, class _Allocator, class... _Args>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void __user_alloc_construct_impl (integral_constant<int, 2>, _Tp *__storage, const _Allocator &__a, _Args &&... __args )
{
    new (__storage) _Tp (std::__1::forward<_Args>(__args)..., __a);
}

template <class _Tp, class _Allocator, class... _Args>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void __user_alloc_construct (_Tp *__storage, const _Allocator &__a, _Args &&... __args)
{
    __user_alloc_construct_impl(
             __uses_alloc_ctor<_Tp, _Allocator>(),
             __storage, __a, std::__1::forward<_Args>(__args)...
        );
}


} }
# 413 "/opt/intel/sgxsdk/include/libcxx/iterator" 2







# 1 "/opt/intel/sgxsdk/include/libcxx/__debug" 1
# 421 "/opt/intel/sgxsdk/include/libcxx/iterator" 2


       
# 424 "/opt/intel/sgxsdk/include/libcxx/iterator" 3


namespace std { inline namespace __1 {

struct __attribute__ ((__visibility__("default"))) input_iterator_tag {};
struct __attribute__ ((__visibility__("default"))) output_iterator_tag {};
struct __attribute__ ((__visibility__("default"))) forward_iterator_tag : public input_iterator_tag {};
struct __attribute__ ((__visibility__("default"))) bidirectional_iterator_tag : public forward_iterator_tag {};
struct __attribute__ ((__visibility__("default"))) random_access_iterator_tag : public bidirectional_iterator_tag {};

template <class _Tp>
struct __has_iterator_category
{
private:
    struct __two {char __lx; char __lxx;};
    template <class _Up> static __two __test(...);
    template <class _Up> static char __test(typename _Up::iterator_category* = 0);
public:
    static const bool value = sizeof(__test<_Tp>(0)) == 1;
};

template <class _Iter, bool> struct __iterator_traits_impl {};

template <class _Iter>
struct __iterator_traits_impl<_Iter, true>
{
    typedef typename _Iter::difference_type difference_type;
    typedef typename _Iter::value_type value_type;
    typedef typename _Iter::pointer pointer;
    typedef typename _Iter::reference reference;
    typedef typename _Iter::iterator_category iterator_category;
};

template <class _Iter, bool> struct __iterator_traits {};

template <class _Iter>
struct __iterator_traits<_Iter, true>
    : __iterator_traits_impl
      <
        _Iter,
        is_convertible<typename _Iter::iterator_category, input_iterator_tag>::value ||
        is_convertible<typename _Iter::iterator_category, output_iterator_tag>::value
      >
{};






template <class _Iter>
struct __attribute__ ((__visibility__("default"))) iterator_traits
    : __iterator_traits<_Iter, __has_iterator_category<_Iter>::value> {};

template<class _Tp>
struct __attribute__ ((__visibility__("default"))) iterator_traits<_Tp*>
{
    typedef ptrdiff_t difference_type;
    typedef typename remove_const<_Tp>::type value_type;
    typedef _Tp* pointer;
    typedef _Tp& reference;
    typedef random_access_iterator_tag iterator_category;
};

template <class _Tp, class _Up, bool = __has_iterator_category<iterator_traits<_Tp> >::value>
struct __has_iterator_category_convertible_to
    : public integral_constant<bool, is_convertible<typename iterator_traits<_Tp>::iterator_category, _Up>::value>
{};

template <class _Tp, class _Up>
struct __has_iterator_category_convertible_to<_Tp, _Up, false> : public false_type {};

template <class _Tp>
struct __is_input_iterator : public __has_iterator_category_convertible_to<_Tp, input_iterator_tag> {};

template <class _Tp>
struct __is_forward_iterator : public __has_iterator_category_convertible_to<_Tp, forward_iterator_tag> {};

template <class _Tp>
struct __is_bidirectional_iterator : public __has_iterator_category_convertible_to<_Tp, bidirectional_iterator_tag> {};

template <class _Tp>
struct __is_random_access_iterator : public __has_iterator_category_convertible_to<_Tp, random_access_iterator_tag> {};

template <class _Tp>
struct __is_exactly_input_iterator
    : public integral_constant<bool,
      __has_iterator_category_convertible_to<_Tp, input_iterator_tag>::value &&
     !__has_iterator_category_convertible_to<_Tp, forward_iterator_tag>::value> {};

template<class _Category, class _Tp, class _Distance = ptrdiff_t,
         class _Pointer = _Tp*, class _Reference = _Tp&>
struct __attribute__ ((__visibility__("default"))) iterator
{
    typedef _Tp value_type;
    typedef _Distance difference_type;
    typedef _Pointer pointer;
    typedef _Reference reference;
    typedef _Category iterator_category;
};

template <class _InputIter>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void __advance(_InputIter& __i,
             typename iterator_traits<_InputIter>::difference_type __n, input_iterator_tag)
{
    for (; __n > 0; --__n)
        ++__i;
}

template <class _BiDirIter>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void __advance(_BiDirIter& __i,
             typename iterator_traits<_BiDirIter>::difference_type __n, bidirectional_iterator_tag)
{
    if (__n >= 0)
        for (; __n > 0; --__n)
            ++__i;
    else
        for (; __n < 0; ++__n)
            --__i;
}

template <class _RandIter>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void __advance(_RandIter& __i,
             typename iterator_traits<_RandIter>::difference_type __n, random_access_iterator_tag)
{
   __i += __n;
}

template <class _InputIter>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void advance(_InputIter& __i,
             typename iterator_traits<_InputIter>::difference_type __n)
{
    __advance(__i, __n, typename iterator_traits<_InputIter>::iterator_category());
}

template <class _InputIter>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename iterator_traits<_InputIter>::difference_type
__distance(_InputIter __first, _InputIter __last, input_iterator_tag)
{
    typename iterator_traits<_InputIter>::difference_type __r(0);
    for (; __first != __last; ++__first)
        ++__r;
    return __r;
}

template <class _RandIter>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename iterator_traits<_RandIter>::difference_type
__distance(_RandIter __first, _RandIter __last, random_access_iterator_tag)
{
    return __last - __first;
}

template <class _InputIter>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename iterator_traits<_InputIter>::difference_type
distance(_InputIter __first, _InputIter __last)
{
    return __distance(__first, __last, typename iterator_traits<_InputIter>::iterator_category());
}

template <class _InputIter>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_InputIter
next(_InputIter __x,
     typename iterator_traits<_InputIter>::difference_type __n = 1,
     typename enable_if<__is_input_iterator<_InputIter>::value>::type* = 0)
{
    std::__1::advance(__x, __n);
    return __x;
}

template <class _BidiretionalIter>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_BidiretionalIter
prev(_BidiretionalIter __x,
     typename iterator_traits<_BidiretionalIter>::difference_type __n = 1,
     typename enable_if<__is_bidirectional_iterator<_BidiretionalIter>::value>::type* = 0)
{
    std::__1::advance(__x, -__n);
    return __x;
}

template <class _Iter>
class __attribute__ ((__visibility__("default"))) reverse_iterator
    : public iterator<typename iterator_traits<_Iter>::iterator_category,
                      typename iterator_traits<_Iter>::value_type,
                      typename iterator_traits<_Iter>::difference_type,
                      typename iterator_traits<_Iter>::pointer,
                      typename iterator_traits<_Iter>::reference>
{
private:



protected:
    _Iter current;
public:
    typedef _Iter iterator_type;
    typedef typename iterator_traits<_Iter>::difference_type difference_type;
    typedef typename iterator_traits<_Iter>::reference reference;
    typedef typename iterator_traits<_Iter>::pointer pointer;

    __attribute__ ((__visibility__("hidden"), __always_inline__)) reverse_iterator() : current() {}



    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit reverse_iterator(_Iter __x) : current(__x) {}

    template <class _Up> __attribute__ ((__visibility__("hidden"), __always_inline__)) reverse_iterator(const reverse_iterator<_Up>& __u)



        : current(__u.base()) {}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) _Iter base() const {return current;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) reference operator*() const {_Iter __tmp = current; return *--__tmp;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) pointer operator->() const {return std::__1::addressof(operator*());}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) reverse_iterator& operator++() {--current; return *this;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) reverse_iterator operator++(int)
        {reverse_iterator __tmp(*this); --current; return __tmp;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) reverse_iterator& operator--() {++current; return *this;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) reverse_iterator operator--(int)
        {reverse_iterator __tmp(*this); ++current; return __tmp;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) reverse_iterator operator+ (difference_type __n) const
        {return reverse_iterator(current - __n);}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) reverse_iterator& operator+=(difference_type __n)
        {current -= __n; return *this;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) reverse_iterator operator- (difference_type __n) const
        {return reverse_iterator(current + __n);}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) reverse_iterator& operator-=(difference_type __n)
        {current += __n; return *this;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) reference operator[](difference_type __n) const
        {return *(*this + __n);}
};

template <class _Iter1, class _Iter2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator==(const reverse_iterator<_Iter1>& __x, const reverse_iterator<_Iter2>& __y)
{
    return __x.base() == __y.base();
}

template <class _Iter1, class _Iter2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<(const reverse_iterator<_Iter1>& __x, const reverse_iterator<_Iter2>& __y)
{
    return __x.base() > __y.base();
}

template <class _Iter1, class _Iter2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator!=(const reverse_iterator<_Iter1>& __x, const reverse_iterator<_Iter2>& __y)
{
    return __x.base() != __y.base();
}

template <class _Iter1, class _Iter2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>(const reverse_iterator<_Iter1>& __x, const reverse_iterator<_Iter2>& __y)
{
    return __x.base() < __y.base();
}

template <class _Iter1, class _Iter2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>=(const reverse_iterator<_Iter1>& __x, const reverse_iterator<_Iter2>& __y)
{
    return __x.base() <= __y.base();
}

template <class _Iter1, class _Iter2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<=(const reverse_iterator<_Iter1>& __x, const reverse_iterator<_Iter2>& __y)
{
    return __x.base() >= __y.base();
}


template <class _Iter1, class _Iter2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
auto
operator-(const reverse_iterator<_Iter1>& __x, const reverse_iterator<_Iter2>& __y)
-> decltype(__y.base() - __x.base())
{
    return __y.base() - __x.base();
}
# 732 "/opt/intel/sgxsdk/include/libcxx/iterator" 3
template <class _Iter>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
reverse_iterator<_Iter>
operator+(typename reverse_iterator<_Iter>::difference_type __n, const reverse_iterator<_Iter>& __x)
{
    return reverse_iterator<_Iter>(__x.base() - __n);
}
# 749 "/opt/intel/sgxsdk/include/libcxx/iterator" 3
template <class _Container>
class __attribute__ ((__visibility__("default"))) back_insert_iterator
    : public iterator<output_iterator_tag,
                      void,
                      void,
                      void,
                      void>
{
protected:
    _Container* container;
public:
    typedef _Container container_type;

    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit back_insert_iterator(_Container& __x) : container(std::__1::addressof(__x)) {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) back_insert_iterator& operator=(const typename _Container::value_type& __value_)
        {container->push_back(__value_); return *this;}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) back_insert_iterator& operator=(typename _Container::value_type&& __value_)
        {container->push_back(std::__1::move(__value_)); return *this;}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) back_insert_iterator& operator*() {return *this;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) back_insert_iterator& operator++() {return *this;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) back_insert_iterator operator++(int) {return *this;}
};

template <class _Container>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
back_insert_iterator<_Container>
back_inserter(_Container& __x)
{
    return back_insert_iterator<_Container>(__x);
}

template <class _Container>
class __attribute__ ((__visibility__("default"))) front_insert_iterator
    : public iterator<output_iterator_tag,
                      void,
                      void,
                      void,
                      void>
{
protected:
    _Container* container;
public:
    typedef _Container container_type;

    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit front_insert_iterator(_Container& __x) : container(std::__1::addressof(__x)) {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) front_insert_iterator& operator=(const typename _Container::value_type& __value_)
        {container->push_front(__value_); return *this;}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) front_insert_iterator& operator=(typename _Container::value_type&& __value_)
        {container->push_front(std::__1::move(__value_)); return *this;}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) front_insert_iterator& operator*() {return *this;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) front_insert_iterator& operator++() {return *this;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) front_insert_iterator operator++(int) {return *this;}
};

template <class _Container>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
front_insert_iterator<_Container>
front_inserter(_Container& __x)
{
    return front_insert_iterator<_Container>(__x);
}

template <class _Container>
class __attribute__ ((__visibility__("default"))) insert_iterator
    : public iterator<output_iterator_tag,
                      void,
                      void,
                      void,
                      void>
{
protected:
    _Container* container;
    typename _Container::iterator iter;
public:
    typedef _Container container_type;

    __attribute__ ((__visibility__("hidden"), __always_inline__)) insert_iterator(_Container& __x, typename _Container::iterator __i)
        : container(std::__1::addressof(__x)), iter(__i) {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) insert_iterator& operator=(const typename _Container::value_type& __value_)
        {iter = container->insert(iter, __value_); ++iter; return *this;}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) insert_iterator& operator=(typename _Container::value_type&& __value_)
        {iter = container->insert(iter, std::__1::move(__value_)); ++iter; return *this;}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) insert_iterator& operator*() {return *this;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) insert_iterator& operator++() {return *this;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) insert_iterator& operator++(int) {return *this;}
};

template <class _Container>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
insert_iterator<_Container>
inserter(_Container& __x, typename _Container::iterator __i)
{
    return insert_iterator<_Container>(__x, __i);
}
# 1033 "/opt/intel/sgxsdk/include/libcxx/iterator" 3
template <class _Iter>
class __attribute__ ((__visibility__("default"))) move_iterator
{
private:
    _Iter __i;
public:
    typedef _Iter iterator_type;
    typedef typename iterator_traits<iterator_type>::iterator_category iterator_category;
    typedef typename iterator_traits<iterator_type>::value_type value_type;
    typedef typename iterator_traits<iterator_type>::difference_type difference_type;
    typedef iterator_type pointer;

    typedef typename iterator_traits<iterator_type>::reference __reference;
    typedef typename conditional<
            is_reference<__reference>::value,
            typename remove_reference<__reference>::type&&,
            __reference
        >::type reference;




    __attribute__ ((__visibility__("hidden"), __always_inline__)) move_iterator() : __i() {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit move_iterator(_Iter __x) : __i(__x) {}
    template <class _Up> __attribute__ ((__visibility__("hidden"), __always_inline__)) move_iterator(const move_iterator<_Up>& __u)
        : __i(__u.base()) {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) _Iter base() const {return __i;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) reference operator*() const {
      return static_cast<reference>(*__i);
    }
    __attribute__ ((__visibility__("hidden"), __always_inline__)) pointer operator->() const { return __i;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) move_iterator& operator++() {++__i; return *this;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) move_iterator operator++(int)
        {move_iterator __tmp(*this); ++__i; return __tmp;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) move_iterator& operator--() {--__i; return *this;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) move_iterator operator--(int)
        {move_iterator __tmp(*this); --__i; return __tmp;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) move_iterator operator+ (difference_type __n) const
        {return move_iterator(__i + __n);}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) move_iterator& operator+=(difference_type __n)
        {__i += __n; return *this;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) move_iterator operator- (difference_type __n) const
        {return move_iterator(__i - __n);}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) move_iterator& operator-=(difference_type __n)
        {__i -= __n; return *this;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) reference operator[](difference_type __n) const
    {
      return static_cast<reference>(__i[__n]);
    }
};

template <class _Iter1, class _Iter2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator==(const move_iterator<_Iter1>& __x, const move_iterator<_Iter2>& __y)
{
    return __x.base() == __y.base();
}

template <class _Iter1, class _Iter2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<(const move_iterator<_Iter1>& __x, const move_iterator<_Iter2>& __y)
{
    return __x.base() < __y.base();
}

template <class _Iter1, class _Iter2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator!=(const move_iterator<_Iter1>& __x, const move_iterator<_Iter2>& __y)
{
    return __x.base() != __y.base();
}

template <class _Iter1, class _Iter2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>(const move_iterator<_Iter1>& __x, const move_iterator<_Iter2>& __y)
{
    return __x.base() > __y.base();
}

template <class _Iter1, class _Iter2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>=(const move_iterator<_Iter1>& __x, const move_iterator<_Iter2>& __y)
{
    return __x.base() >= __y.base();
}

template <class _Iter1, class _Iter2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<=(const move_iterator<_Iter1>& __x, const move_iterator<_Iter2>& __y)
{
    return __x.base() <= __y.base();
}


template <class _Iter1, class _Iter2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
auto
operator-(const move_iterator<_Iter1>& __x, const move_iterator<_Iter2>& __y)
-> decltype(__x.base() - __y.base())
{
    return __x.base() - __y.base();
}
# 1151 "/opt/intel/sgxsdk/include/libcxx/iterator" 3
template <class _Iter>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
move_iterator<_Iter>
operator+(typename move_iterator<_Iter>::difference_type __n, const move_iterator<_Iter>& __x)
{
    return move_iterator<_Iter>(__x.base() + __n);
}

template <class _Iter>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
move_iterator<_Iter>
make_move_iterator(_Iter __i)
{
    return move_iterator<_Iter>(__i);
}



template <class _Iter> class __wrap_iter;

template <class _Iter1, class _Iter2>
__attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator==(const __wrap_iter<_Iter1>&, const __wrap_iter<_Iter2>&) noexcept;

template <class _Iter1, class _Iter2>
__attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<(const __wrap_iter<_Iter1>&, const __wrap_iter<_Iter2>&) noexcept;

template <class _Iter1, class _Iter2>
__attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator!=(const __wrap_iter<_Iter1>&, const __wrap_iter<_Iter2>&) noexcept;

template <class _Iter1, class _Iter2>
__attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>(const __wrap_iter<_Iter1>&, const __wrap_iter<_Iter2>&) noexcept;

template <class _Iter1, class _Iter2>
__attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>=(const __wrap_iter<_Iter1>&, const __wrap_iter<_Iter2>&) noexcept;

template <class _Iter1, class _Iter2>
__attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<=(const __wrap_iter<_Iter1>&, const __wrap_iter<_Iter2>&) noexcept;


template <class _Iter1, class _Iter2>
__attribute__ ((__visibility__("hidden"), __always_inline__))
auto
operator-(const __wrap_iter<_Iter1>& __x, const __wrap_iter<_Iter2>& __y) noexcept
-> decltype(__x.base() - __y.base());







template <class _Iter>
__attribute__ ((__visibility__("hidden"), __always_inline__))
__wrap_iter<_Iter>
operator+(typename __wrap_iter<_Iter>::difference_type, __wrap_iter<_Iter>) noexcept;

template <class _Ip, class _Op> _Op __attribute__ ((__visibility__("hidden"), __always_inline__)) copy(_Ip, _Ip, _Op);
template <class _B1, class _B2> _B2 __attribute__ ((__visibility__("hidden"), __always_inline__)) copy_backward(_B1, _B1, _B2);
template <class _Ip, class _Op> _Op __attribute__ ((__visibility__("hidden"), __always_inline__)) move(_Ip, _Ip, _Op);
template <class _B1, class _B2> _B2 __attribute__ ((__visibility__("hidden"), __always_inline__)) move_backward(_B1, _B1, _B2);

template <class _Tp>
__attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_trivially_copy_assignable<_Tp>::value,
    _Tp*
>::type
__unwrap_iter(__wrap_iter<_Tp*>);

template <class _Iter>
class __wrap_iter
{
public:
    typedef _Iter iterator_type;
    typedef typename iterator_traits<iterator_type>::iterator_category iterator_category;
    typedef typename iterator_traits<iterator_type>::value_type value_type;
    typedef typename iterator_traits<iterator_type>::difference_type difference_type;
    typedef typename iterator_traits<iterator_type>::pointer pointer;
    typedef typename iterator_traits<iterator_type>::reference reference;
private:
    iterator_type __i;
public:
    __attribute__ ((__visibility__("hidden"), __always_inline__)) __wrap_iter() noexcept



    {



    }
    template <class _Up> __attribute__ ((__visibility__("hidden"), __always_inline__)) __wrap_iter(const __wrap_iter<_Up>& __u,
        typename enable_if<is_convertible<_Up, iterator_type>::value>::type* = 0) noexcept
        : __i(__u.base())
    {



    }
# 1286 "/opt/intel/sgxsdk/include/libcxx/iterator" 3
    __attribute__ ((__visibility__("hidden"), __always_inline__)) reference operator*() const noexcept
    {




        return *__i;
    }
    __attribute__ ((__visibility__("hidden"), __always_inline__)) pointer operator->() const noexcept
    {




        return (pointer)std::__1::addressof(*__i);
    }
    __attribute__ ((__visibility__("hidden"), __always_inline__)) __wrap_iter& operator++() noexcept
    {




        ++__i;
        return *this;
    }
    __attribute__ ((__visibility__("hidden"), __always_inline__)) __wrap_iter operator++(int) noexcept
        {__wrap_iter __tmp(*this); ++(*this); return __tmp;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) __wrap_iter& operator--() noexcept
    {




        --__i;
        return *this;
    }
    __attribute__ ((__visibility__("hidden"), __always_inline__)) __wrap_iter operator--(int) noexcept
        {__wrap_iter __tmp(*this); --(*this); return __tmp;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) __wrap_iter operator+ (difference_type __n) const noexcept
        {__wrap_iter __w(*this); __w += __n; return __w;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) __wrap_iter& operator+=(difference_type __n) noexcept
    {




        __i += __n;
        return *this;
    }
    __attribute__ ((__visibility__("hidden"), __always_inline__)) __wrap_iter operator- (difference_type __n) const noexcept
        {return *this + (-__n);}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) __wrap_iter& operator-=(difference_type __n) noexcept
        {*this += -__n; return *this;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) reference operator[](difference_type __n) const noexcept
    {




        return __i[__n];
    }

    __attribute__ ((__visibility__("hidden"), __always_inline__)) iterator_type base() const noexcept {return __i;}

private:






    __attribute__ ((__visibility__("hidden"), __always_inline__)) __wrap_iter(iterator_type __x) noexcept : __i(__x) {}


    template <class _Up> friend class __wrap_iter;
    template <class _CharT, class _Traits, class _Alloc> friend class basic_string;
    template <class _Tp, class _Alloc> friend class __attribute__ ((__visibility__("default"))) vector;

    template <class _Iter1, class _Iter2>
    friend
    bool
    operator==(const __wrap_iter<_Iter1>&, const __wrap_iter<_Iter2>&) noexcept;

    template <class _Iter1, class _Iter2>
    friend
    bool
    operator<(const __wrap_iter<_Iter1>&, const __wrap_iter<_Iter2>&) noexcept;

    template <class _Iter1, class _Iter2>
    friend
    bool
    operator!=(const __wrap_iter<_Iter1>&, const __wrap_iter<_Iter2>&) noexcept;

    template <class _Iter1, class _Iter2>
    friend
    bool
    operator>(const __wrap_iter<_Iter1>&, const __wrap_iter<_Iter2>&) noexcept;

    template <class _Iter1, class _Iter2>
    friend
    bool
    operator>=(const __wrap_iter<_Iter1>&, const __wrap_iter<_Iter2>&) noexcept;

    template <class _Iter1, class _Iter2>
    friend
    bool
    operator<=(const __wrap_iter<_Iter1>&, const __wrap_iter<_Iter2>&) noexcept;


    template <class _Iter1, class _Iter2>
    friend
    auto
    operator-(const __wrap_iter<_Iter1>& __x, const __wrap_iter<_Iter2>& __y) noexcept
    -> decltype(__x.base() - __y.base());







    template <class _Iter1>
    friend
    __wrap_iter<_Iter1>
    operator+(typename __wrap_iter<_Iter1>::difference_type, __wrap_iter<_Iter1>) noexcept;

    template <class _Ip, class _Op> friend _Op copy(_Ip, _Ip, _Op);
    template <class _B1, class _B2> friend _B2 copy_backward(_B1, _B1, _B2);
    template <class _Ip, class _Op> friend _Op move(_Ip, _Ip, _Op);
    template <class _B1, class _B2> friend _B2 move_backward(_B1, _B1, _B2);

    template <class _Tp>
    friend
    typename enable_if
    <
        is_trivially_copy_assignable<_Tp>::value,
        _Tp*
    >::type
    __unwrap_iter(__wrap_iter<_Tp*>);
};

template <class _Iter1, class _Iter2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator==(const __wrap_iter<_Iter1>& __x, const __wrap_iter<_Iter2>& __y) noexcept
{
    return __x.base() == __y.base();
}

template <class _Iter1, class _Iter2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<(const __wrap_iter<_Iter1>& __x, const __wrap_iter<_Iter2>& __y) noexcept
{




    return __x.base() < __y.base();
}

template <class _Iter1, class _Iter2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator!=(const __wrap_iter<_Iter1>& __x, const __wrap_iter<_Iter2>& __y) noexcept
{
    return !(__x == __y);
}

template <class _Iter1, class _Iter2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>(const __wrap_iter<_Iter1>& __x, const __wrap_iter<_Iter2>& __y) noexcept
{
    return __y < __x;
}

template <class _Iter1, class _Iter2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>=(const __wrap_iter<_Iter1>& __x, const __wrap_iter<_Iter2>& __y) noexcept
{
    return !(__x < __y);
}

template <class _Iter1, class _Iter2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<=(const __wrap_iter<_Iter1>& __x, const __wrap_iter<_Iter2>& __y) noexcept
{
    return !(__y < __x);
}

template <class _Iter1>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator!=(const __wrap_iter<_Iter1>& __x, const __wrap_iter<_Iter1>& __y) noexcept
{
    return !(__x == __y);
}

template <class _Iter1>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>(const __wrap_iter<_Iter1>& __x, const __wrap_iter<_Iter1>& __y) noexcept
{
    return __y < __x;
}

template <class _Iter1>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>=(const __wrap_iter<_Iter1>& __x, const __wrap_iter<_Iter1>& __y) noexcept
{
    return !(__x < __y);
}

template <class _Iter1>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<=(const __wrap_iter<_Iter1>& __x, const __wrap_iter<_Iter1>& __y) noexcept
{
    return !(__y < __x);
}


template <class _Iter1, class _Iter2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
auto
operator-(const __wrap_iter<_Iter1>& __x, const __wrap_iter<_Iter2>& __y) noexcept
-> decltype(__x.base() - __y.base())
{




    return __x.base() - __y.base();
}
# 1538 "/opt/intel/sgxsdk/include/libcxx/iterator" 3
template <class _Iter>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
__wrap_iter<_Iter>
operator+(typename __wrap_iter<_Iter>::difference_type __n,
          __wrap_iter<_Iter> __x) noexcept
{
    __x += __n;
    return __x;
}

template <class _Iter>
struct __libcpp_is_trivial_iterator
 : public integral_constant<bool,(is_pointer<_Iter>::value)> {};

template <class _Iter>
struct __libcpp_is_trivial_iterator<move_iterator<_Iter> >
 : public integral_constant<bool,(__libcpp_is_trivial_iterator<_Iter>::value)> {};

template <class _Iter>
struct __libcpp_is_trivial_iterator<reverse_iterator<_Iter> >
 : public integral_constant<bool,(__libcpp_is_trivial_iterator<_Iter>::value)> {};

template <class _Iter>
struct __libcpp_is_trivial_iterator<__wrap_iter<_Iter> >
 : public integral_constant<bool,(__libcpp_is_trivial_iterator<_Iter>::value)> {};


template <class _Tp, size_t _Np>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp*
begin(_Tp (&__array)[_Np])
{
    return __array;
}

template <class _Tp, size_t _Np>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp*
end(_Tp (&__array)[_Np])
{
    return __array + _Np;
}



template <class _Cp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
auto
begin(_Cp& __c) -> decltype(__c.begin())
{
    return __c.begin();
}

template <class _Cp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
auto
begin(const _Cp& __c) -> decltype(__c.begin())
{
    return __c.begin();
}

template <class _Cp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
auto
end(_Cp& __c) -> decltype(__c.end())
{
    return __c.end();
}

template <class _Cp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
auto
end(const _Cp& __c) -> decltype(__c.end())
{
    return __c.end();
}
# 1770 "/opt/intel/sgxsdk/include/libcxx/iterator" 3
} }
# 608 "/opt/intel/sgxsdk/include/libcxx/memory" 2




# 1 "/opt/intel/sgxsdk/include/libcxx/tuple" 1
# 146 "/opt/intel/sgxsdk/include/libcxx/tuple"
       
# 147 "/opt/intel/sgxsdk/include/libcxx/tuple" 3


namespace std { inline namespace __1 {





template <class ..._Tp>
class __attribute__ ((__visibility__("default"))) tuple_size<tuple<_Tp...> >
    : public integral_constant<size_t, sizeof...(_Tp)>
{
};



template <size_t _Ip, class ..._Tp>
class __attribute__ ((__visibility__("default"))) tuple_element<_Ip, tuple<_Tp...> >
{
public:
    typedef typename tuple_element<_Ip, __tuple_types<_Tp...> >::type type;
};
# 177 "/opt/intel/sgxsdk/include/libcxx/tuple" 3
template <size_t _Ip, class _Hp,
          bool=is_empty<_Hp>::value && !__libcpp_is_final<_Hp>::value
         >
class __tuple_leaf;

template <size_t _Ip, class _Hp, bool _Ep>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void swap(__tuple_leaf<_Ip, _Hp, _Ep>& __x, __tuple_leaf<_Ip, _Hp, _Ep>& __y)
    noexcept(__is_nothrow_swappable<_Hp>::value)
{
    swap(__x.get(), __y.get());
}

template <size_t _Ip, class _Hp, bool>
class __tuple_leaf
{
    _Hp value;

    __tuple_leaf& operator=(const __tuple_leaf&);
public:
    __attribute__ ((__visibility__("hidden"), __always_inline__)) constexpr __tuple_leaf()
             noexcept(is_nothrow_default_constructible<_Hp>::value) : value()
       {static_assert(!is_reference<_Hp>::value,
              "Attempted to default construct a reference element in a tuple");}

    template <class _Alloc>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        __tuple_leaf(integral_constant<int, 0>, const _Alloc&)
            : value()
        {static_assert(!is_reference<_Hp>::value,
              "Attempted to default construct a reference element in a tuple");}

    template <class _Alloc>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        __tuple_leaf(integral_constant<int, 1>, const _Alloc& __a)
            : value(allocator_arg_t(), __a)
        {static_assert(!is_reference<_Hp>::value,
              "Attempted to default construct a reference element in a tuple");}

    template <class _Alloc>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        __tuple_leaf(integral_constant<int, 2>, const _Alloc& __a)
            : value(__a)
        {static_assert(!is_reference<_Hp>::value,
              "Attempted to default construct a reference element in a tuple");}

    template <class _Tp,
              class = typename enable_if<
                  __lazy_and<
                      __lazy_not<is_same<typename decay<_Tp>::type, __tuple_leaf>>
                    , is_constructible<_Hp, _Tp>
                    >::value
                >::type
            >
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        explicit __tuple_leaf(_Tp&& __t) noexcept((is_nothrow_constructible<_Hp, _Tp>::value))
            : value(std::__1::forward<_Tp>(__t))
        {static_assert(!is_reference<_Hp>::value ||
                       (is_lvalue_reference<_Hp>::value &&
                        (is_lvalue_reference<_Tp>::value ||
                         is_same<typename remove_reference<_Tp>::type,
                                 reference_wrapper<
                                    typename remove_reference<_Hp>::type
                                 >
                                >::value)) ||
                        (is_rvalue_reference<_Hp>::value &&
                         !is_lvalue_reference<_Tp>::value),
       "Attempted to construct a reference element in a tuple with an rvalue");}

    template <class _Tp, class _Alloc>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        explicit __tuple_leaf(integral_constant<int, 0>, const _Alloc&, _Tp&& __t)
            : value(std::__1::forward<_Tp>(__t))
        {static_assert(!is_lvalue_reference<_Hp>::value ||
                       (is_lvalue_reference<_Hp>::value &&
                        (is_lvalue_reference<_Tp>::value ||
                         is_same<typename remove_reference<_Tp>::type,
                                 reference_wrapper<
                                    typename remove_reference<_Hp>::type
                                 >
                                >::value)),
       "Attempted to construct a reference element in a tuple with an rvalue");}

    template <class _Tp, class _Alloc>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        explicit __tuple_leaf(integral_constant<int, 1>, const _Alloc& __a, _Tp&& __t)
            : value(allocator_arg_t(), __a, std::__1::forward<_Tp>(__t))
        {static_assert(!is_lvalue_reference<_Hp>::value ||
                       (is_lvalue_reference<_Hp>::value &&
                        (is_lvalue_reference<_Tp>::value ||
                         is_same<typename remove_reference<_Tp>::type,
                                 reference_wrapper<
                                    typename remove_reference<_Hp>::type
                                 >
                                >::value)),
       "Attempted to construct a reference element in a tuple with an rvalue");}

    template <class _Tp, class _Alloc>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        explicit __tuple_leaf(integral_constant<int, 2>, const _Alloc& __a, _Tp&& __t)
            : value(std::__1::forward<_Tp>(__t), __a)
        {static_assert(!is_lvalue_reference<_Hp>::value ||
                       (is_lvalue_reference<_Hp>::value &&
                        (is_lvalue_reference<_Tp>::value ||
                         is_same<typename remove_reference<_Tp>::type,
                                 reference_wrapper<
                                    typename remove_reference<_Hp>::type
                                 >
                                >::value)),
       "Attempted to construct a reference element in a tuple with an rvalue");}

    __tuple_leaf(const __tuple_leaf& __t) = default;
    __tuple_leaf(__tuple_leaf&& __t) = default;

    template <class _Tp>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        __tuple_leaf&
        operator=(_Tp&& __t) noexcept((is_nothrow_assignable<_Hp&, _Tp>::value))
        {
            value = std::__1::forward<_Tp>(__t);
            return *this;
        }

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    int swap(__tuple_leaf& __t) noexcept(__is_nothrow_swappable<__tuple_leaf>::value)
    {
        std::__1::swap(*this, __t);
        return 0;
    }

    __attribute__ ((__visibility__("hidden"), __always_inline__)) _Hp& get() noexcept {return value;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) const _Hp& get() const noexcept {return value;}
};

template <size_t _Ip, class _Hp>
class __tuple_leaf<_Ip, _Hp, true>
    : private _Hp
{

    __tuple_leaf& operator=(const __tuple_leaf&);
public:
    __attribute__ ((__visibility__("hidden"), __always_inline__)) constexpr __tuple_leaf()
             noexcept(is_nothrow_default_constructible<_Hp>::value) {}

    template <class _Alloc>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        __tuple_leaf(integral_constant<int, 0>, const _Alloc&) {}

    template <class _Alloc>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        __tuple_leaf(integral_constant<int, 1>, const _Alloc& __a)
            : _Hp(allocator_arg_t(), __a) {}

    template <class _Alloc>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        __tuple_leaf(integral_constant<int, 2>, const _Alloc& __a)
            : _Hp(__a) {}

    template <class _Tp,
              class = typename enable_if<
                  __lazy_and<
                        __lazy_not<is_same<typename decay<_Tp>::type, __tuple_leaf>>
                      , is_constructible<_Hp, _Tp>
                    >::value
                >::type
            >
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        explicit __tuple_leaf(_Tp&& __t) noexcept((is_nothrow_constructible<_Hp, _Tp>::value))
            : _Hp(std::__1::forward<_Tp>(__t)) {}

    template <class _Tp, class _Alloc>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        explicit __tuple_leaf(integral_constant<int, 0>, const _Alloc&, _Tp&& __t)
            : _Hp(std::__1::forward<_Tp>(__t)) {}

    template <class _Tp, class _Alloc>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        explicit __tuple_leaf(integral_constant<int, 1>, const _Alloc& __a, _Tp&& __t)
            : _Hp(allocator_arg_t(), __a, std::__1::forward<_Tp>(__t)) {}

    template <class _Tp, class _Alloc>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        explicit __tuple_leaf(integral_constant<int, 2>, const _Alloc& __a, _Tp&& __t)
            : _Hp(std::__1::forward<_Tp>(__t), __a) {}

    __tuple_leaf(__tuple_leaf const &) = default;
    __tuple_leaf(__tuple_leaf &&) = default;

    template <class _Tp>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        __tuple_leaf&
        operator=(_Tp&& __t) noexcept((is_nothrow_assignable<_Hp&, _Tp>::value))
        {
            _Hp::operator=(std::__1::forward<_Tp>(__t));
            return *this;
        }

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    int
    swap(__tuple_leaf& __t) noexcept(__is_nothrow_swappable<__tuple_leaf>::value)
    {
        std::__1::swap(*this, __t);
        return 0;
    }

    __attribute__ ((__visibility__("hidden"), __always_inline__)) _Hp& get() noexcept {return static_cast<_Hp&>(*this);}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) const _Hp& get() const noexcept {return static_cast<const _Hp&>(*this);}
};

template <class ..._Tp>
__attribute__ ((__visibility__("hidden"), __always_inline__))
void __swallow(_Tp&&...) noexcept {}

template <class ..._Tp>
struct __lazy_all : __all<_Tp::value...> {};

template <class _Tp>
struct __all_default_constructible;

template <class ..._Tp>
struct __all_default_constructible<__tuple_types<_Tp...>>
    : __all<is_default_constructible<_Tp>::value...>
{ };



template<class _Indx, class ..._Tp> struct __tuple_impl;

template<size_t ..._Indx, class ..._Tp>
struct __tuple_impl<__tuple_indices<_Indx...>, _Tp...>
    : public __tuple_leaf<_Indx, _Tp>...
{
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    constexpr __tuple_impl()
        noexcept(__all<is_nothrow_default_constructible<_Tp>::value...>::value) {}

    template <size_t ..._Uf, class ..._Tf,
              size_t ..._Ul, class ..._Tl, class ..._Up>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        explicit
        __tuple_impl(__tuple_indices<_Uf...>, __tuple_types<_Tf...>,
                     __tuple_indices<_Ul...>, __tuple_types<_Tl...>,
                     _Up&&... __u)
                     noexcept((__all<is_nothrow_constructible<_Tf, _Up>::value...>::value && __all<is_nothrow_default_constructible<_Tl>::value...>::value))
                                                                                                 :
            __tuple_leaf<_Uf, _Tf>(std::__1::forward<_Up>(__u))...,
            __tuple_leaf<_Ul, _Tl>()...
            {}

    template <class _Alloc, size_t ..._Uf, class ..._Tf,
              size_t ..._Ul, class ..._Tl, class ..._Up>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        explicit
        __tuple_impl(allocator_arg_t, const _Alloc& __a,
                     __tuple_indices<_Uf...>, __tuple_types<_Tf...>,
                     __tuple_indices<_Ul...>, __tuple_types<_Tl...>,
                     _Up&&... __u) :
            __tuple_leaf<_Uf, _Tf>(__uses_alloc_ctor<_Tf, _Alloc, _Up>(), __a,
            std::__1::forward<_Up>(__u))...,
            __tuple_leaf<_Ul, _Tl>(__uses_alloc_ctor<_Tl, _Alloc>(), __a)...
            {}

    template <class _Tuple,
              class = typename enable_if
                      <
                         __tuple_constructible<_Tuple, tuple<_Tp...> >::value
                      >::type
             >
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        __tuple_impl(_Tuple&& __t) noexcept((__all<is_nothrow_constructible<_Tp, typename tuple_element<_Indx, typename __make_tuple_types<_Tuple>::type>::type>::value...>::value))

            : __tuple_leaf<_Indx, _Tp>(std::__1::forward<typename tuple_element<_Indx,
                                       typename __make_tuple_types<_Tuple>::type>::type>(std::__1::get<_Indx>(__t)))...
            {}

    template <class _Alloc, class _Tuple,
              class = typename enable_if
                      <
                         __tuple_constructible<_Tuple, tuple<_Tp...> >::value
                      >::type
             >
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        __tuple_impl(allocator_arg_t, const _Alloc& __a, _Tuple&& __t)
            : __tuple_leaf<_Indx, _Tp>(__uses_alloc_ctor<_Tp, _Alloc, typename tuple_element<_Indx,
                                       typename __make_tuple_types<_Tuple>::type>::type>(), __a,
                                       std::__1::forward<typename tuple_element<_Indx,
                                       typename __make_tuple_types<_Tuple>::type>::type>(std::__1::get<_Indx>(__t)))...
            {}

    template <class _Tuple>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        typename enable_if
        <
            __tuple_assignable<_Tuple, tuple<_Tp...> >::value,
            __tuple_impl&
        >::type
        operator=(_Tuple&& __t) noexcept((__all<is_nothrow_assignable<_Tp&, typename tuple_element<_Indx, typename __make_tuple_types<_Tuple>::type>::type>::value...>::value))

        {
            __swallow(__tuple_leaf<_Indx, _Tp>::operator=(std::__1::forward<typename tuple_element<_Indx,
                                       typename __make_tuple_types<_Tuple>::type>::type>(std::__1::get<_Indx>(__t)))...);
            return *this;
        }

    __tuple_impl(const __tuple_impl&) = default;
    __tuple_impl(__tuple_impl&&) = default;

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    __tuple_impl&
    operator=(const __tuple_impl& __t) noexcept((__all<is_nothrow_copy_assignable<_Tp>::value...>::value))
    {
        __swallow(__tuple_leaf<_Indx, _Tp>::operator=(static_cast<const __tuple_leaf<_Indx, _Tp>&>(__t).get())...);
        return *this;
    }

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    __tuple_impl&
    operator=(__tuple_impl&& __t) noexcept((__all<is_nothrow_move_assignable<_Tp>::value...>::value))
    {
        __swallow(__tuple_leaf<_Indx, _Tp>::operator=(std::__1::forward<_Tp>(static_cast<__tuple_leaf<_Indx, _Tp>&>(__t).get()))...);
        return *this;
    }

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void swap(__tuple_impl& __t)
        noexcept(__all<__is_nothrow_swappable<_Tp>::value...>::value)
    {
        __swallow(__tuple_leaf<_Indx, _Tp>::swap(static_cast<__tuple_leaf<_Indx, _Tp>&>(__t))...);
    }
};

template <bool _IsTuple, class _SizeTrait, size_t _Expected>
struct __tuple_like_with_size_imp : false_type {};

template <class _SizeTrait, size_t _Expected>
struct __tuple_like_with_size_imp<true, _SizeTrait, _Expected>
    : integral_constant<bool, _SizeTrait::value == _Expected> {};

template <class _Tuple, size_t _ExpectedSize,
          class _RawTuple = typename __uncvref<_Tuple>::type>
using __tuple_like_with_size = __tuple_like_with_size_imp<
                                   __tuple_like<_RawTuple>::value,
                                   tuple_size<_RawTuple>, _ExpectedSize
                              >;


struct __attribute__ ((__visibility__("default"))) __check_tuple_constructor_fail {
    template <class ...>
    static constexpr bool __enable_explicit() { return false; }
    template <class ...>
    static constexpr bool __enable_implicit() { return false; }
};

template <class ..._Tp>
class __attribute__ ((__visibility__("default"))) tuple
{
    typedef __tuple_impl<typename __make_tuple_indices<sizeof...(_Tp)>::type, _Tp...> base;

    base base_;

    template <class ..._Args>
    struct _PackExpandsToThisTuple : false_type {};

    template <class _Arg>
    struct _PackExpandsToThisTuple<_Arg>
        : is_same<typename __uncvref<_Arg>::type, tuple> {};

    template <bool _MaybeEnable, class _Dummy = void>
    struct _CheckArgsConstructor : __check_tuple_constructor_fail {};

    template <class _Dummy>
    struct _CheckArgsConstructor<true, _Dummy>
    {
        template <class ..._Args>
        static constexpr bool __enable_explicit() {
            return
                __tuple_constructible<
                    tuple<_Args...>,
                    typename __make_tuple_types<tuple,
                             sizeof...(_Args) < sizeof...(_Tp) ?
                                 sizeof...(_Args) :
                                 sizeof...(_Tp)>::type
                >::value &&
                !__tuple_convertible<
                    tuple<_Args...>,
                    typename __make_tuple_types<tuple,
                             sizeof...(_Args) < sizeof...(_Tp) ?
                                 sizeof...(_Args) :
                                 sizeof...(_Tp)>::type
                >::value &&
                __all_default_constructible<
                    typename __make_tuple_types<tuple, sizeof...(_Tp),
                             sizeof...(_Args) < sizeof...(_Tp) ?
                                 sizeof...(_Args) :
                                 sizeof...(_Tp)>::type
                >::value;
        }

        template <class ..._Args>
        static constexpr bool __enable_implicit() {
            return
                __tuple_convertible<
                    tuple<_Args...>,
                    typename __make_tuple_types<tuple,
                             sizeof...(_Args) < sizeof...(_Tp) ?
                                 sizeof...(_Args) :
                                 sizeof...(_Tp)>::type
                >::value &&
                __all_default_constructible<
                    typename __make_tuple_types<tuple, sizeof...(_Tp),
                             sizeof...(_Args) < sizeof...(_Tp) ?
                                 sizeof...(_Args) :
                                 sizeof...(_Tp)>::type
                >::value;
        }
    };

    template <bool _MaybeEnable,
              bool = sizeof...(_Tp) == 1,
              class _Dummy = void>
    struct _CheckTupleLikeConstructor : __check_tuple_constructor_fail {};

    template <class _Dummy>
    struct _CheckTupleLikeConstructor<true, false, _Dummy>
    {
        template <class _Tuple>
        static constexpr bool __enable_implicit() {
            return __tuple_convertible<_Tuple, tuple>::value;
        }

        template <class _Tuple>
        static constexpr bool __enable_explicit() {
            return __tuple_constructible<_Tuple, tuple>::value
               && !__tuple_convertible<_Tuple, tuple>::value;
        }
    };

    template <class _Dummy>
    struct _CheckTupleLikeConstructor<true, true, _Dummy>
    {



        template <class _Tuple>
        using _PreferTupleLikeConstructor = __lazy_or<


            is_same<typename __uncvref<_Tuple>::type, tuple>,
            __lazy_and<
                __lazy_not<is_constructible<_Tp..., _Tuple>>,
                __lazy_not<is_convertible<_Tuple, _Tp...>>
            >
        >;

        template <class _Tuple>
        static constexpr bool __enable_implicit() {
            return __lazy_and<
                __tuple_convertible<_Tuple, tuple>,
                _PreferTupleLikeConstructor<_Tuple>
            >::value;
        }

        template <class _Tuple>
        static constexpr bool __enable_explicit() {
            return __lazy_and<
                __tuple_constructible<_Tuple, tuple>,
                _PreferTupleLikeConstructor<_Tuple>,
                __lazy_not<__tuple_convertible<_Tuple, tuple>>
            >::value;
        }
    };

    template <size_t _Jp, class ..._Up> friend
        typename tuple_element<_Jp, tuple<_Up...> >::type& get(tuple<_Up...>&) noexcept;
    template <size_t _Jp, class ..._Up> friend
        const typename tuple_element<_Jp, tuple<_Up...> >::type& get(const tuple<_Up...>&) noexcept;
    template <size_t _Jp, class ..._Up> friend
        typename tuple_element<_Jp, tuple<_Up...> >::type&& get(tuple<_Up...>&&) noexcept;
    template <size_t _Jp, class ..._Up> friend
        const typename tuple_element<_Jp, tuple<_Up...> >::type&& get(const tuple<_Up...>&&) noexcept;
public:

    template <bool _Dummy = true, class = typename enable_if<
        __all<__dependent_type<is_default_constructible<_Tp>, _Dummy>::value...>::value
    >::type>
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    constexpr tuple()
        noexcept(__all<is_nothrow_default_constructible<_Tp>::value...>::value) {}

    template <class _AllocArgT, class _Alloc, bool _Dummy = true, class = typename enable_if<
        __lazy_and<
            is_same<allocator_arg_t, _AllocArgT>,
            __lazy_all<__dependent_type<is_default_constructible<_Tp>, _Dummy>...>
       >::value
    >::type>
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    tuple(_AllocArgT, _Alloc const& __a)
      : base_(allocator_arg_t(), __a,
                    __tuple_indices<>(), __tuple_types<>(),
                    typename __make_tuple_indices<sizeof...(_Tp), 0>::type(),
                    __tuple_types<_Tp...>()) {}

    template <bool _Dummy = true,
              typename enable_if
                      <
                         _CheckArgsConstructor<
                            _Dummy
                         >::template __enable_implicit<_Tp const&...>(),
                         bool
                      >::type = false
        >
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    tuple(const _Tp& ... __t) noexcept((__all<is_nothrow_copy_constructible<_Tp>::value...>::value))
        : base_(typename __make_tuple_indices<sizeof...(_Tp)>::type(),
                typename __make_tuple_types<tuple, sizeof...(_Tp)>::type(),
                typename __make_tuple_indices<0>::type(),
                typename __make_tuple_types<tuple, 0>::type(),
                __t...
               ) {}

    template <bool _Dummy = true,
              typename enable_if
                      <
                         _CheckArgsConstructor<
                            _Dummy
                         >::template __enable_explicit<_Tp const&...>(),
                         bool
                      >::type = false
        >
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    explicit tuple(const _Tp& ... __t) noexcept((__all<is_nothrow_copy_constructible<_Tp>::value...>::value))
        : base_(typename __make_tuple_indices<sizeof...(_Tp)>::type(),
                typename __make_tuple_types<tuple, sizeof...(_Tp)>::type(),
                typename __make_tuple_indices<0>::type(),
                typename __make_tuple_types<tuple, 0>::type(),
                __t...
               ) {}

    template <class _Alloc, bool _Dummy = true,
              typename enable_if
                      <
                         _CheckArgsConstructor<
                            _Dummy
                         >::template __enable_implicit<_Tp const&...>(),
                         bool
                      >::type = false
        >
      __attribute__ ((__visibility__("hidden"), __always_inline__))
      tuple(allocator_arg_t, const _Alloc& __a, const _Tp& ... __t)
        : base_(allocator_arg_t(), __a,
                typename __make_tuple_indices<sizeof...(_Tp)>::type(),
                typename __make_tuple_types<tuple, sizeof...(_Tp)>::type(),
                typename __make_tuple_indices<0>::type(),
                typename __make_tuple_types<tuple, 0>::type(),
                __t...
               ) {}

    template <class _Alloc, bool _Dummy = true,
              typename enable_if
                      <
                         _CheckArgsConstructor<
                            _Dummy
                         >::template __enable_explicit<_Tp const&...>(),
                         bool
                      >::type = false
        >
      __attribute__ ((__visibility__("hidden"), __always_inline__))
      explicit
      tuple(allocator_arg_t, const _Alloc& __a, const _Tp& ... __t)
        : base_(allocator_arg_t(), __a,
                typename __make_tuple_indices<sizeof...(_Tp)>::type(),
                typename __make_tuple_types<tuple, sizeof...(_Tp)>::type(),
                typename __make_tuple_indices<0>::type(),
                typename __make_tuple_types<tuple, 0>::type(),
                __t...
               ) {}

    template <class ..._Up,
              typename enable_if
                      <
                         _CheckArgsConstructor<
                             sizeof...(_Up) <= sizeof...(_Tp)
                             && !_PackExpandsToThisTuple<_Up...>::value
                         >::template __enable_implicit<_Up...>(),
                         bool
                      >::type = false
             >
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        tuple(_Up&&... __u)
            noexcept(( is_nothrow_constructible<base, typename __make_tuple_indices<sizeof...(_Up)>::type, typename __make_tuple_types<tuple, sizeof...(_Up)>::type, typename __make_tuple_indices<sizeof...(_Tp), sizeof...(_Up)>::type, typename __make_tuple_types<tuple, sizeof...(_Tp), sizeof...(_Up)>::type, _Up... >::value ))
# 775 "/opt/intel/sgxsdk/include/libcxx/tuple" 3
            : base_(typename __make_tuple_indices<sizeof...(_Up)>::type(),
                    typename __make_tuple_types<tuple, sizeof...(_Up)>::type(),
                    typename __make_tuple_indices<sizeof...(_Tp), sizeof...(_Up)>::type(),
                    typename __make_tuple_types<tuple, sizeof...(_Tp), sizeof...(_Up)>::type(),
                    std::__1::forward<_Up>(__u)...) {}

    template <class ..._Up,
              typename enable_if
                      <
                         _CheckArgsConstructor<
                             sizeof...(_Up) <= sizeof...(_Tp)
                             && !_PackExpandsToThisTuple<_Up...>::value
                         >::template __enable_explicit<_Up...>(),
                         bool
                      >::type = false
             >
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        explicit
        tuple(_Up&&... __u)
            noexcept(( is_nothrow_constructible<base, typename __make_tuple_indices<sizeof...(_Up)>::type, typename __make_tuple_types<tuple, sizeof...(_Up)>::type, typename __make_tuple_indices<sizeof...(_Tp), sizeof...(_Up)>::type, typename __make_tuple_types<tuple, sizeof...(_Tp), sizeof...(_Up)>::type, _Up... >::value ))
# 803 "/opt/intel/sgxsdk/include/libcxx/tuple" 3
            : base_(typename __make_tuple_indices<sizeof...(_Up)>::type(),
                    typename __make_tuple_types<tuple, sizeof...(_Up)>::type(),
                    typename __make_tuple_indices<sizeof...(_Tp), sizeof...(_Up)>::type(),
                    typename __make_tuple_types<tuple, sizeof...(_Tp), sizeof...(_Up)>::type(),
                    std::__1::forward<_Up>(__u)...) {}

    template <class _Alloc, class ..._Up,
              typename enable_if
                      <
                         _CheckArgsConstructor<
                             sizeof...(_Up) == sizeof...(_Tp) &&
                             !_PackExpandsToThisTuple<_Up...>::value
                         >::template __enable_implicit<_Up...>(),
                         bool
                      >::type = false
             >
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        tuple(allocator_arg_t, const _Alloc& __a, _Up&&... __u)
            : base_(allocator_arg_t(), __a,
                    typename __make_tuple_indices<sizeof...(_Up)>::type(),
                    typename __make_tuple_types<tuple, sizeof...(_Up)>::type(),
                    typename __make_tuple_indices<sizeof...(_Tp), sizeof...(_Up)>::type(),
                    typename __make_tuple_types<tuple, sizeof...(_Tp), sizeof...(_Up)>::type(),
                    std::__1::forward<_Up>(__u)...) {}

    template <class _Alloc, class ..._Up,
              typename enable_if
                      <
                         _CheckArgsConstructor<
                             sizeof...(_Up) == sizeof...(_Tp) &&
                             !_PackExpandsToThisTuple<_Up...>::value
                         >::template __enable_explicit<_Up...>(),
                         bool
                      >::type = false
             >
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        explicit
        tuple(allocator_arg_t, const _Alloc& __a, _Up&&... __u)
            : base_(allocator_arg_t(), __a,
                    typename __make_tuple_indices<sizeof...(_Up)>::type(),
                    typename __make_tuple_types<tuple, sizeof...(_Up)>::type(),
                    typename __make_tuple_indices<sizeof...(_Tp), sizeof...(_Up)>::type(),
                    typename __make_tuple_types<tuple, sizeof...(_Tp), sizeof...(_Up)>::type(),
                    std::__1::forward<_Up>(__u)...) {}

    template <class _Tuple,
              typename enable_if
                      <
                         _CheckTupleLikeConstructor<
                             __tuple_like_with_size<_Tuple, sizeof...(_Tp)>::value
                             && !_PackExpandsToThisTuple<_Tuple>::value
                         >::template __enable_implicit<_Tuple>(),
                         bool
                      >::type = false
             >
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        tuple(_Tuple&& __t) noexcept((is_nothrow_constructible<base, _Tuple>::value))
            : base_(std::__1::forward<_Tuple>(__t)) {}

    template <class _Tuple,
              typename enable_if
                      <
                         _CheckTupleLikeConstructor<
                             __tuple_like_with_size<_Tuple, sizeof...(_Tp)>::value
                             && !_PackExpandsToThisTuple<_Tuple>::value
                         >::template __enable_explicit<_Tuple>(),
                         bool
                      >::type = false
             >
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        explicit
        tuple(_Tuple&& __t) noexcept((is_nothrow_constructible<base, _Tuple>::value))
            : base_(std::__1::forward<_Tuple>(__t)) {}

    template <class _Alloc, class _Tuple,
              typename enable_if
                      <
                         _CheckTupleLikeConstructor<
                             __tuple_like_with_size<_Tuple, sizeof...(_Tp)>::value
                         >::template __enable_implicit<_Tuple>(),
                         bool
                      >::type = false
             >
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        tuple(allocator_arg_t, const _Alloc& __a, _Tuple&& __t)
            : base_(allocator_arg_t(), __a, std::__1::forward<_Tuple>(__t)) {}

    template <class _Alloc, class _Tuple,
              typename enable_if
                      <
                         _CheckTupleLikeConstructor<
                             __tuple_like_with_size<_Tuple, sizeof...(_Tp)>::value
                         >::template __enable_explicit<_Tuple>(),
                         bool
                      >::type = false
             >
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        explicit
        tuple(allocator_arg_t, const _Alloc& __a, _Tuple&& __t)
            : base_(allocator_arg_t(), __a, std::__1::forward<_Tuple>(__t)) {}

    template <class _Tuple,
              class = typename enable_if
                      <
                         __tuple_assignable<_Tuple, tuple>::value
                      >::type
             >
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        tuple&
        operator=(_Tuple&& __t) noexcept((is_nothrow_assignable<base&, _Tuple>::value))
        {
            base_.operator=(std::__1::forward<_Tuple>(__t));
            return *this;
        }

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void swap(tuple& __t) noexcept(__all<__is_nothrow_swappable<_Tp>::value...>::value)
        {base_.swap(__t.base_);}
};

template <>
class __attribute__ ((__visibility__("default"))) tuple<>
{
public:
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    constexpr tuple() noexcept {}
    template <class _Alloc>
    __attribute__ ((__visibility__("hidden"), __always_inline__))
        tuple(allocator_arg_t, const _Alloc&) noexcept {}
    template <class _Alloc>
    __attribute__ ((__visibility__("hidden"), __always_inline__))
        tuple(allocator_arg_t, const _Alloc&, const tuple&) noexcept {}
    template <class _Up>
    __attribute__ ((__visibility__("hidden"), __always_inline__))
        tuple(array<_Up, 0>) noexcept {}
    template <class _Alloc, class _Up>
    __attribute__ ((__visibility__("hidden"), __always_inline__))
        tuple(allocator_arg_t, const _Alloc&, array<_Up, 0>) noexcept {}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void swap(tuple&) noexcept {}
};

template <class ..._Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    __all<__is_swappable<_Tp>::value...>::value,
    void
>::type
swap(tuple<_Tp...>& __t, tuple<_Tp...>& __u)
                 noexcept(__all<__is_nothrow_swappable<_Tp>::value...>::value)
    {__t.swap(__u);}



template <size_t _Ip, class ..._Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename tuple_element<_Ip, tuple<_Tp...> >::type&
get(tuple<_Tp...>& __t) noexcept
{
    typedef typename tuple_element<_Ip, tuple<_Tp...> >::type type;
    return static_cast<__tuple_leaf<_Ip, type>&>(__t.base_).get();
}

template <size_t _Ip, class ..._Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
const typename tuple_element<_Ip, tuple<_Tp...> >::type&
get(const tuple<_Tp...>& __t) noexcept
{
    typedef typename tuple_element<_Ip, tuple<_Tp...> >::type type;
    return static_cast<const __tuple_leaf<_Ip, type>&>(__t.base_).get();
}

template <size_t _Ip, class ..._Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename tuple_element<_Ip, tuple<_Tp...> >::type&&
get(tuple<_Tp...>&& __t) noexcept
{
    typedef typename tuple_element<_Ip, tuple<_Tp...> >::type type;
    return static_cast<type&&>(
             static_cast<__tuple_leaf<_Ip, type>&&>(__t.base_).get());
}

template <size_t _Ip, class ..._Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
const typename tuple_element<_Ip, tuple<_Tp...> >::type&&
get(const tuple<_Tp...>&& __t) noexcept
{
    typedef typename tuple_element<_Ip, tuple<_Tp...> >::type type;
    return static_cast<const type&&>(
             static_cast<const __tuple_leaf<_Ip, type>&&>(__t.base_).get());
}
# 1068 "/opt/intel/sgxsdk/include/libcxx/tuple" 3
template <class ..._Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
tuple<_Tp&...>
tie(_Tp&... __t) noexcept
{
    return tuple<_Tp&...>(__t...);
}

template <class _Up>
struct __ignore_t
{
    template <class _Tp>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        const __ignore_t& operator=(_Tp&&) const {return *this;}
};

namespace { const __ignore_t<unsigned char> ignore = __ignore_t<unsigned char>(); }

template <class _Tp>
struct __make_tuple_return_impl
{
    typedef _Tp type;
};

template <class _Tp>
struct __make_tuple_return_impl<reference_wrapper<_Tp> >
{
    typedef _Tp& type;
};

template <class _Tp>
struct __make_tuple_return
{
    typedef typename __make_tuple_return_impl<typename decay<_Tp>::type>::type type;
};

template <class... _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
tuple<typename __make_tuple_return<_Tp>::type...>
make_tuple(_Tp&&... __t)
{
    return tuple<typename __make_tuple_return<_Tp>::type...>(std::__1::forward<_Tp>(__t)...);
}

template <class... _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
tuple<_Tp&&...>
forward_as_tuple(_Tp&&... __t) noexcept
{
    return tuple<_Tp&&...>(std::__1::forward<_Tp>(__t)...);
}

template <size_t _Ip>
struct __tuple_equal
{
    template <class _Tp, class _Up>
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator()(const _Tp& __x, const _Up& __y)
    {
        return __tuple_equal<_Ip - 1>()(__x, __y) && std::__1::get<_Ip-1>(__x) == std::__1::get<_Ip-1>(__y);
    }
};

template <>
struct __tuple_equal<0>
{
    template <class _Tp, class _Up>
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator()(const _Tp&, const _Up&)
    {
        return true;
    }
};

template <class ..._Tp, class ..._Up>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator==(const tuple<_Tp...>& __x, const tuple<_Up...>& __y)
{
    return __tuple_equal<sizeof...(_Tp)>()(__x, __y);
}

template <class ..._Tp, class ..._Up>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator!=(const tuple<_Tp...>& __x, const tuple<_Up...>& __y)
{
    return !(__x == __y);
}

template <size_t _Ip>
struct __tuple_less
{
    template <class _Tp, class _Up>
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator()(const _Tp& __x, const _Up& __y)
    {
        const size_t __idx = tuple_size<_Tp>::value - _Ip;
        if (std::__1::get<__idx>(__x) < std::__1::get<__idx>(__y))
            return true;
        if (std::__1::get<__idx>(__y) < std::__1::get<__idx>(__x))
            return false;
        return __tuple_less<_Ip-1>()(__x, __y);
    }
};

template <>
struct __tuple_less<0>
{
    template <class _Tp, class _Up>
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator()(const _Tp&, const _Up&)
    {
        return false;
    }
};

template <class ..._Tp, class ..._Up>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<(const tuple<_Tp...>& __x, const tuple<_Up...>& __y)
{
    return __tuple_less<sizeof...(_Tp)>()(__x, __y);
}

template <class ..._Tp, class ..._Up>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>(const tuple<_Tp...>& __x, const tuple<_Up...>& __y)
{
    return __y < __x;
}

template <class ..._Tp, class ..._Up>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>=(const tuple<_Tp...>& __x, const tuple<_Up...>& __y)
{
    return !(__x < __y);
}

template <class ..._Tp, class ..._Up>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<=(const tuple<_Tp...>& __x, const tuple<_Up...>& __y)
{
    return !(__y < __x);
}



template <class _Tp, class _Up> struct __tuple_cat_type;

template <class ..._Ttypes, class ..._Utypes>
struct __tuple_cat_type<tuple<_Ttypes...>, __tuple_types<_Utypes...> >
{
    typedef tuple<_Ttypes..., _Utypes...> type;
};

template <class _ResultTuple, bool _Is_Tuple0TupleLike, class ..._Tuples>
struct __tuple_cat_return_1
{
};

template <class ..._Types, class _Tuple0>
struct __tuple_cat_return_1<tuple<_Types...>, true, _Tuple0>
{
    typedef typename __tuple_cat_type<tuple<_Types...>,
            typename __make_tuple_types<typename remove_reference<_Tuple0>::type>::type>::type
                                                                           type;
};

template <class ..._Types, class _Tuple0, class _Tuple1, class ..._Tuples>
struct __tuple_cat_return_1<tuple<_Types...>, true, _Tuple0, _Tuple1, _Tuples...>
    : public __tuple_cat_return_1<
                 typename __tuple_cat_type<
                     tuple<_Types...>,
                     typename __make_tuple_types<typename remove_reference<_Tuple0>::type>::type
                 >::type,
                 __tuple_like<typename remove_reference<_Tuple1>::type>::value,
                 _Tuple1, _Tuples...>
{
};

template <class ..._Tuples> struct __tuple_cat_return;

template <class _Tuple0, class ..._Tuples>
struct __tuple_cat_return<_Tuple0, _Tuples...>
    : public __tuple_cat_return_1<tuple<>,
         __tuple_like<typename remove_reference<_Tuple0>::type>::value, _Tuple0,
                                                                     _Tuples...>
{
};

template <>
struct __tuple_cat_return<>
{
    typedef tuple<> type;
};

inline __attribute__ ((__visibility__("hidden"), __always_inline__))
tuple<>
tuple_cat()
{
    return tuple<>();
}

template <class _Rp, class _Indices, class _Tuple0, class ..._Tuples>
struct __tuple_cat_return_ref_imp;

template <class ..._Types, size_t ..._I0, class _Tuple0>
struct __tuple_cat_return_ref_imp<tuple<_Types...>, __tuple_indices<_I0...>, _Tuple0>
{
    typedef typename remove_reference<_Tuple0>::type _T0;
    typedef tuple<_Types..., typename __apply_cv<_Tuple0,
                          typename tuple_element<_I0, _T0>::type>::type&&...> type;
};

template <class ..._Types, size_t ..._I0, class _Tuple0, class _Tuple1, class ..._Tuples>
struct __tuple_cat_return_ref_imp<tuple<_Types...>, __tuple_indices<_I0...>,
                                  _Tuple0, _Tuple1, _Tuples...>
    : public __tuple_cat_return_ref_imp<
         tuple<_Types..., typename __apply_cv<_Tuple0,
               typename tuple_element<_I0,
                  typename remove_reference<_Tuple0>::type>::type>::type&&...>,
         typename __make_tuple_indices<tuple_size<typename
                                 remove_reference<_Tuple1>::type>::value>::type,
         _Tuple1, _Tuples...>
{
};

template <class _Tuple0, class ..._Tuples>
struct __tuple_cat_return_ref
    : public __tuple_cat_return_ref_imp<tuple<>,
               typename __make_tuple_indices<
                        tuple_size<typename remove_reference<_Tuple0>::type>::value
               >::type, _Tuple0, _Tuples...>
{
};

template <class _Types, class _I0, class _J0>
struct __tuple_cat;

template <class ..._Types, size_t ..._I0, size_t ..._J0>
struct __tuple_cat<tuple<_Types...>, __tuple_indices<_I0...>, __tuple_indices<_J0...> >
{
    template <class _Tuple0>
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    typename __tuple_cat_return_ref<tuple<_Types...>&&, _Tuple0&&>::type
    operator()(tuple<_Types...> __t, _Tuple0&& __t0)
    {
        return forward_as_tuple(std::__1::forward<_Types>(std::__1::get<_I0>(__t))...,
                                      std::__1::get<_J0>(std::__1::forward<_Tuple0>(__t0))...);
    }

    template <class _Tuple0, class _Tuple1, class ..._Tuples>
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    typename __tuple_cat_return_ref<tuple<_Types...>&&, _Tuple0&&, _Tuple1&&, _Tuples&&...>::type
    operator()(tuple<_Types...> __t, _Tuple0&& __t0, _Tuple1&& __t1, _Tuples&& ...__tpls)
    {
        typedef typename remove_reference<_Tuple0>::type _T0;
        typedef typename remove_reference<_Tuple1>::type _T1;
        return __tuple_cat<
           tuple<_Types..., typename __apply_cv<_Tuple0, typename tuple_element<_J0, _T0>::type>::type&&...>,
           typename __make_tuple_indices<sizeof ...(_Types) + tuple_size<_T0>::value>::type,
           typename __make_tuple_indices<tuple_size<_T1>::value>::type>()
                           (forward_as_tuple(
                              std::__1::forward<_Types>(std::__1::get<_I0>(__t))...,
                              std::__1::get<_J0>(std::__1::forward<_Tuple0>(__t0))...
                            ),
                            std::__1::forward<_Tuple1>(__t1),
                            std::__1::forward<_Tuples>(__tpls)...);
    }
};

template <class _Tuple0, class... _Tuples>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename __tuple_cat_return<_Tuple0, _Tuples...>::type
tuple_cat(_Tuple0&& __t0, _Tuples&&... __tpls)
{
    typedef typename remove_reference<_Tuple0>::type _T0;
    return __tuple_cat<tuple<>, __tuple_indices<>,
                  typename __make_tuple_indices<tuple_size<_T0>::value>::type>()
                  (tuple<>(), std::__1::forward<_Tuple0>(__t0),
                                            std::__1::forward<_Tuples>(__tpls)...);
}

template <class ..._Tp, class _Alloc>
struct __attribute__ ((__visibility__("default"))) uses_allocator<tuple<_Tp...>, _Alloc>
    : true_type {};

template <class _T1, class _T2>
template <class... _Args1, class... _Args2, size_t ..._I1, size_t ..._I2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
pair<_T1, _T2>::pair(piecewise_construct_t,
                     tuple<_Args1...>& __first_args, tuple<_Args2...>& __second_args,
                     __tuple_indices<_I1...>, __tuple_indices<_I2...>)
    : first(std::__1::forward<_Args1>(std::__1::get<_I1>( __first_args))...),
      second(std::__1::forward<_Args2>(std::__1::get<_I2>(__second_args))...)
{
}
# 1416 "/opt/intel/sgxsdk/include/libcxx/tuple" 3
} }
# 613 "/opt/intel/sgxsdk/include/libcxx/memory" 2
# 1 "/opt/intel/sgxsdk/include/libcxx/stdexcept" 1
# 50 "/opt/intel/sgxsdk/include/libcxx/stdexcept"
       
# 51 "/opt/intel/sgxsdk/include/libcxx/stdexcept" 3



namespace std { inline namespace __1 {
class __attribute__ ((__visibility__("hidden"))) __libcpp_refstring {



    const char *__imp_;

};
} }


namespace std
{

class __attribute__ ((__visibility__("default"))) logic_error
    : public exception
{
private:
    std::__1::__libcpp_refstring __imp_;
public:
    explicit logic_error(const string&);
    explicit logic_error(const char*);

    logic_error(const logic_error&) noexcept;
    logic_error& operator=(const logic_error&) noexcept;

    virtual ~logic_error() noexcept;

    virtual const char* what() const noexcept;
};

class __attribute__ ((__visibility__("default"))) runtime_error
    : public exception
{
private:
    std::__1::__libcpp_refstring __imp_;
public:
    explicit runtime_error(const string&);
    explicit runtime_error(const char*);

    runtime_error(const runtime_error&) noexcept;
    runtime_error& operator=(const runtime_error&) noexcept;

    virtual ~runtime_error() noexcept;

    virtual const char* what() const noexcept;
};

class __attribute__ ((__visibility__("default"))) domain_error
    : public logic_error
{
public:
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit domain_error(const string& __s) : logic_error(__s) {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit domain_error(const char* __s) : logic_error(__s) {}

    virtual ~domain_error() noexcept;
};

class __attribute__ ((__visibility__("default"))) invalid_argument
    : public logic_error
{
public:
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit invalid_argument(const string& __s) : logic_error(__s) {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit invalid_argument(const char* __s) : logic_error(__s) {}

    virtual ~invalid_argument() noexcept;
};

class __attribute__ ((__visibility__("default"))) length_error
    : public logic_error
{
public:
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit length_error(const string& __s) : logic_error(__s) {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit length_error(const char* __s) : logic_error(__s) {}

    virtual ~length_error() noexcept;
};

class __attribute__ ((__visibility__("default"))) out_of_range
    : public logic_error
{
public:
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit out_of_range(const string& __s) : logic_error(__s) {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit out_of_range(const char* __s) : logic_error(__s) {}

    virtual ~out_of_range() noexcept;
};

class __attribute__ ((__visibility__("default"))) range_error
    : public runtime_error
{
public:
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit range_error(const string& __s) : runtime_error(__s) {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit range_error(const char* __s) : runtime_error(__s) {}

    virtual ~range_error() noexcept;
};

class __attribute__ ((__visibility__("default"))) overflow_error
    : public runtime_error
{
public:
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit overflow_error(const string& __s) : runtime_error(__s) {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit overflow_error(const char* __s) : runtime_error(__s) {}

    virtual ~overflow_error() noexcept;
};

class __attribute__ ((__visibility__("default"))) underflow_error
    : public runtime_error
{
public:
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit underflow_error(const string& __s) : runtime_error(__s) {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit underflow_error(const char* __s) : runtime_error(__s) {}

    virtual ~underflow_error() noexcept;
};

}
# 614 "/opt/intel/sgxsdk/include/libcxx/memory" 2






# 1 "/opt/intel/sgxsdk/include/libcxx/atomic" 1
# 550 "/opt/intel/sgxsdk/include/libcxx/atomic"
# 1 "/opt/intel/sgxsdk/include/libcxx/cstdlib" 1
# 94 "/opt/intel/sgxsdk/include/libcxx/cstdlib"
       
# 95 "/opt/intel/sgxsdk/include/libcxx/cstdlib" 3


namespace std { inline namespace __1 {

using ::size_t;
using ::div_t;
using ::ldiv_t;

using ::lldiv_t;

using ::atof;
using ::atoi;
using ::atol;

using ::atoll;

using ::strtod;
using ::strtof;
using ::strtold;
using ::strtol;

using ::strtoll;

using ::strtoul;

using ::strtoull;







using ::calloc;
using ::free;
using ::malloc;
using ::realloc;
using ::abort;
# 142 "/opt/intel/sgxsdk/include/libcxx/cstdlib" 3
using ::bsearch;
using ::qsort;

using ::abs;

using ::labs;


using ::llabs;


using ::div;

using ::ldiv;


using ::lldiv;


using ::mblen;
using ::mbtowc;
using ::wctomb;

using ::mbstowcs;
using ::wcstombs;
# 177 "/opt/intel/sgxsdk/include/libcxx/cstdlib" 3
inline __attribute__ ((__visibility__("hidden"), __always_inline__)) long abs( long __x) noexcept {return labs(__x);}

inline __attribute__ ((__visibility__("hidden"), __always_inline__)) long long abs(long long __x) noexcept {return llabs(__x);}


inline __attribute__ ((__visibility__("hidden"), __always_inline__)) ldiv_t div( long __x, long __y) noexcept {return ldiv(__x, __y);}

inline __attribute__ ((__visibility__("hidden"), __always_inline__)) lldiv_t div(long long __x, long long __y) noexcept {return lldiv(__x, __y);}



} }
# 551 "/opt/intel/sgxsdk/include/libcxx/atomic" 2



       
# 555 "/opt/intel/sgxsdk/include/libcxx/atomic" 3
# 569 "/opt/intel/sgxsdk/include/libcxx/atomic" 3
namespace std { inline namespace __1 {

typedef enum memory_order
{
    memory_order_relaxed, memory_order_consume, memory_order_acquire,
    memory_order_release, memory_order_acq_rel, memory_order_seq_cst
} memory_order;


namespace __gcc_atomic {
template <typename _Tp>
struct __gcc_atomic_t {


    static_assert(is_trivially_copyable<_Tp>::value,
      "std::atomic<Tp> requires that 'Tp' be a trivially copyable type");


  __attribute__ ((__visibility__("hidden"), __always_inline__))

    __gcc_atomic_t() noexcept = default;



  constexpr explicit __gcc_atomic_t(_Tp value) noexcept
    : __a_value(value) {}
  _Tp __a_value;
};


template <typename _Tp> _Tp __create();

template <typename _Tp, typename _Td>
typename enable_if<sizeof(_Tp()->__a_value = __create<_Td>()), char>::type
    __test_atomic_assignable(int);
template <typename _Tp, typename _Up>
__two __test_atomic_assignable(...);

template <typename _Tp, typename _Td>
struct __can_assign {
  static const bool value =
      sizeof(__test_atomic_assignable<_Tp, _Td>(1)) == sizeof(char);
};

static inline constexpr int __to_gcc_order(memory_order __order) {

  return __order == memory_order_relaxed ? 0:
         (__order == memory_order_acquire ? 2:
          (__order == memory_order_release ? 3:
           (__order == memory_order_seq_cst ? 5:
            (__order == memory_order_acq_rel ? 4:
              1))));
}

static inline constexpr int __to_gcc_failure_order(memory_order __order) {

  return __order == memory_order_relaxed ? 0:
         (__order == memory_order_acquire ? 2:
          (__order == memory_order_release ? 0:
           (__order == memory_order_seq_cst ? 5:
            (__order == memory_order_acq_rel ? 2:
              1))));
}

}

template <typename _Tp>
static inline
typename enable_if<
    __gcc_atomic::__can_assign<volatile __gcc_atomic::__gcc_atomic_t<_Tp>*, _Tp>::value>::type
__c11_atomic_init(volatile __gcc_atomic::__gcc_atomic_t<_Tp>* __a, _Tp __val) {
  __a->__a_value = __val;
}

template <typename _Tp>
static inline
typename enable_if<
    !__gcc_atomic::__can_assign<volatile __gcc_atomic::__gcc_atomic_t<_Tp>*, _Tp>::value &&
     __gcc_atomic::__can_assign< __gcc_atomic::__gcc_atomic_t<_Tp>*, _Tp>::value>::type
__c11_atomic_init(volatile __gcc_atomic::__gcc_atomic_t<_Tp>* __a, _Tp __val) {



  volatile char* to = reinterpret_cast<volatile char*>(&__a->__a_value);
  volatile char* end = to + sizeof(_Tp);
  char* from = reinterpret_cast<char*>(&__val);
  while (to != end) {
    *to++ = *from++;
  }
}

template <typename _Tp>
static inline void __c11_atomic_init(__gcc_atomic::__gcc_atomic_t<_Tp>* __a, _Tp __val) {
  __a->__a_value = __val;
}

static inline void __c11_atomic_thread_fence(memory_order __order) {
  __atomic_thread_fence(__gcc_atomic::__to_gcc_order(__order));
}

static inline void __c11_atomic_signal_fence(memory_order __order) {
  __atomic_signal_fence(__gcc_atomic::__to_gcc_order(__order));
}

template <typename _Tp>
static inline void __c11_atomic_store(volatile __gcc_atomic::__gcc_atomic_t<_Tp>* __a, _Tp __val,
                                      memory_order __order) {
  return __atomic_store(&__a->__a_value, &__val,
                        __gcc_atomic::__to_gcc_order(__order));
}

template <typename _Tp>
static inline void __c11_atomic_store(__gcc_atomic::__gcc_atomic_t<_Tp>* __a, _Tp __val,
                                      memory_order __order) {
  __atomic_store(&__a->__a_value, &__val,
                 __gcc_atomic::__to_gcc_order(__order));
}

template <typename _Tp>
static inline _Tp __c11_atomic_load(volatile __gcc_atomic::__gcc_atomic_t<_Tp>* __a,
                                    memory_order __order) {
  _Tp __ret;
  __atomic_load(&__a->__a_value, &__ret,
                __gcc_atomic::__to_gcc_order(__order));
  return __ret;
}

template <typename _Tp>
static inline _Tp __c11_atomic_load(__gcc_atomic::__gcc_atomic_t<_Tp>* __a, memory_order __order) {
  _Tp __ret;
  __atomic_load(&__a->__a_value, &__ret,
                __gcc_atomic::__to_gcc_order(__order));
  return __ret;
}

template <typename _Tp>
static inline _Tp __c11_atomic_exchange(volatile __gcc_atomic::__gcc_atomic_t<_Tp>* __a,
                                        _Tp __value, memory_order __order) {
  _Tp __ret;
  __atomic_exchange(&__a->__a_value, &__value, &__ret,
                    __gcc_atomic::__to_gcc_order(__order));
  return __ret;
}

template <typename _Tp>
static inline _Tp __c11_atomic_exchange(__gcc_atomic::__gcc_atomic_t<_Tp>* __a, _Tp __value,
                                        memory_order __order) {
  _Tp __ret;
  __atomic_exchange(&__a->__a_value, &__value, &__ret,
                    __gcc_atomic::__to_gcc_order(__order));
  return __ret;
}

template <typename _Tp>
static inline bool __c11_atomic_compare_exchange_strong(
    volatile __gcc_atomic::__gcc_atomic_t<_Tp>* __a, _Tp* __expected, _Tp __value,
    memory_order __success, memory_order __failure) {
  return __atomic_compare_exchange(&__a->__a_value, __expected, &__value,
                                   false,
                                   __gcc_atomic::__to_gcc_order(__success),
                                   __gcc_atomic::__to_gcc_failure_order(__failure));
}

template <typename _Tp>
static inline bool __c11_atomic_compare_exchange_strong(
    __gcc_atomic::__gcc_atomic_t<_Tp>* __a, _Tp* __expected, _Tp __value, memory_order __success,
    memory_order __failure) {
  return __atomic_compare_exchange(&__a->__a_value, __expected, &__value,
                                   false,
                                   __gcc_atomic::__to_gcc_order(__success),
                                   __gcc_atomic::__to_gcc_failure_order(__failure));
}

template <typename _Tp>
static inline bool __c11_atomic_compare_exchange_weak(
    volatile __gcc_atomic::__gcc_atomic_t<_Tp>* __a, _Tp* __expected, _Tp __value,
    memory_order __success, memory_order __failure) {
  return __atomic_compare_exchange(&__a->__a_value, __expected, &__value,
                                   true,
                                   __gcc_atomic::__to_gcc_order(__success),
                                   __gcc_atomic::__to_gcc_failure_order(__failure));
}

template <typename _Tp>
static inline bool __c11_atomic_compare_exchange_weak(
    __gcc_atomic::__gcc_atomic_t<_Tp>* __a, _Tp* __expected, _Tp __value, memory_order __success,
    memory_order __failure) {
  return __atomic_compare_exchange(&__a->__a_value, __expected, &__value,
                                   true,
                                   __gcc_atomic::__to_gcc_order(__success),
                                   __gcc_atomic::__to_gcc_failure_order(__failure));
}

template <typename _Tp>
struct __skip_amt { enum {value = 1}; };

template <typename _Tp>
struct __skip_amt<_Tp*> { enum {value = sizeof(_Tp)}; };



template <typename _Tp>
struct __skip_amt<_Tp[]> { };
template <typename _Tp, int n>
struct __skip_amt<_Tp[n]> { };

template <typename _Tp, typename _Td>
static inline _Tp __c11_atomic_fetch_add(volatile __gcc_atomic::__gcc_atomic_t<_Tp>* __a,
                                         _Td __delta, memory_order __order) {
  return __atomic_fetch_add(&__a->__a_value, __delta * __skip_amt<_Tp>::value,
                            __gcc_atomic::__to_gcc_order(__order));
}

template <typename _Tp, typename _Td>
static inline _Tp __c11_atomic_fetch_add(__gcc_atomic::__gcc_atomic_t<_Tp>* __a, _Td __delta,
                                         memory_order __order) {
  return __atomic_fetch_add(&__a->__a_value, __delta * __skip_amt<_Tp>::value,
                            __gcc_atomic::__to_gcc_order(__order));
}

template <typename _Tp, typename _Td>
static inline _Tp __c11_atomic_fetch_sub(volatile __gcc_atomic::__gcc_atomic_t<_Tp>* __a,
                                         _Td __delta, memory_order __order) {
  return __atomic_fetch_sub(&__a->__a_value, __delta * __skip_amt<_Tp>::value,
                            __gcc_atomic::__to_gcc_order(__order));
}

template <typename _Tp, typename _Td>
static inline _Tp __c11_atomic_fetch_sub(__gcc_atomic::__gcc_atomic_t<_Tp>* __a, _Td __delta,
                                         memory_order __order) {
  return __atomic_fetch_sub(&__a->__a_value, __delta * __skip_amt<_Tp>::value,
                            __gcc_atomic::__to_gcc_order(__order));
}

template <typename _Tp>
static inline _Tp __c11_atomic_fetch_and(volatile __gcc_atomic::__gcc_atomic_t<_Tp>* __a,
                                         _Tp __pattern, memory_order __order) {
  return __atomic_fetch_and(&__a->__a_value, __pattern,
                            __gcc_atomic::__to_gcc_order(__order));
}

template <typename _Tp>
static inline _Tp __c11_atomic_fetch_and(__gcc_atomic::__gcc_atomic_t<_Tp>* __a,
                                         _Tp __pattern, memory_order __order) {
  return __atomic_fetch_and(&__a->__a_value, __pattern,
                            __gcc_atomic::__to_gcc_order(__order));
}

template <typename _Tp>
static inline _Tp __c11_atomic_fetch_or(volatile __gcc_atomic::__gcc_atomic_t<_Tp>* __a,
                                        _Tp __pattern, memory_order __order) {
  return __atomic_fetch_or(&__a->__a_value, __pattern,
                           __gcc_atomic::__to_gcc_order(__order));
}

template <typename _Tp>
static inline _Tp __c11_atomic_fetch_or(__gcc_atomic::__gcc_atomic_t<_Tp>* __a, _Tp __pattern,
                                        memory_order __order) {
  return __atomic_fetch_or(&__a->__a_value, __pattern,
                           __gcc_atomic::__to_gcc_order(__order));
}

template <typename _Tp>
static inline _Tp __c11_atomic_fetch_xor(volatile __gcc_atomic::__gcc_atomic_t<_Tp>* __a,
                                         _Tp __pattern, memory_order __order) {
  return __atomic_fetch_xor(&__a->__a_value, __pattern,
                            __gcc_atomic::__to_gcc_order(__order));
}

template <typename _Tp>
static inline _Tp __c11_atomic_fetch_xor(__gcc_atomic::__gcc_atomic_t<_Tp>* __a, _Tp __pattern,
                                         memory_order __order) {
  return __atomic_fetch_xor(&__a->__a_value, __pattern,
                            __gcc_atomic::__to_gcc_order(__order));
}


template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp
kill_dependency(_Tp __y) noexcept
{
    return __y;
}
# 879 "/opt/intel/sgxsdk/include/libcxx/atomic" 3
template <class _Tp, bool = is_integral<_Tp>::value && !is_same<_Tp, bool>::value>
struct __atomic_base
{
    mutable __gcc_atomic::__gcc_atomic_t<_Tp> __a_;





    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool is_lock_free() const volatile noexcept
    {

    return false;







    }
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool is_lock_free() const noexcept
        {return static_cast<__atomic_base const volatile*>(this)->is_lock_free();}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void store(_Tp __d, memory_order __m = memory_order_seq_cst) volatile noexcept
        {__c11_atomic_store(&__a_, __d, __m);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void store(_Tp __d, memory_order __m = memory_order_seq_cst) noexcept
        {__c11_atomic_store(&__a_, __d, __m);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp load(memory_order __m = memory_order_seq_cst) const volatile noexcept
        {return __c11_atomic_load(&__a_, __m);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp load(memory_order __m = memory_order_seq_cst) const noexcept
        {return __c11_atomic_load(&__a_, __m);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    operator _Tp() const volatile noexcept {return load();}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    operator _Tp() const noexcept {return load();}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp exchange(_Tp __d, memory_order __m = memory_order_seq_cst) volatile noexcept
        {return __c11_atomic_exchange(&__a_, __d, __m);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp exchange(_Tp __d, memory_order __m = memory_order_seq_cst) noexcept
        {return __c11_atomic_exchange(&__a_, __d, __m);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool compare_exchange_weak(_Tp& __e, _Tp __d,
                               memory_order __s, memory_order __f) volatile noexcept
        {return __c11_atomic_compare_exchange_weak(&__a_, &__e, __d, __s, __f);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool compare_exchange_weak(_Tp& __e, _Tp __d,
                               memory_order __s, memory_order __f) noexcept
        {return __c11_atomic_compare_exchange_weak(&__a_, &__e, __d, __s, __f);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool compare_exchange_strong(_Tp& __e, _Tp __d,
                                 memory_order __s, memory_order __f) volatile noexcept
        {return __c11_atomic_compare_exchange_strong(&__a_, &__e, __d, __s, __f);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool compare_exchange_strong(_Tp& __e, _Tp __d,
                                 memory_order __s, memory_order __f) noexcept
        {return __c11_atomic_compare_exchange_strong(&__a_, &__e, __d, __s, __f);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool compare_exchange_weak(_Tp& __e, _Tp __d,
                              memory_order __m = memory_order_seq_cst) volatile noexcept
        {return __c11_atomic_compare_exchange_weak(&__a_, &__e, __d, __m, __m);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool compare_exchange_weak(_Tp& __e, _Tp __d,
                               memory_order __m = memory_order_seq_cst) noexcept
        {return __c11_atomic_compare_exchange_weak(&__a_, &__e, __d, __m, __m);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool compare_exchange_strong(_Tp& __e, _Tp __d,
                              memory_order __m = memory_order_seq_cst) volatile noexcept
        {return __c11_atomic_compare_exchange_strong(&__a_, &__e, __d, __m, __m);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool compare_exchange_strong(_Tp& __e, _Tp __d,
                                 memory_order __m = memory_order_seq_cst) noexcept
        {return __c11_atomic_compare_exchange_strong(&__a_, &__e, __d, __m, __m);}

    __attribute__ ((__visibility__("hidden"), __always_inline__))

    __atomic_base() noexcept = default;




    __attribute__ ((__visibility__("hidden"), __always_inline__))
    constexpr __atomic_base(_Tp __d) noexcept : __a_(__d) {}

    __atomic_base(const __atomic_base&) = delete;
    __atomic_base& operator=(const __atomic_base&) = delete;
    __atomic_base& operator=(const __atomic_base&) volatile = delete;






};
# 987 "/opt/intel/sgxsdk/include/libcxx/atomic" 3
template <class _Tp>
struct __atomic_base<_Tp, true>
    : public __atomic_base<_Tp, false>
{
    typedef __atomic_base<_Tp, false> __base;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    __atomic_base() noexcept = default;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    constexpr __atomic_base(_Tp __d) noexcept : __base(__d) {}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp fetch_add(_Tp __op, memory_order __m = memory_order_seq_cst) volatile noexcept
        {return __c11_atomic_fetch_add(&this->__a_, __op, __m);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp fetch_add(_Tp __op, memory_order __m = memory_order_seq_cst) noexcept
        {return __c11_atomic_fetch_add(&this->__a_, __op, __m);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp fetch_sub(_Tp __op, memory_order __m = memory_order_seq_cst) volatile noexcept
        {return __c11_atomic_fetch_sub(&this->__a_, __op, __m);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp fetch_sub(_Tp __op, memory_order __m = memory_order_seq_cst) noexcept
        {return __c11_atomic_fetch_sub(&this->__a_, __op, __m);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp fetch_and(_Tp __op, memory_order __m = memory_order_seq_cst) volatile noexcept
        {return __c11_atomic_fetch_and(&this->__a_, __op, __m);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp fetch_and(_Tp __op, memory_order __m = memory_order_seq_cst) noexcept
        {return __c11_atomic_fetch_and(&this->__a_, __op, __m);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp fetch_or(_Tp __op, memory_order __m = memory_order_seq_cst) volatile noexcept
        {return __c11_atomic_fetch_or(&this->__a_, __op, __m);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp fetch_or(_Tp __op, memory_order __m = memory_order_seq_cst) noexcept
        {return __c11_atomic_fetch_or(&this->__a_, __op, __m);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp fetch_xor(_Tp __op, memory_order __m = memory_order_seq_cst) volatile noexcept
        {return __c11_atomic_fetch_xor(&this->__a_, __op, __m);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp fetch_xor(_Tp __op, memory_order __m = memory_order_seq_cst) noexcept
        {return __c11_atomic_fetch_xor(&this->__a_, __op, __m);}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp operator++(int) volatile noexcept {return fetch_add(_Tp(1));}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp operator++(int) noexcept {return fetch_add(_Tp(1));}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp operator--(int) volatile noexcept {return fetch_sub(_Tp(1));}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp operator--(int) noexcept {return fetch_sub(_Tp(1));}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp operator++() volatile noexcept {return fetch_add(_Tp(1)) + _Tp(1);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp operator++() noexcept {return fetch_add(_Tp(1)) + _Tp(1);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp operator--() volatile noexcept {return fetch_sub(_Tp(1)) - _Tp(1);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp operator--() noexcept {return fetch_sub(_Tp(1)) - _Tp(1);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp operator+=(_Tp __op) volatile noexcept {return fetch_add(__op) + __op;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp operator+=(_Tp __op) noexcept {return fetch_add(__op) + __op;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp operator-=(_Tp __op) volatile noexcept {return fetch_sub(__op) - __op;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp operator-=(_Tp __op) noexcept {return fetch_sub(__op) - __op;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp operator&=(_Tp __op) volatile noexcept {return fetch_and(__op) & __op;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp operator&=(_Tp __op) noexcept {return fetch_and(__op) & __op;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp operator|=(_Tp __op) volatile noexcept {return fetch_or(__op) | __op;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp operator|=(_Tp __op) noexcept {return fetch_or(__op) | __op;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp operator^=(_Tp __op) volatile noexcept {return fetch_xor(__op) ^ __op;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp operator^=(_Tp __op) noexcept {return fetch_xor(__op) ^ __op;}
};



template <class _Tp>
struct atomic
    : public __atomic_base<_Tp>
{
    typedef __atomic_base<_Tp> __base;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    atomic() noexcept = default;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    constexpr atomic(_Tp __d) noexcept : __base(__d) {}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp operator=(_Tp __d) volatile noexcept
        {__base::store(__d); return __d;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp operator=(_Tp __d) noexcept
        {__base::store(__d); return __d;}
};



template <class _Tp>
struct atomic<_Tp*>
    : public __atomic_base<_Tp*>
{
    typedef __atomic_base<_Tp*> __base;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    atomic() noexcept = default;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    constexpr atomic(_Tp* __d) noexcept : __base(__d) {}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp* operator=(_Tp* __d) volatile noexcept
        {__base::store(__d); return __d;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp* operator=(_Tp* __d) noexcept
        {__base::store(__d); return __d;}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp* fetch_add(ptrdiff_t __op, memory_order __m = memory_order_seq_cst)
                                                                        volatile noexcept
        {return __c11_atomic_fetch_add(&this->__a_, __op, __m);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp* fetch_add(ptrdiff_t __op, memory_order __m = memory_order_seq_cst) noexcept
        {return __c11_atomic_fetch_add(&this->__a_, __op, __m);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp* fetch_sub(ptrdiff_t __op, memory_order __m = memory_order_seq_cst)
                                                                        volatile noexcept
        {return __c11_atomic_fetch_sub(&this->__a_, __op, __m);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp* fetch_sub(ptrdiff_t __op, memory_order __m = memory_order_seq_cst) noexcept
        {return __c11_atomic_fetch_sub(&this->__a_, __op, __m);}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp* operator++(int) volatile noexcept {return fetch_add(1);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp* operator++(int) noexcept {return fetch_add(1);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp* operator--(int) volatile noexcept {return fetch_sub(1);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp* operator--(int) noexcept {return fetch_sub(1);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp* operator++() volatile noexcept {return fetch_add(1) + 1;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp* operator++() noexcept {return fetch_add(1) + 1;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp* operator--() volatile noexcept {return fetch_sub(1) - 1;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp* operator--() noexcept {return fetch_sub(1) - 1;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp* operator+=(ptrdiff_t __op) volatile noexcept {return fetch_add(__op) + __op;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp* operator+=(ptrdiff_t __op) noexcept {return fetch_add(__op) + __op;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp* operator-=(ptrdiff_t __op) volatile noexcept {return fetch_sub(__op) - __op;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp* operator-=(ptrdiff_t __op) noexcept {return fetch_sub(__op) - __op;}
};



template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
atomic_is_lock_free(const volatile atomic<_Tp>* __o) noexcept
{
    return __o->is_lock_free();
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
atomic_is_lock_free(const atomic<_Tp>* __o) noexcept
{
    return __o->is_lock_free();
}



template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
atomic_init(volatile atomic<_Tp>* __o, _Tp __d) noexcept
{
    __c11_atomic_init(&__o->__a_, __d);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
atomic_init(atomic<_Tp>* __o, _Tp __d) noexcept
{
    __c11_atomic_init(&__o->__a_, __d);
}



template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
atomic_store(volatile atomic<_Tp>* __o, _Tp __d) noexcept
{
    __o->store(__d);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
atomic_store(atomic<_Tp>* __o, _Tp __d) noexcept
{
    __o->store(__d);
}



template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
atomic_store_explicit(volatile atomic<_Tp>* __o, _Tp __d, memory_order __m) noexcept
{
    __o->store(__d, __m);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
atomic_store_explicit(atomic<_Tp>* __o, _Tp __d, memory_order __m) noexcept
{
    __o->store(__d, __m);
}



template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp
atomic_load(const volatile atomic<_Tp>* __o) noexcept
{
    return __o->load();
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp
atomic_load(const atomic<_Tp>* __o) noexcept
{
    return __o->load();
}



template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp
atomic_load_explicit(const volatile atomic<_Tp>* __o, memory_order __m) noexcept
{
    return __o->load(__m);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp
atomic_load_explicit(const atomic<_Tp>* __o, memory_order __m) noexcept
{
    return __o->load(__m);
}



template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp
atomic_exchange(volatile atomic<_Tp>* __o, _Tp __d) noexcept
{
    return __o->exchange(__d);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp
atomic_exchange(atomic<_Tp>* __o, _Tp __d) noexcept
{
    return __o->exchange(__d);
}



template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp
atomic_exchange_explicit(volatile atomic<_Tp>* __o, _Tp __d, memory_order __m) noexcept
{
    return __o->exchange(__d, __m);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp
atomic_exchange_explicit(atomic<_Tp>* __o, _Tp __d, memory_order __m) noexcept
{
    return __o->exchange(__d, __m);
}



template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
atomic_compare_exchange_weak(volatile atomic<_Tp>* __o, _Tp* __e, _Tp __d) noexcept
{
    return __o->compare_exchange_weak(*__e, __d);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
atomic_compare_exchange_weak(atomic<_Tp>* __o, _Tp* __e, _Tp __d) noexcept
{
    return __o->compare_exchange_weak(*__e, __d);
}



template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
atomic_compare_exchange_strong(volatile atomic<_Tp>* __o, _Tp* __e, _Tp __d) noexcept
{
    return __o->compare_exchange_strong(*__e, __d);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
atomic_compare_exchange_strong(atomic<_Tp>* __o, _Tp* __e, _Tp __d) noexcept
{
    return __o->compare_exchange_strong(*__e, __d);
}



template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
atomic_compare_exchange_weak_explicit(volatile atomic<_Tp>* __o, _Tp* __e,
                                      _Tp __d,
                                      memory_order __s, memory_order __f) noexcept
{
    return __o->compare_exchange_weak(*__e, __d, __s, __f);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
atomic_compare_exchange_weak_explicit(atomic<_Tp>* __o, _Tp* __e, _Tp __d,
                                      memory_order __s, memory_order __f) noexcept
{
    return __o->compare_exchange_weak(*__e, __d, __s, __f);
}



template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
atomic_compare_exchange_strong_explicit(volatile atomic<_Tp>* __o,
                                        _Tp* __e, _Tp __d,
                                        memory_order __s, memory_order __f) noexcept
{
    return __o->compare_exchange_strong(*__e, __d, __s, __f);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
atomic_compare_exchange_strong_explicit(atomic<_Tp>* __o, _Tp* __e,
                                        _Tp __d,
                                        memory_order __s, memory_order __f) noexcept
{
    return __o->compare_exchange_strong(*__e, __d, __s, __f);
}



template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_integral<_Tp>::value && !is_same<_Tp, bool>::value,
    _Tp
>::type
atomic_fetch_add(volatile atomic<_Tp>* __o, _Tp __op) noexcept
{
    return __o->fetch_add(__op);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_integral<_Tp>::value && !is_same<_Tp, bool>::value,
    _Tp
>::type
atomic_fetch_add(atomic<_Tp>* __o, _Tp __op) noexcept
{
    return __o->fetch_add(__op);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp*
atomic_fetch_add(volatile atomic<_Tp*>* __o, ptrdiff_t __op) noexcept
{
    return __o->fetch_add(__op);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp*
atomic_fetch_add(atomic<_Tp*>* __o, ptrdiff_t __op) noexcept
{
    return __o->fetch_add(__op);
}



template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_integral<_Tp>::value && !is_same<_Tp, bool>::value,
    _Tp
>::type
atomic_fetch_add_explicit(volatile atomic<_Tp>* __o, _Tp __op, memory_order __m) noexcept
{
    return __o->fetch_add(__op, __m);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_integral<_Tp>::value && !is_same<_Tp, bool>::value,
    _Tp
>::type
atomic_fetch_add_explicit(atomic<_Tp>* __o, _Tp __op, memory_order __m) noexcept
{
    return __o->fetch_add(__op, __m);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp*
atomic_fetch_add_explicit(volatile atomic<_Tp*>* __o, ptrdiff_t __op,
                          memory_order __m) noexcept
{
    return __o->fetch_add(__op, __m);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp*
atomic_fetch_add_explicit(atomic<_Tp*>* __o, ptrdiff_t __op, memory_order __m) noexcept
{
    return __o->fetch_add(__op, __m);
}



template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_integral<_Tp>::value && !is_same<_Tp, bool>::value,
    _Tp
>::type
atomic_fetch_sub(volatile atomic<_Tp>* __o, _Tp __op) noexcept
{
    return __o->fetch_sub(__op);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_integral<_Tp>::value && !is_same<_Tp, bool>::value,
    _Tp
>::type
atomic_fetch_sub(atomic<_Tp>* __o, _Tp __op) noexcept
{
    return __o->fetch_sub(__op);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp*
atomic_fetch_sub(volatile atomic<_Tp*>* __o, ptrdiff_t __op) noexcept
{
    return __o->fetch_sub(__op);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp*
atomic_fetch_sub(atomic<_Tp*>* __o, ptrdiff_t __op) noexcept
{
    return __o->fetch_sub(__op);
}



template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_integral<_Tp>::value && !is_same<_Tp, bool>::value,
    _Tp
>::type
atomic_fetch_sub_explicit(volatile atomic<_Tp>* __o, _Tp __op, memory_order __m) noexcept
{
    return __o->fetch_sub(__op, __m);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_integral<_Tp>::value && !is_same<_Tp, bool>::value,
    _Tp
>::type
atomic_fetch_sub_explicit(atomic<_Tp>* __o, _Tp __op, memory_order __m) noexcept
{
    return __o->fetch_sub(__op, __m);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp*
atomic_fetch_sub_explicit(volatile atomic<_Tp*>* __o, ptrdiff_t __op,
                          memory_order __m) noexcept
{
    return __o->fetch_sub(__op, __m);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp*
atomic_fetch_sub_explicit(atomic<_Tp*>* __o, ptrdiff_t __op, memory_order __m) noexcept
{
    return __o->fetch_sub(__op, __m);
}



template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_integral<_Tp>::value && !is_same<_Tp, bool>::value,
    _Tp
>::type
atomic_fetch_and(volatile atomic<_Tp>* __o, _Tp __op) noexcept
{
    return __o->fetch_and(__op);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_integral<_Tp>::value && !is_same<_Tp, bool>::value,
    _Tp
>::type
atomic_fetch_and(atomic<_Tp>* __o, _Tp __op) noexcept
{
    return __o->fetch_and(__op);
}



template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_integral<_Tp>::value && !is_same<_Tp, bool>::value,
    _Tp
>::type
atomic_fetch_and_explicit(volatile atomic<_Tp>* __o, _Tp __op, memory_order __m) noexcept
{
    return __o->fetch_and(__op, __m);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_integral<_Tp>::value && !is_same<_Tp, bool>::value,
    _Tp
>::type
atomic_fetch_and_explicit(atomic<_Tp>* __o, _Tp __op, memory_order __m) noexcept
{
    return __o->fetch_and(__op, __m);
}



template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_integral<_Tp>::value && !is_same<_Tp, bool>::value,
    _Tp
>::type
atomic_fetch_or(volatile atomic<_Tp>* __o, _Tp __op) noexcept
{
    return __o->fetch_or(__op);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_integral<_Tp>::value && !is_same<_Tp, bool>::value,
    _Tp
>::type
atomic_fetch_or(atomic<_Tp>* __o, _Tp __op) noexcept
{
    return __o->fetch_or(__op);
}



template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_integral<_Tp>::value && !is_same<_Tp, bool>::value,
    _Tp
>::type
atomic_fetch_or_explicit(volatile atomic<_Tp>* __o, _Tp __op, memory_order __m) noexcept
{
    return __o->fetch_or(__op, __m);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_integral<_Tp>::value && !is_same<_Tp, bool>::value,
    _Tp
>::type
atomic_fetch_or_explicit(atomic<_Tp>* __o, _Tp __op, memory_order __m) noexcept
{
    return __o->fetch_or(__op, __m);
}



template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_integral<_Tp>::value && !is_same<_Tp, bool>::value,
    _Tp
>::type
atomic_fetch_xor(volatile atomic<_Tp>* __o, _Tp __op) noexcept
{
    return __o->fetch_xor(__op);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_integral<_Tp>::value && !is_same<_Tp, bool>::value,
    _Tp
>::type
atomic_fetch_xor(atomic<_Tp>* __o, _Tp __op) noexcept
{
    return __o->fetch_xor(__op);
}



template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_integral<_Tp>::value && !is_same<_Tp, bool>::value,
    _Tp
>::type
atomic_fetch_xor_explicit(volatile atomic<_Tp>* __o, _Tp __op, memory_order __m) noexcept
{
    return __o->fetch_xor(__op, __m);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_integral<_Tp>::value && !is_same<_Tp, bool>::value,
    _Tp
>::type
atomic_fetch_xor_explicit(atomic<_Tp>* __o, _Tp __op, memory_order __m) noexcept
{
    return __o->fetch_xor(__op, __m);
}



typedef struct atomic_flag
{
    __gcc_atomic::__gcc_atomic_t<bool> __a_;

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool test_and_set(memory_order __m = memory_order_seq_cst) volatile noexcept
        {return __c11_atomic_exchange(&__a_, true, __m);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool test_and_set(memory_order __m = memory_order_seq_cst) noexcept
        {return __c11_atomic_exchange(&__a_, true, __m);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void clear(memory_order __m = memory_order_seq_cst) volatile noexcept
        {__c11_atomic_store(&__a_, false, __m);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void clear(memory_order __m = memory_order_seq_cst) noexcept
        {__c11_atomic_store(&__a_, false, __m);}

    __attribute__ ((__visibility__("hidden"), __always_inline__))

    atomic_flag() noexcept = default;




    __attribute__ ((__visibility__("hidden"), __always_inline__))
    atomic_flag(bool __b) noexcept : __a_(__b) {}


    atomic_flag(const atomic_flag&) = delete;
    atomic_flag& operator=(const atomic_flag&) = delete;
    atomic_flag& operator=(const atomic_flag&) volatile = delete;






} atomic_flag;

inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
atomic_flag_test_and_set(volatile atomic_flag* __o) noexcept
{
    return __o->test_and_set();
}

inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
atomic_flag_test_and_set(atomic_flag* __o) noexcept
{
    return __o->test_and_set();
}

inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
atomic_flag_test_and_set_explicit(volatile atomic_flag* __o, memory_order __m) noexcept
{
    return __o->test_and_set(__m);
}

inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
atomic_flag_test_and_set_explicit(atomic_flag* __o, memory_order __m) noexcept
{
    return __o->test_and_set(__m);
}

inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
atomic_flag_clear(volatile atomic_flag* __o) noexcept
{
    __o->clear();
}

inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
atomic_flag_clear(atomic_flag* __o) noexcept
{
    __o->clear();
}

inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
atomic_flag_clear_explicit(volatile atomic_flag* __o, memory_order __m) noexcept
{
    __o->clear(__m);
}

inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
atomic_flag_clear_explicit(atomic_flag* __o, memory_order __m) noexcept
{
    __o->clear(__m);
}



inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
atomic_thread_fence(memory_order __m) noexcept
{
    __c11_atomic_thread_fence(__m);
}

inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
atomic_signal_fence(memory_order __m) noexcept
{
    __c11_atomic_signal_fence(__m);
}



typedef atomic<bool> atomic_bool;
typedef atomic<char> atomic_char;
typedef atomic<signed char> atomic_schar;
typedef atomic<unsigned char> atomic_uchar;
typedef atomic<short> atomic_short;
typedef atomic<unsigned short> atomic_ushort;
typedef atomic<int> atomic_int;
typedef atomic<unsigned int> atomic_uint;
typedef atomic<long> atomic_long;
typedef atomic<unsigned long> atomic_ulong;
typedef atomic<long long> atomic_llong;
typedef atomic<unsigned long long> atomic_ullong;
typedef atomic<char16_t> atomic_char16_t;
typedef atomic<char32_t> atomic_char32_t;
typedef atomic<wchar_t> atomic_wchar_t;

typedef atomic<int_least8_t> atomic_int_least8_t;
typedef atomic<uint_least8_t> atomic_uint_least8_t;
typedef atomic<int_least16_t> atomic_int_least16_t;
typedef atomic<uint_least16_t> atomic_uint_least16_t;
typedef atomic<int_least32_t> atomic_int_least32_t;
typedef atomic<uint_least32_t> atomic_uint_least32_t;
typedef atomic<int_least64_t> atomic_int_least64_t;
typedef atomic<uint_least64_t> atomic_uint_least64_t;

typedef atomic<int_fast8_t> atomic_int_fast8_t;
typedef atomic<uint_fast8_t> atomic_uint_fast8_t;
typedef atomic<int_fast16_t> atomic_int_fast16_t;
typedef atomic<uint_fast16_t> atomic_uint_fast16_t;
typedef atomic<int_fast32_t> atomic_int_fast32_t;
typedef atomic<uint_fast32_t> atomic_uint_fast32_t;
typedef atomic<int_fast64_t> atomic_int_fast64_t;
typedef atomic<uint_fast64_t> atomic_uint_fast64_t;

typedef atomic< int8_t> atomic_int8_t;
typedef atomic<uint8_t> atomic_uint8_t;
typedef atomic< int16_t> atomic_int16_t;
typedef atomic<uint16_t> atomic_uint16_t;
typedef atomic< int32_t> atomic_int32_t;
typedef atomic<uint32_t> atomic_uint32_t;
typedef atomic< int64_t> atomic_int64_t;
typedef atomic<uint64_t> atomic_uint64_t;

typedef atomic<intptr_t> atomic_intptr_t;
typedef atomic<uintptr_t> atomic_uintptr_t;
typedef atomic<size_t> atomic_size_t;
typedef atomic<ptrdiff_t> atomic_ptrdiff_t;
typedef atomic<intmax_t> atomic_intmax_t;
typedef atomic<uintmax_t> atomic_uintmax_t;




} }
# 621 "/opt/intel/sgxsdk/include/libcxx/memory" 2


# 1 "/opt/intel/sgxsdk/include/libcxx/__undef_min_max" 1
# 624 "/opt/intel/sgxsdk/include/libcxx/memory" 2
# 1 "/opt/intel/sgxsdk/include/libcxx/__undef___deallocate" 1
# 625 "/opt/intel/sgxsdk/include/libcxx/memory" 2


       
# 628 "/opt/intel/sgxsdk/include/libcxx/memory" 3


namespace std { inline namespace __1 {

template <class _ValueType>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ValueType __libcpp_relaxed_load(_ValueType const* __value) {





    return *__value;

}



template <class _Tp> class allocator;

template <>
class __attribute__ ((__visibility__("default"))) allocator<void>
{
public:
    typedef void* pointer;
    typedef const void* const_pointer;
    typedef void value_type;

    template <class _Up> struct rebind {typedef allocator<_Up> other;};
};

template <>
class __attribute__ ((__visibility__("default"))) allocator<const void>
{
public:
    typedef const void* pointer;
    typedef const void* const_pointer;
    typedef const void value_type;

    template <class _Up> struct rebind {typedef allocator<_Up> other;};
};



template <class _Tp>
struct __has_element_type
{
private:
    struct __two {char __lx; char __lxx;};
    template <class _Up> static __two __test(...);
    template <class _Up> static char __test(typename _Up::element_type* = 0);
public:
    static const bool value = sizeof(__test<_Tp>(0)) == 1;
};

template <class _Ptr, bool = __has_element_type<_Ptr>::value>
struct __pointer_traits_element_type;

template <class _Ptr>
struct __pointer_traits_element_type<_Ptr, true>
{
    typedef typename _Ptr::element_type type;
};



template <template <class, class...> class _Sp, class _Tp, class ..._Args>
struct __pointer_traits_element_type<_Sp<_Tp, _Args...>, true>
{
    typedef typename _Sp<_Tp, _Args...>::element_type type;
};

template <template <class, class...> class _Sp, class _Tp, class ..._Args>
struct __pointer_traits_element_type<_Sp<_Tp, _Args...>, false>
{
    typedef _Tp type;
};
# 760 "/opt/intel/sgxsdk/include/libcxx/memory" 3
template <class _Tp>
struct __has_difference_type
{
private:
    struct __two {char __lx; char __lxx;};
    template <class _Up> static __two __test(...);
    template <class _Up> static char __test(typename _Up::difference_type* = 0);
public:
    static const bool value = sizeof(__test<_Tp>(0)) == 1;
};

template <class _Ptr, bool = __has_difference_type<_Ptr>::value>
struct __pointer_traits_difference_type
{
    typedef ptrdiff_t type;
};

template <class _Ptr>
struct __pointer_traits_difference_type<_Ptr, true>
{
    typedef typename _Ptr::difference_type type;
};

template <class _Tp, class _Up>
struct __has_rebind
{
private:
    struct __two {char __lx; char __lxx;};
    template <class _Xp> static __two __test(...);
    template <class _Xp> static char __test(typename _Xp::template rebind<_Up>* = 0);
public:
    static const bool value = sizeof(__test<_Tp>(0)) == 1;
};

template <class _Tp, class _Up, bool = __has_rebind<_Tp, _Up>::value>
struct __pointer_traits_rebind
{

    typedef typename _Tp::template rebind<_Up> type;



};



template <template <class, class...> class _Sp, class _Tp, class ..._Args, class _Up>
struct __pointer_traits_rebind<_Sp<_Tp, _Args...>, _Up, true>
{

    typedef typename _Sp<_Tp, _Args...>::template rebind<_Up> type;



};

template <template <class, class...> class _Sp, class _Tp, class ..._Args, class _Up>
struct __pointer_traits_rebind<_Sp<_Tp, _Args...>, _Up, false>
{
    typedef _Sp<_Up, _Args...> type;
};
# 894 "/opt/intel/sgxsdk/include/libcxx/memory" 3
template <class _Ptr>
struct __attribute__ ((__visibility__("default"))) pointer_traits
{
    typedef _Ptr pointer;
    typedef typename __pointer_traits_element_type<pointer>::type element_type;
    typedef typename __pointer_traits_difference_type<pointer>::type difference_type;


    template <class _Up> using rebind = typename __pointer_traits_rebind<pointer, _Up>::type;





private:
    struct __nat {};
public:
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static pointer pointer_to(typename conditional<is_void<element_type>::value,
                                           __nat, element_type>::type& __r)
        {return pointer::pointer_to(__r);}
};

template <class _Tp>
struct __attribute__ ((__visibility__("default"))) pointer_traits<_Tp*>
{
    typedef _Tp* pointer;
    typedef _Tp element_type;
    typedef ptrdiff_t difference_type;


    template <class _Up> using rebind = _Up*;




private:
    struct __nat {};
public:
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static pointer pointer_to(typename conditional<is_void<element_type>::value,
                                      __nat, element_type>::type& __r) noexcept
        {return std::__1::addressof(__r);}
};

template <class _From, class _To>
struct __rebind_pointer {

    typedef typename pointer_traits<_From>::template rebind<_To> type;



};



namespace __has_pointer_type_imp
{
    template <class _Up> static __two __test(...);
    template <class _Up> static char __test(typename _Up::pointer* = 0);
}

template <class _Tp>
struct __has_pointer_type
    : public integral_constant<bool, sizeof(__has_pointer_type_imp::__test<_Tp>(0)) == 1>
{
};

namespace __pointer_type_imp
{

template <class _Tp, class _Dp, bool = __has_pointer_type<_Dp>::value>
struct __pointer_type
{
    typedef typename _Dp::pointer type;
};

template <class _Tp, class _Dp>
struct __pointer_type<_Tp, _Dp, false>
{
    typedef _Tp* type;
};

}

template <class _Tp, class _Dp>
struct __pointer_type
{
    typedef typename __pointer_type_imp::__pointer_type<_Tp, typename remove_reference<_Dp>::type>::type type;
};

template <class _Tp>
struct __has_const_pointer
{
private:
    struct __two {char __lx; char __lxx;};
    template <class _Up> static __two __test(...);
    template <class _Up> static char __test(typename _Up::const_pointer* = 0);
public:
    static const bool value = sizeof(__test<_Tp>(0)) == 1;
};

template <class _Tp, class _Ptr, class _Alloc, bool = __has_const_pointer<_Alloc>::value>
struct __const_pointer
{
    typedef typename _Alloc::const_pointer type;
};

template <class _Tp, class _Ptr, class _Alloc>
struct __const_pointer<_Tp, _Ptr, _Alloc, false>
{

    typedef typename pointer_traits<_Ptr>::template rebind<const _Tp> type;



};

template <class _Tp>
struct __has_void_pointer
{
private:
    struct __two {char __lx; char __lxx;};
    template <class _Up> static __two __test(...);
    template <class _Up> static char __test(typename _Up::void_pointer* = 0);
public:
    static const bool value = sizeof(__test<_Tp>(0)) == 1;
};

template <class _Ptr, class _Alloc, bool = __has_void_pointer<_Alloc>::value>
struct __void_pointer
{
    typedef typename _Alloc::void_pointer type;
};

template <class _Ptr, class _Alloc>
struct __void_pointer<_Ptr, _Alloc, false>
{

    typedef typename pointer_traits<_Ptr>::template rebind<void> type;



};

template <class _Tp>
struct __has_const_void_pointer
{
private:
    struct __two {char __lx; char __lxx;};
    template <class _Up> static __two __test(...);
    template <class _Up> static char __test(typename _Up::const_void_pointer* = 0);
public:
    static const bool value = sizeof(__test<_Tp>(0)) == 1;
};

template <class _Ptr, class _Alloc, bool = __has_const_void_pointer<_Alloc>::value>
struct __const_void_pointer
{
    typedef typename _Alloc::const_void_pointer type;
};

template <class _Ptr, class _Alloc>
struct __const_void_pointer<_Ptr, _Alloc, false>
{

    typedef typename pointer_traits<_Ptr>::template rebind<const void> type;



};

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp*
__to_raw_pointer(_Tp* __p) noexcept
{
    return __p;
}

template <class _Pointer>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename pointer_traits<_Pointer>::element_type*
__to_raw_pointer(_Pointer __p) noexcept
{
    return std::__1::__to_raw_pointer(__p.operator->());
}

template <class _Tp>
struct __has_size_type
{
private:
    struct __two {char __lx; char __lxx;};
    template <class _Up> static __two __test(...);
    template <class _Up> static char __test(typename _Up::size_type* = 0);
public:
    static const bool value = sizeof(__test<_Tp>(0)) == 1;
};

template <class _Alloc, class _DiffType, bool = __has_size_type<_Alloc>::value>
struct __size_type
{
    typedef typename make_unsigned<_DiffType>::type type;
};

template <class _Alloc, class _DiffType>
struct __size_type<_Alloc, _DiffType, true>
{
    typedef typename _Alloc::size_type type;
};

template <class _Tp>
struct __has_propagate_on_container_copy_assignment
{
private:
    struct __two {char __lx; char __lxx;};
    template <class _Up> static __two __test(...);
    template <class _Up> static char __test(typename _Up::propagate_on_container_copy_assignment* = 0);
public:
    static const bool value = sizeof(__test<_Tp>(0)) == 1;
};

template <class _Alloc, bool = __has_propagate_on_container_copy_assignment<_Alloc>::value>
struct __propagate_on_container_copy_assignment
{
    typedef false_type type;
};

template <class _Alloc>
struct __propagate_on_container_copy_assignment<_Alloc, true>
{
    typedef typename _Alloc::propagate_on_container_copy_assignment type;
};

template <class _Tp>
struct __has_propagate_on_container_move_assignment
{
private:
    struct __two {char __lx; char __lxx;};
    template <class _Up> static __two __test(...);
    template <class _Up> static char __test(typename _Up::propagate_on_container_move_assignment* = 0);
public:
    static const bool value = sizeof(__test<_Tp>(0)) == 1;
};

template <class _Alloc, bool = __has_propagate_on_container_move_assignment<_Alloc>::value>
struct __propagate_on_container_move_assignment
{
    typedef false_type type;
};

template <class _Alloc>
struct __propagate_on_container_move_assignment<_Alloc, true>
{
    typedef typename _Alloc::propagate_on_container_move_assignment type;
};

template <class _Tp>
struct __has_propagate_on_container_swap
{
private:
    struct __two {char __lx; char __lxx;};
    template <class _Up> static __two __test(...);
    template <class _Up> static char __test(typename _Up::propagate_on_container_swap* = 0);
public:
    static const bool value = sizeof(__test<_Tp>(0)) == 1;
};

template <class _Alloc, bool = __has_propagate_on_container_swap<_Alloc>::value>
struct __propagate_on_container_swap
{
    typedef false_type type;
};

template <class _Alloc>
struct __propagate_on_container_swap<_Alloc, true>
{
    typedef typename _Alloc::propagate_on_container_swap type;
};

template <class _Tp>
struct __has_is_always_equal
{
private:
    struct __two {char __lx; char __lxx;};
    template <class _Up> static __two __test(...);
    template <class _Up> static char __test(typename _Up::is_always_equal* = 0);
public:
    static const bool value = sizeof(__test<_Tp>(0)) == 1;
};

template <class _Alloc, bool = __has_is_always_equal<_Alloc>::value>
struct __is_always_equal
{
    typedef typename std::__1::is_empty<_Alloc>::type type;
};

template <class _Alloc>
struct __is_always_equal<_Alloc, true>
{
    typedef typename _Alloc::is_always_equal type;
};

template <class _Tp, class _Up, bool = __has_rebind<_Tp, _Up>::value>
struct __has_rebind_other
{
private:
    struct __two {char __lx; char __lxx;};
    template <class _Xp> static __two __test(...);
    template <class _Xp> static char __test(typename _Xp::template rebind<_Up>::other* = 0);
public:
    static const bool value = sizeof(__test<_Tp>(0)) == 1;
};

template <class _Tp, class _Up>
struct __has_rebind_other<_Tp, _Up, false>
{
    static const bool value = false;
};

template <class _Tp, class _Up, bool = __has_rebind_other<_Tp, _Up>::value>
struct __allocator_traits_rebind
{
    typedef typename _Tp::template rebind<_Up>::other type;
};



template <template <class, class...> class _Alloc, class _Tp, class ..._Args, class _Up>
struct __allocator_traits_rebind<_Alloc<_Tp, _Args...>, _Up, true>
{
    typedef typename _Alloc<_Tp, _Args...>::template rebind<_Up>::other type;
};

template <template <class, class...> class _Alloc, class _Tp, class ..._Args, class _Up>
struct __allocator_traits_rebind<_Alloc<_Tp, _Args...>, _Up, false>
{
    typedef _Alloc<_Up, _Args...> type;
};
# 1292 "/opt/intel/sgxsdk/include/libcxx/memory" 3
template <class _Alloc, class _SizeType, class _ConstVoidPtr>
auto
__has_allocate_hint_test(_Alloc&& __a, _SizeType&& __sz, _ConstVoidPtr&& __p)
    -> decltype(__a.allocate(__sz, __p), true_type());

template <class _Alloc, class _SizeType, class _ConstVoidPtr>
auto
__has_allocate_hint_test(const _Alloc& __a, _SizeType&& __sz, _ConstVoidPtr&& __p)
    -> false_type;

template <class _Alloc, class _SizeType, class _ConstVoidPtr>
struct __has_allocate_hint
    : integral_constant<bool,
        is_same<
            decltype(__has_allocate_hint_test(declval<_Alloc>(),
                                          declval<_SizeType>(),
                                          declval<_ConstVoidPtr>())),
            true_type>::value>
{
};
# 1325 "/opt/intel/sgxsdk/include/libcxx/memory" 3
template <class _Alloc, class _Tp, class ..._Args>
decltype(std::__1::declval<_Alloc>().construct(std::__1::declval<_Tp*>(),
                                           std::__1::declval<_Args>()...),
                                           true_type())
__has_construct_test(_Alloc&& __a, _Tp* __p, _Args&& ...__args);

template <class _Alloc, class _Pointer, class ..._Args>
false_type
__has_construct_test(const _Alloc& __a, _Pointer&& __p, _Args&& ...__args);

template <class _Alloc, class _Pointer, class ..._Args>
struct __has_construct
    : integral_constant<bool,
        is_same<
            decltype(__has_construct_test(declval<_Alloc>(),
                                          declval<_Pointer>(),
                                          declval<_Args>()...)),
            true_type>::value>
{
};

template <class _Alloc, class _Pointer>
auto
__has_destroy_test(_Alloc&& __a, _Pointer&& __p)
    -> decltype(__a.destroy(__p), true_type());

template <class _Alloc, class _Pointer>
auto
__has_destroy_test(const _Alloc& __a, _Pointer&& __p)
    -> false_type;

template <class _Alloc, class _Pointer>
struct __has_destroy
    : integral_constant<bool,
        is_same<
            decltype(__has_destroy_test(declval<_Alloc>(),
                                        declval<_Pointer>())),
            true_type>::value>
{
};

template <class _Alloc>
auto
__has_max_size_test(_Alloc&& __a)
    -> decltype(__a.max_size(), true_type());

template <class _Alloc>
auto
__has_max_size_test(const volatile _Alloc& __a)
    -> false_type;

template <class _Alloc>
struct __has_max_size
    : integral_constant<bool,
        is_same<
            decltype(__has_max_size_test(declval<_Alloc&>())),
            true_type>::value>
{
};

template <class _Alloc>
auto
__has_select_on_container_copy_construction_test(_Alloc&& __a)
    -> decltype(__a.select_on_container_copy_construction(), true_type());

template <class _Alloc>
auto
__has_select_on_container_copy_construction_test(const volatile _Alloc& __a)
    -> false_type;

template <class _Alloc>
struct __has_select_on_container_copy_construction
    : integral_constant<bool,
        is_same<
            decltype(__has_select_on_container_copy_construction_test(declval<_Alloc&>())),
            true_type>::value>
{
};
# 1444 "/opt/intel/sgxsdk/include/libcxx/memory" 3
template <class _Alloc, class _Ptr, bool = __has_difference_type<_Alloc>::value>
struct __alloc_traits_difference_type
{
    typedef typename pointer_traits<_Ptr>::difference_type type;
};

template <class _Alloc, class _Ptr>
struct __alloc_traits_difference_type<_Alloc, _Ptr, true>
{
    typedef typename _Alloc::difference_type type;
};

template <class _Alloc>
struct __attribute__ ((__visibility__("default"))) allocator_traits
{
    typedef _Alloc allocator_type;
    typedef typename allocator_type::value_type value_type;

    typedef typename __pointer_type<value_type, allocator_type>::type pointer;
    typedef typename __const_pointer<value_type, pointer, allocator_type>::type const_pointer;
    typedef typename __void_pointer<pointer, allocator_type>::type void_pointer;
    typedef typename __const_void_pointer<pointer, allocator_type>::type const_void_pointer;

    typedef typename __alloc_traits_difference_type<allocator_type, pointer>::type difference_type;
    typedef typename __size_type<allocator_type, difference_type>::type size_type;

    typedef typename __propagate_on_container_copy_assignment<allocator_type>::type
                     propagate_on_container_copy_assignment;
    typedef typename __propagate_on_container_move_assignment<allocator_type>::type
                     propagate_on_container_move_assignment;
    typedef typename __propagate_on_container_swap<allocator_type>::type
                     propagate_on_container_swap;
    typedef typename __is_always_equal<allocator_type>::type
                     is_always_equal;


    template <class _Tp> using rebind_alloc =
                  typename __allocator_traits_rebind<allocator_type, _Tp>::type;
    template <class _Tp> using rebind_traits = allocator_traits<rebind_alloc<_Tp>>;







    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static pointer allocate(allocator_type& __a, size_type __n)
        {return __a.allocate(__n);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static pointer allocate(allocator_type& __a, size_type __n, const_void_pointer __hint)
        {return allocate(__a, __n, __hint,
            __has_allocate_hint<allocator_type, size_type, const_void_pointer>());}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static void deallocate(allocator_type& __a, pointer __p, size_type __n) noexcept
        {__a.deallocate(__p, __n);}


    template <class _Tp, class... _Args>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        static void construct(allocator_type& __a, _Tp* __p, _Args&&... __args)
            {__construct(__has_construct<allocator_type, _Tp*, _Args...>(),
                         __a, __p, std::__1::forward<_Args>(__args)...);}
# 1537 "/opt/intel/sgxsdk/include/libcxx/memory" 3
    template <class _Tp>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        static void destroy(allocator_type& __a, _Tp* __p)
            {__destroy(__has_destroy<allocator_type, _Tp*>(), __a, __p);}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static size_type max_size(const allocator_type& __a) noexcept
        {return __max_size(__has_max_size<const allocator_type>(), __a);}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static allocator_type
        select_on_container_copy_construction(const allocator_type& __a)
            {return select_on_container_copy_construction(
                __has_select_on_container_copy_construction<const allocator_type>(),
                __a);}

    template <class _Ptr>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        static
        void
        __construct_forward(allocator_type& __a, _Ptr __begin1, _Ptr __end1, _Ptr& __begin2)
        {
            for (; __begin1 != __end1; ++__begin1, ++__begin2)
                construct(__a, std::__1::__to_raw_pointer(__begin2), std::__1::move_if_noexcept(*__begin1));
        }

    template <class _Tp>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        static
        typename enable_if
        <
            (is_same<allocator_type, allocator<_Tp> >::value
                || !__has_construct<allocator_type, _Tp*, _Tp>::value) &&
             is_trivially_move_constructible<_Tp>::value,
            void
        >::type
        __construct_forward(allocator_type& __a, _Tp* __begin1, _Tp* __end1, _Tp*& __begin2)
        {
            ptrdiff_t _Np = __end1 - __begin1;
            if (_Np > 0)
            {
                std::__1::memcpy(__begin2, __begin1, _Np * sizeof(_Tp));
                __begin2 += _Np;
            }
        }

    template <class _Iter, class _Ptr>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        static
        void
        __construct_range_forward(allocator_type& __a, _Iter __begin1, _Iter __end1, _Ptr& __begin2)
        {
            for (; __begin1 != __end1; ++__begin1, (void) ++__begin2)
                construct(__a, std::__1::__to_raw_pointer(__begin2), *__begin1);
        }

    template <class _Tp>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        static
        typename enable_if
        <
            (is_same<allocator_type, allocator<_Tp> >::value
                || !__has_construct<allocator_type, _Tp*, _Tp>::value) &&
             is_trivially_move_constructible<_Tp>::value,
            void
        >::type
        __construct_range_forward(allocator_type& __a, _Tp* __begin1, _Tp* __end1, _Tp*& __begin2)
        {
            typedef typename remove_const<_Tp>::type _Vp;
            ptrdiff_t _Np = __end1 - __begin1;
            if (_Np > 0)
            {
                std::__1::memcpy(const_cast<_Vp*>(__begin2), __begin1, _Np * sizeof(_Tp));
                __begin2 += _Np;
            }
        }

    template <class _Ptr>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        static
        void
        __construct_backward(allocator_type& __a, _Ptr __begin1, _Ptr __end1, _Ptr& __end2)
        {
            while (__end1 != __begin1)
            {
                construct(__a, std::__1::__to_raw_pointer(__end2-1), std::__1::move_if_noexcept(*--__end1));
                --__end2;
            }
        }

    template <class _Tp>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        static
        typename enable_if
        <
            (is_same<allocator_type, allocator<_Tp> >::value
                || !__has_construct<allocator_type, _Tp*, _Tp>::value) &&
             is_trivially_move_constructible<_Tp>::value,
            void
        >::type
        __construct_backward(allocator_type& __a, _Tp* __begin1, _Tp* __end1, _Tp*& __end2)
        {
            ptrdiff_t _Np = __end1 - __begin1;
            __end2 -= _Np;
            if (_Np > 0)
                std::__1::memcpy(__end2, __begin1, _Np * sizeof(_Tp));
        }

private:

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static pointer allocate(allocator_type& __a, size_type __n,
        const_void_pointer __hint, true_type)
        {return __a.allocate(__n, __hint);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static pointer allocate(allocator_type& __a, size_type __n,
        const_void_pointer, false_type)
        {return __a.allocate(__n);}


    template <class _Tp, class... _Args>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        static void __construct(true_type, allocator_type& __a, _Tp* __p, _Args&&... __args)
            {__a.construct(__p, std::__1::forward<_Args>(__args)...);}
    template <class _Tp, class... _Args>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        static void __construct(false_type, allocator_type&, _Tp* __p, _Args&&... __args)
            {
                ::new ((void*)__p) _Tp(std::__1::forward<_Args>(__args)...);
            }


    template <class _Tp>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        static void __destroy(true_type, allocator_type& __a, _Tp* __p)
            {__a.destroy(__p);}
    template <class _Tp>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        static void __destroy(false_type, allocator_type&, _Tp* __p)
            {
                __p->~_Tp();
            }

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static size_type __max_size(true_type, const allocator_type& __a)
            {return __a.max_size();}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static size_type __max_size(false_type, const allocator_type&)
            {return numeric_limits<size_type>::max() / sizeof(value_type);}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static allocator_type
        select_on_container_copy_construction(true_type, const allocator_type& __a)
            {return __a.select_on_container_copy_construction();}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static allocator_type
        select_on_container_copy_construction(false_type, const allocator_type& __a)
            {return __a;}
};

template <class _Traits, class _Tp>
struct __rebind_alloc_helper
{

    typedef typename _Traits::template rebind_alloc<_Tp> type;



};



template <class _Tp>
class __attribute__ ((__visibility__("default"))) allocator
{
public:
    typedef size_t size_type;
    typedef ptrdiff_t difference_type;
    typedef _Tp* pointer;
    typedef const _Tp* const_pointer;
    typedef _Tp& reference;
    typedef const _Tp& const_reference;
    typedef _Tp value_type;

    typedef true_type propagate_on_container_move_assignment;
    typedef true_type is_always_equal;

    template <class _Up> struct rebind {typedef allocator<_Up> other;};

    __attribute__ ((__visibility__("hidden"), __always_inline__)) allocator() noexcept {}
    template <class _Up> __attribute__ ((__visibility__("hidden"), __always_inline__)) allocator(const allocator<_Up>&) noexcept {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) pointer address(reference __x) const noexcept
        {return std::__1::addressof(__x);}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) const_pointer address(const_reference __x) const noexcept
        {return std::__1::addressof(__x);}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) pointer allocate(size_type __n, allocator<void>::const_pointer = 0)
        {
        if (__n > max_size())





            throw bad_alloc();







        return static_cast<pointer>(std::__1::__allocate(__n * sizeof(_Tp)));
        }
    __attribute__ ((__visibility__("hidden"), __always_inline__)) void deallocate(pointer __p, size_type) noexcept
        {std::__1::__deallocate((void*)__p);}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) size_type max_size() const noexcept
        {return size_type(~0) / sizeof(_Tp);}

    template <class _Up, class... _Args>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        void
        construct(_Up* __p, _Args&&... __args)
        {
            ::new((void*)__p) _Up(std::__1::forward<_Args>(__args)...);
        }
# 1815 "/opt/intel/sgxsdk/include/libcxx/memory" 3
    __attribute__ ((__visibility__("hidden"), __always_inline__)) void destroy(pointer __p) {__p->~_Tp();}
};

template <class _Tp>
class __attribute__ ((__visibility__("default"))) allocator<const _Tp>
{
public:
    typedef size_t size_type;
    typedef ptrdiff_t difference_type;
    typedef const _Tp* pointer;
    typedef const _Tp* const_pointer;
    typedef const _Tp& reference;
    typedef const _Tp& const_reference;
    typedef const _Tp value_type;

    typedef true_type propagate_on_container_move_assignment;
    typedef true_type is_always_equal;

    template <class _Up> struct rebind {typedef allocator<_Up> other;};

    __attribute__ ((__visibility__("hidden"), __always_inline__)) allocator() noexcept {}
    template <class _Up> __attribute__ ((__visibility__("hidden"), __always_inline__)) allocator(const allocator<_Up>&) noexcept {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) const_pointer address(const_reference __x) const noexcept
        {return std::__1::addressof(__x);}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) pointer allocate(size_type __n, allocator<void>::const_pointer = 0)
    {
        if (__n > max_size())





            throw bad_alloc();







        return static_cast<pointer>(std::__1::__allocate(__n * sizeof(_Tp)));
    }
    __attribute__ ((__visibility__("hidden"), __always_inline__)) void deallocate(pointer __p, size_type) noexcept
        {std::__1::__deallocate((void*)__p);}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) size_type max_size() const noexcept
        {return size_type(~0) / sizeof(_Tp);}

    template <class _Up, class... _Args>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        void
        construct(_Up* __p, _Args&&... __args)
        {
            ::new((void*)__p) _Up(std::__1::forward<_Args>(__args)...);
        }
# 1922 "/opt/intel/sgxsdk/include/libcxx/memory" 3
    __attribute__ ((__visibility__("hidden"), __always_inline__)) void destroy(pointer __p) {__p->~_Tp();}
};

template <class _Tp, class _Up>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool operator==(const allocator<_Tp>&, const allocator<_Up>&) noexcept {return true;}

template <class _Tp, class _Up>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool operator!=(const allocator<_Tp>&, const allocator<_Up>&) noexcept {return false;}

template <class _OutputIterator, class _Tp>
class __attribute__ ((__visibility__("default"))) raw_storage_iterator
    : public iterator<output_iterator_tag,
                      _Tp,
                      ptrdiff_t,
                      _Tp*,
                      raw_storage_iterator<_OutputIterator, _Tp>&>
{
private:
    _OutputIterator __x_;
public:
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit raw_storage_iterator(_OutputIterator __x) : __x_(__x) {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) raw_storage_iterator& operator*() {return *this;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) raw_storage_iterator& operator=(const _Tp& __element)
        {::new(&*__x_) _Tp(__element); return *this;}




    __attribute__ ((__visibility__("hidden"), __always_inline__)) raw_storage_iterator& operator++() {++__x_; return *this;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) raw_storage_iterator operator++(int)
        {raw_storage_iterator __t(*this); ++__x_; return __t;}



};

template <class _Tp>
pair<_Tp*, ptrdiff_t>
get_temporary_buffer(ptrdiff_t __n) noexcept
{
    pair<_Tp*, ptrdiff_t> __r(0, 0);
    const ptrdiff_t __m = (~ptrdiff_t(0) ^
                           ptrdiff_t(ptrdiff_t(1) << (sizeof(ptrdiff_t) * 8 - 1)))
                           / sizeof(_Tp);
    if (__n > __m)
        __n = __m;
    while (__n > 0)
    {
        __r.first = static_cast<_Tp*>(::operator new(__n * sizeof(_Tp), nothrow));
        if (__r.first)
        {
            __r.second = __n;
            break;
        }
        __n /= 2;
    }
    return __r;
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void return_temporary_buffer(_Tp* __p) noexcept {::operator delete(__p);}

template <class _Tp>
struct auto_ptr_ref
{
    _Tp* __ptr_;
};

template<class _Tp>
class __attribute__ ((__visibility__("default"))) auto_ptr
{
private:
    _Tp* __ptr_;
public:
    typedef _Tp element_type;

    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit auto_ptr(_Tp* __p = 0) throw() : __ptr_(__p) {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) auto_ptr(auto_ptr& __p) throw() : __ptr_(__p.release()) {}
    template<class _Up> __attribute__ ((__visibility__("hidden"), __always_inline__)) auto_ptr(auto_ptr<_Up>& __p) throw()
        : __ptr_(__p.release()) {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) auto_ptr& operator=(auto_ptr& __p) throw()
        {reset(__p.release()); return *this;}
    template<class _Up> __attribute__ ((__visibility__("hidden"), __always_inline__)) auto_ptr& operator=(auto_ptr<_Up>& __p) throw()
        {reset(__p.release()); return *this;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) auto_ptr& operator=(auto_ptr_ref<_Tp> __p) throw()
        {reset(__p.__ptr_); return *this;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) ~auto_ptr() throw() {delete __ptr_;}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) _Tp& operator*() const throw()
        {return *__ptr_;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) _Tp* operator->() const throw() {return __ptr_;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) _Tp* get() const throw() {return __ptr_;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) _Tp* release() throw()
    {
        _Tp* __t = __ptr_;
        __ptr_ = 0;
        return __t;
    }
    __attribute__ ((__visibility__("hidden"), __always_inline__)) void reset(_Tp* __p = 0) throw()
    {
        if (__ptr_ != __p)
            delete __ptr_;
        __ptr_ = __p;
    }

    __attribute__ ((__visibility__("hidden"), __always_inline__)) auto_ptr(auto_ptr_ref<_Tp> __p) throw() : __ptr_(__p.__ptr_) {}
    template<class _Up> __attribute__ ((__visibility__("hidden"), __always_inline__)) operator auto_ptr_ref<_Up>() throw()
        {auto_ptr_ref<_Up> __t; __t.__ptr_ = release(); return __t;}
    template<class _Up> __attribute__ ((__visibility__("hidden"), __always_inline__)) operator auto_ptr<_Up>() throw()
        {return auto_ptr<_Up>(release());}
};

template <>
class __attribute__ ((__visibility__("default"))) auto_ptr<void>
{
public:
    typedef void element_type;
};

template <class _T1, class _T2, bool = is_same<typename remove_cv<_T1>::type,
                                                     typename remove_cv<_T2>::type>::value,
                                bool = is_empty<_T1>::value
                                       && !__libcpp_is_final<_T1>::value,
                                bool = is_empty<_T2>::value
                                       && !__libcpp_is_final<_T2>::value
         >
struct __libcpp_compressed_pair_switch;

template <class _T1, class _T2, bool IsSame>
struct __libcpp_compressed_pair_switch<_T1, _T2, IsSame, false, false> {enum {value = 0};};

template <class _T1, class _T2, bool IsSame>
struct __libcpp_compressed_pair_switch<_T1, _T2, IsSame, true, false> {enum {value = 1};};

template <class _T1, class _T2, bool IsSame>
struct __libcpp_compressed_pair_switch<_T1, _T2, IsSame, false, true> {enum {value = 2};};

template <class _T1, class _T2>
struct __libcpp_compressed_pair_switch<_T1, _T2, false, true, true> {enum {value = 3};};

template <class _T1, class _T2>
struct __libcpp_compressed_pair_switch<_T1, _T2, true, true, true> {enum {value = 1};};

template <class _T1, class _T2, unsigned = __libcpp_compressed_pair_switch<_T1, _T2>::value>
class __libcpp_compressed_pair_imp;

template <class _T1, class _T2>
class __libcpp_compressed_pair_imp<_T1, _T2, 0>
{
private:
    _T1 __first_;
    _T2 __second_;
public:
    typedef _T1 _T1_param;
    typedef _T2 _T2_param;

    typedef typename remove_reference<_T1>::type& _T1_reference;
    typedef typename remove_reference<_T2>::type& _T2_reference;

    typedef const typename remove_reference<_T1>::type& _T1_const_reference;
    typedef const typename remove_reference<_T2>::type& _T2_const_reference;

    __attribute__ ((__visibility__("hidden"), __always_inline__)) __libcpp_compressed_pair_imp() : __first_(), __second_() {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit __libcpp_compressed_pair_imp(_T1_param __t1)
        : __first_(std::__1::forward<_T1_param>(__t1)), __second_() {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit __libcpp_compressed_pair_imp(_T2_param __t2)
        : __first_(), __second_(std::__1::forward<_T2_param>(__t2)) {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) __libcpp_compressed_pair_imp(_T1_param __t1, _T2_param __t2)
        : __first_(std::__1::forward<_T1_param>(__t1)), __second_(std::__1::forward<_T2_param>(__t2)) {}
# 2135 "/opt/intel/sgxsdk/include/libcxx/memory" 3
    template <class... _Args1, class... _Args2, size_t... _I1, size_t... _I2>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        __libcpp_compressed_pair_imp(piecewise_construct_t __pc,
                                     tuple<_Args1...> __first_args,
                                     tuple<_Args2...> __second_args,
                                     __tuple_indices<_I1...>,
                                     __tuple_indices<_I2...>)
            : __first_(std::__1::forward<_Args1>(std::__1::get<_I1>(__first_args))...),
              __second_(std::__1::forward<_Args2>(std::__1::get<_I2>(__second_args))...)
            {}



    __attribute__ ((__visibility__("hidden"), __always_inline__)) _T1_reference first() noexcept {return __first_;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) _T1_const_reference first() const noexcept {return __first_;}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) _T2_reference second() noexcept {return __second_;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) _T2_const_reference second() const noexcept {return __second_;}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) void swap(__libcpp_compressed_pair_imp& __x)
        noexcept(__is_nothrow_swappable<_T1>::value && __is_nothrow_swappable<_T2>::value)

    {
        using std::__1::swap;
        swap(__first_, __x.__first_);
        swap(__second_, __x.__second_);
    }
};

template <class _T1, class _T2>
class __libcpp_compressed_pair_imp<_T1, _T2, 1>
    : private _T1
{
private:
    _T2 __second_;
public:
    typedef _T1 _T1_param;
    typedef _T2 _T2_param;

    typedef _T1& _T1_reference;
    typedef typename remove_reference<_T2>::type& _T2_reference;

    typedef const _T1& _T1_const_reference;
    typedef const typename remove_reference<_T2>::type& _T2_const_reference;

    __attribute__ ((__visibility__("hidden"), __always_inline__)) __libcpp_compressed_pair_imp() : __second_() {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit __libcpp_compressed_pair_imp(_T1_param __t1)
        : _T1(std::__1::forward<_T1_param>(__t1)), __second_() {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit __libcpp_compressed_pair_imp(_T2_param __t2)
        : __second_(std::__1::forward<_T2_param>(__t2)) {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) __libcpp_compressed_pair_imp(_T1_param __t1, _T2_param __t2)
        : _T1(std::__1::forward<_T1_param>(__t1)), __second_(std::__1::forward<_T2_param>(__t2)) {}
# 2226 "/opt/intel/sgxsdk/include/libcxx/memory" 3
    template <class... _Args1, class... _Args2, size_t... _I1, size_t... _I2>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        __libcpp_compressed_pair_imp(piecewise_construct_t __pc,
                                     tuple<_Args1...> __first_args,
                                     tuple<_Args2...> __second_args,
                                     __tuple_indices<_I1...>,
                                     __tuple_indices<_I2...>)
            : _T1(std::__1::forward<_Args1>(std::__1::get<_I1>(__first_args))...),
              __second_(std::__1::forward<_Args2>(std::__1::get<_I2>(__second_args))...)
            {}



    __attribute__ ((__visibility__("hidden"), __always_inline__)) _T1_reference first() noexcept {return *this;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) _T1_const_reference first() const noexcept {return *this;}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) _T2_reference second() noexcept {return __second_;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) _T2_const_reference second() const noexcept {return __second_;}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) void swap(__libcpp_compressed_pair_imp& __x)
        noexcept(__is_nothrow_swappable<_T1>::value && __is_nothrow_swappable<_T2>::value)

    {
        using std::__1::swap;
        swap(__second_, __x.__second_);
    }
};

template <class _T1, class _T2>
class __libcpp_compressed_pair_imp<_T1, _T2, 2>
    : private _T2
{
private:
    _T1 __first_;
public:
    typedef _T1 _T1_param;
    typedef _T2 _T2_param;

    typedef typename remove_reference<_T1>::type& _T1_reference;
    typedef _T2& _T2_reference;

    typedef const typename remove_reference<_T1>::type& _T1_const_reference;
    typedef const _T2& _T2_const_reference;

    __attribute__ ((__visibility__("hidden"), __always_inline__)) __libcpp_compressed_pair_imp() : __first_() {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit __libcpp_compressed_pair_imp(_T1_param __t1)
        : __first_(std::__1::forward<_T1_param>(__t1)) {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit __libcpp_compressed_pair_imp(_T2_param __t2)
        : _T2(std::__1::forward<_T2_param>(__t2)), __first_() {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) __libcpp_compressed_pair_imp(_T1_param __t1, _T2_param __t2)
        noexcept(is_nothrow_move_constructible<_T1>::value && is_nothrow_move_constructible<_T2>::value)

        : _T2(std::__1::forward<_T2_param>(__t2)), __first_(std::__1::forward<_T1_param>(__t1)) {}
# 2318 "/opt/intel/sgxsdk/include/libcxx/memory" 3
    template <class... _Args1, class... _Args2, size_t... _I1, size_t... _I2>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        __libcpp_compressed_pair_imp(piecewise_construct_t __pc,
                                     tuple<_Args1...> __first_args,
                                     tuple<_Args2...> __second_args,
                                     __tuple_indices<_I1...>,
                                     __tuple_indices<_I2...>)
            : _T2(std::__1::forward<_Args2>(std::__1::get<_I2>(__second_args))...),
              __first_(std::__1::forward<_Args1>(std::__1::get<_I1>(__first_args))...)

            {}



    __attribute__ ((__visibility__("hidden"), __always_inline__)) _T1_reference first() noexcept {return __first_;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) _T1_const_reference first() const noexcept {return __first_;}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) _T2_reference second() noexcept {return *this;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) _T2_const_reference second() const noexcept {return *this;}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) void swap(__libcpp_compressed_pair_imp& __x)
        noexcept(__is_nothrow_swappable<_T1>::value && __is_nothrow_swappable<_T2>::value)

    {
        using std::__1::swap;
        swap(__first_, __x.__first_);
    }
};

template <class _T1, class _T2>
class __libcpp_compressed_pair_imp<_T1, _T2, 3>
    : private _T1,
      private _T2
{
public:
    typedef _T1 _T1_param;
    typedef _T2 _T2_param;

    typedef _T1& _T1_reference;
    typedef _T2& _T2_reference;

    typedef const _T1& _T1_const_reference;
    typedef const _T2& _T2_const_reference;

    __attribute__ ((__visibility__("hidden"), __always_inline__)) __libcpp_compressed_pair_imp() {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit __libcpp_compressed_pair_imp(_T1_param __t1)
        : _T1(std::__1::forward<_T1_param>(__t1)) {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit __libcpp_compressed_pair_imp(_T2_param __t2)
        : _T2(std::__1::forward<_T2_param>(__t2)) {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) __libcpp_compressed_pair_imp(_T1_param __t1, _T2_param __t2)
        : _T1(std::__1::forward<_T1_param>(__t1)), _T2(std::__1::forward<_T2_param>(__t2)) {}
# 2408 "/opt/intel/sgxsdk/include/libcxx/memory" 3
    template <class... _Args1, class... _Args2, size_t... _I1, size_t... _I2>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        __libcpp_compressed_pair_imp(piecewise_construct_t __pc,
                                     tuple<_Args1...> __first_args,
                                     tuple<_Args2...> __second_args,
                                     __tuple_indices<_I1...>,
                                     __tuple_indices<_I2...>)
            : _T1(std::__1::forward<_Args1>(std::__1::get<_I1>(__first_args))...),
              _T2(std::__1::forward<_Args2>(std::__1::get<_I2>(__second_args))...)
            {}



    __attribute__ ((__visibility__("hidden"), __always_inline__)) _T1_reference first() noexcept {return *this;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) _T1_const_reference first() const noexcept {return *this;}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) _T2_reference second() noexcept {return *this;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) _T2_const_reference second() const noexcept {return *this;}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) void swap(__libcpp_compressed_pair_imp&)
        noexcept(__is_nothrow_swappable<_T1>::value && __is_nothrow_swappable<_T2>::value)

    {
    }
};

template <class _T1, class _T2>
class __compressed_pair
    : private __libcpp_compressed_pair_imp<_T1, _T2>
{
    typedef __libcpp_compressed_pair_imp<_T1, _T2> base;
public:
    typedef typename base::_T1_param _T1_param;
    typedef typename base::_T2_param _T2_param;

    typedef typename base::_T1_reference _T1_reference;
    typedef typename base::_T2_reference _T2_reference;

    typedef typename base::_T1_const_reference _T1_const_reference;
    typedef typename base::_T2_const_reference _T2_const_reference;

    __attribute__ ((__visibility__("hidden"), __always_inline__)) __compressed_pair() {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit __compressed_pair(_T1_param __t1)
        : base(std::__1::forward<_T1_param>(__t1)) {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit __compressed_pair(_T2_param __t2)
        : base(std::__1::forward<_T2_param>(__t2)) {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) __compressed_pair(_T1_param __t1, _T2_param __t2)
        : base(std::__1::forward<_T1_param>(__t1), std::__1::forward<_T2_param>(__t2)) {}
# 2493 "/opt/intel/sgxsdk/include/libcxx/memory" 3
    template <class... _Args1, class... _Args2>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        __compressed_pair(piecewise_construct_t __pc, tuple<_Args1...> __first_args,
                                                      tuple<_Args2...> __second_args)
            : base(__pc, std::__1::move(__first_args), std::__1::move(__second_args),
                   typename __make_tuple_indices<sizeof...(_Args1)>::type(),
                   typename __make_tuple_indices<sizeof...(_Args2) >::type())
            {}



    __attribute__ ((__visibility__("hidden"), __always_inline__)) _T1_reference first() noexcept {return base::first();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) _T1_const_reference first() const noexcept {return base::first();}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) _T2_reference second() noexcept {return base::second();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) _T2_const_reference second() const noexcept {return base::second();}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) void swap(__compressed_pair& __x)
        noexcept(__is_nothrow_swappable<_T1>::value && __is_nothrow_swappable<_T2>::value)

        {base::swap(__x);}
};

template <class _T1, class _T2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
swap(__compressed_pair<_T1, _T2>& __x, __compressed_pair<_T1, _T2>& __y)
        noexcept(__is_nothrow_swappable<_T1>::value && __is_nothrow_swappable<_T2>::value)

    {__x.swap(__y);}



template <class _Ptr1, class _Ptr2,
          bool = is_same<typename remove_cv<typename pointer_traits<_Ptr1>::element_type>::type,
                         typename remove_cv<typename pointer_traits<_Ptr2>::element_type>::type
                        >::value
         >
struct __same_or_less_cv_qualified_imp
    : is_convertible<_Ptr1, _Ptr2> {};

template <class _Ptr1, class _Ptr2>
struct __same_or_less_cv_qualified_imp<_Ptr1, _Ptr2, false>
    : false_type {};

template <class _Ptr1, class _Ptr2, bool = is_pointer<_Ptr1>::value ||
                                           is_same<_Ptr1, _Ptr2>::value ||
                                           __has_element_type<_Ptr1>::value>
struct __same_or_less_cv_qualified
    : __same_or_less_cv_qualified_imp<_Ptr1, _Ptr2> {};

template <class _Ptr1, class _Ptr2>
struct __same_or_less_cv_qualified<_Ptr1, _Ptr2, false>
    : false_type {};



template <class _Tp>
struct __attribute__ ((__visibility__("default"))) default_delete
{

    __attribute__ ((__visibility__("hidden"), __always_inline__)) constexpr default_delete() noexcept = default;



    template <class _Up>
        __attribute__ ((__visibility__("hidden"), __always_inline__)) default_delete(const default_delete<_Up>&,
             typename enable_if<is_convertible<_Up*, _Tp*>::value>::type* = 0) noexcept {}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) void operator() (_Tp* __ptr) const noexcept
        {
            static_assert(sizeof(_Tp) > 0, "default_delete can not delete incomplete type");
            static_assert(!is_void<_Tp>::value, "default_delete can not delete incomplete type");
            delete __ptr;
        }
};

template <class _Tp>
struct __attribute__ ((__visibility__("default"))) default_delete<_Tp[]>
{
public:

    __attribute__ ((__visibility__("hidden"), __always_inline__)) constexpr default_delete() noexcept = default;



    template <class _Up>
        __attribute__ ((__visibility__("hidden"), __always_inline__)) default_delete(const default_delete<_Up[]>&,
             typename enable_if<__same_or_less_cv_qualified<_Up*, _Tp*>::value>::type* = 0) noexcept {}
    template <class _Up>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        void operator() (_Up* __ptr,
                         typename enable_if<__same_or_less_cv_qualified<_Up*, _Tp*>::value>::type* = 0) const noexcept
        {
            static_assert(sizeof(_Tp) > 0, "default_delete can not delete incomplete type");
            static_assert(!is_void<_Tp>::value, "default_delete can not delete void type");
            delete [] __ptr;
        }
};

template <class _Tp, class _Dp = default_delete<_Tp> >
class __attribute__ ((__visibility__("default"))) unique_ptr
{
public:
    typedef _Tp element_type;
    typedef _Dp deleter_type;
    typedef typename __pointer_type<_Tp, deleter_type>::type pointer;
private:
    __compressed_pair<pointer, deleter_type> __ptr_;
# 2611 "/opt/intel/sgxsdk/include/libcxx/memory" 3
    struct __nat {int __for_bool_;};

    typedef typename remove_reference<deleter_type>::type& _Dp_reference;
    typedef const typename remove_reference<deleter_type>::type& _Dp_const_reference;
public:
    __attribute__ ((__visibility__("hidden"), __always_inline__)) constexpr unique_ptr() noexcept
        : __ptr_(pointer())
        {
            static_assert(!is_pointer<deleter_type>::value,
                "unique_ptr constructed with null function pointer deleter");
        }
    __attribute__ ((__visibility__("hidden"), __always_inline__)) constexpr unique_ptr(nullptr_t) noexcept
        : __ptr_(pointer())
        {
            static_assert(!is_pointer<deleter_type>::value,
                "unique_ptr constructed with null function pointer deleter");
        }
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit unique_ptr(pointer __p) noexcept
        : __ptr_(std::__1::move(__p))
        {
            static_assert(!is_pointer<deleter_type>::value,
                "unique_ptr constructed with null function pointer deleter");
        }


    __attribute__ ((__visibility__("hidden"), __always_inline__)) unique_ptr(pointer __p, typename conditional<
                                        is_reference<deleter_type>::value,
                                        deleter_type,
                                        typename add_lvalue_reference<const deleter_type>::type>::type __d)
             noexcept
        : __ptr_(__p, __d) {}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) unique_ptr(pointer __p, typename remove_reference<deleter_type>::type&& __d)
             noexcept
        : __ptr_(__p, std::__1::move(__d))
        {
            static_assert(!is_reference<deleter_type>::value, "rvalue deleter bound to reference");
        }
    __attribute__ ((__visibility__("hidden"), __always_inline__)) unique_ptr(unique_ptr&& __u) noexcept
        : __ptr_(__u.release(), std::__1::forward<deleter_type>(__u.get_deleter())) {}
    template <class _Up, class _Ep>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        unique_ptr(unique_ptr<_Up, _Ep>&& __u,
                   typename enable_if
                      <
                        !is_array<_Up>::value &&
                         is_convertible<typename unique_ptr<_Up, _Ep>::pointer, pointer>::value &&
                         is_convertible<_Ep, deleter_type>::value &&
                         (
                            !is_reference<deleter_type>::value ||
                            is_same<deleter_type, _Ep>::value
                         ),
                         __nat
                      >::type = __nat()) noexcept
            : __ptr_(__u.release(), std::__1::forward<_Ep>(__u.get_deleter())) {}

    template <class _Up>
        __attribute__ ((__visibility__("hidden"), __always_inline__)) unique_ptr(auto_ptr<_Up>&& __p,
                typename enable_if<
                                      is_convertible<_Up*, _Tp*>::value &&
                                      is_same<_Dp, default_delete<_Tp> >::value,
                                      __nat
                                  >::type = __nat()) noexcept
            : __ptr_(__p.release())
            {
            }

        __attribute__ ((__visibility__("hidden"), __always_inline__)) unique_ptr& operator=(unique_ptr&& __u) noexcept
            {
                reset(__u.release());
                __ptr_.second() = std::__1::forward<deleter_type>(__u.get_deleter());
                return *this;
            }

        template <class _Up, class _Ep>
            __attribute__ ((__visibility__("hidden"), __always_inline__))
            typename enable_if
            <
                !is_array<_Up>::value &&
                is_convertible<typename unique_ptr<_Up, _Ep>::pointer, pointer>::value &&
                is_assignable<deleter_type&, _Ep&&>::value,
                unique_ptr&
            >::type
            operator=(unique_ptr<_Up, _Ep>&& __u) noexcept
            {
                reset(__u.release());
                __ptr_.second() = std::__1::forward<_Ep>(__u.get_deleter());
                return *this;
            }
# 2739 "/opt/intel/sgxsdk/include/libcxx/memory" 3
    __attribute__ ((__visibility__("hidden"), __always_inline__)) ~unique_ptr() {reset();}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) unique_ptr& operator=(nullptr_t) noexcept
    {
        reset();
        return *this;
    }

    __attribute__ ((__visibility__("hidden"), __always_inline__)) typename add_lvalue_reference<_Tp>::type operator*() const
        {return *__ptr_.first();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) pointer operator->() const noexcept {return __ptr_.first();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) pointer get() const noexcept {return __ptr_.first();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) _Dp_reference get_deleter() noexcept
        {return __ptr_.second();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) _Dp_const_reference get_deleter() const noexcept
        {return __ptr_.second();}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
        operator bool() const noexcept
        {return __ptr_.first() != nullptr;}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) pointer release() noexcept
    {
        pointer __t = __ptr_.first();
        __ptr_.first() = pointer();
        return __t;
    }

    __attribute__ ((__visibility__("hidden"), __always_inline__)) void reset(pointer __p = pointer()) noexcept
    {
        pointer __tmp = __ptr_.first();
        __ptr_.first() = __p;
        if (__tmp)
            __ptr_.second()(__tmp);
    }

    __attribute__ ((__visibility__("hidden"), __always_inline__)) void swap(unique_ptr& __u) noexcept
        {__ptr_.swap(__u.__ptr_);}
};

template <class _Tp, class _Dp>
class __attribute__ ((__visibility__("default"))) unique_ptr<_Tp[], _Dp>
{
public:
    typedef _Tp element_type;
    typedef _Dp deleter_type;
    typedef typename __pointer_type<_Tp, deleter_type>::type pointer;
private:
    __compressed_pair<pointer, deleter_type> __ptr_;
# 2797 "/opt/intel/sgxsdk/include/libcxx/memory" 3
    struct __nat {int __for_bool_;};

    typedef typename remove_reference<deleter_type>::type& _Dp_reference;
    typedef const typename remove_reference<deleter_type>::type& _Dp_const_reference;
public:
    __attribute__ ((__visibility__("hidden"), __always_inline__)) constexpr unique_ptr() noexcept
        : __ptr_(pointer())
        {
            static_assert(!is_pointer<deleter_type>::value,
                "unique_ptr constructed with null function pointer deleter");
        }
    __attribute__ ((__visibility__("hidden"), __always_inline__)) constexpr unique_ptr(nullptr_t) noexcept
        : __ptr_(pointer())
        {
            static_assert(!is_pointer<deleter_type>::value,
                "unique_ptr constructed with null function pointer deleter");
        }

    template <class _Pp>
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit unique_ptr(_Pp __p,
            typename enable_if<__same_or_less_cv_qualified<_Pp, pointer>::value, __nat>::type = __nat()) noexcept
        : __ptr_(__p)
        {
            static_assert(!is_pointer<deleter_type>::value,
                "unique_ptr constructed with null function pointer deleter");
        }

    template <class _Pp>
    __attribute__ ((__visibility__("hidden"), __always_inline__)) unique_ptr(_Pp __p, typename conditional<
                                       is_reference<deleter_type>::value,
                                       deleter_type,
                                       typename add_lvalue_reference<const deleter_type>::type>::type __d,
                                       typename enable_if<__same_or_less_cv_qualified<_Pp, pointer>::value, __nat>::type = __nat())
             noexcept
        : __ptr_(__p, __d) {}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) unique_ptr(nullptr_t, typename conditional<
                                       is_reference<deleter_type>::value,
                                       deleter_type,
                                       typename add_lvalue_reference<const deleter_type>::type>::type __d)
             noexcept
        : __ptr_(pointer(), __d) {}

    template <class _Pp>
    __attribute__ ((__visibility__("hidden"), __always_inline__)) unique_ptr(_Pp __p,
                                         typename remove_reference<deleter_type>::type&& __d,
                                         typename enable_if<__same_or_less_cv_qualified<_Pp, pointer>::value, __nat>::type = __nat())
             noexcept
        : __ptr_(__p, std::__1::move(__d))
        {
            static_assert(!is_reference<deleter_type>::value, "rvalue deleter bound to reference");
        }

    __attribute__ ((__visibility__("hidden"), __always_inline__)) unique_ptr(nullptr_t, typename remove_reference<deleter_type>::type&& __d)
             noexcept
        : __ptr_(pointer(), std::__1::move(__d))
        {
            static_assert(!is_reference<deleter_type>::value, "rvalue deleter bound to reference");
        }

    __attribute__ ((__visibility__("hidden"), __always_inline__)) unique_ptr(unique_ptr&& __u) noexcept
        : __ptr_(__u.release(), std::__1::forward<deleter_type>(__u.get_deleter())) {}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) unique_ptr& operator=(unique_ptr&& __u) noexcept
        {
            reset(__u.release());
            __ptr_.second() = std::__1::forward<deleter_type>(__u.get_deleter());
            return *this;
        }

    template <class _Up, class _Ep>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        unique_ptr(unique_ptr<_Up, _Ep>&& __u,
                   typename enable_if
                            <
                                is_array<_Up>::value &&
                                __same_or_less_cv_qualified<typename unique_ptr<_Up, _Ep>::pointer, pointer>::value
                                && is_convertible<_Ep, deleter_type>::value &&
                                (
                                    !is_reference<deleter_type>::value ||
                                    is_same<deleter_type, _Ep>::value
                                ),
                                __nat
                            >::type = __nat()
                  ) noexcept
        : __ptr_(__u.release(), std::__1::forward<deleter_type>(__u.get_deleter())) {}


        template <class _Up, class _Ep>
            __attribute__ ((__visibility__("hidden"), __always_inline__))
            typename enable_if
            <
                is_array<_Up>::value &&
                __same_or_less_cv_qualified<typename unique_ptr<_Up, _Ep>::pointer, pointer>::value &&
                is_assignable<deleter_type&, _Ep&&>::value,
                unique_ptr&
            >::type
            operator=(unique_ptr<_Up, _Ep>&& __u) noexcept
            {
                reset(__u.release());
                __ptr_.second() = std::__1::forward<_Ep>(__u.get_deleter());
                return *this;
            }
# 2931 "/opt/intel/sgxsdk/include/libcxx/memory" 3
    __attribute__ ((__visibility__("hidden"), __always_inline__)) ~unique_ptr() {reset();}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) unique_ptr& operator=(nullptr_t) noexcept
    {
        reset();
        return *this;
    }

    __attribute__ ((__visibility__("hidden"), __always_inline__)) typename add_lvalue_reference<_Tp>::type operator[](size_t __i) const
        {return __ptr_.first()[__i];}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) pointer get() const noexcept {return __ptr_.first();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) _Dp_reference get_deleter() noexcept
        {return __ptr_.second();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) _Dp_const_reference get_deleter() const noexcept
        {return __ptr_.second();}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
        operator bool() const noexcept
        {return __ptr_.first() != nullptr;}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) pointer release() noexcept
    {
        pointer __t = __ptr_.first();
        __ptr_.first() = pointer();
        return __t;
    }

    template <class _Pp>
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    typename enable_if<__same_or_less_cv_qualified<_Pp, pointer>::value, void>::type
    reset(_Pp __p) noexcept
    {
        pointer __tmp = __ptr_.first();
        __ptr_.first() = __p;
        if (__tmp)
            __ptr_.second()(__tmp);
    }
    __attribute__ ((__visibility__("hidden"), __always_inline__)) void reset(nullptr_t = nullptr) noexcept
    {
        pointer __tmp = __ptr_.first();
        __ptr_.first() = nullptr;
        if (__tmp)
            __ptr_.second()(__tmp);
    }

    __attribute__ ((__visibility__("hidden"), __always_inline__)) void swap(unique_ptr& __u) {__ptr_.swap(__u.__ptr_);}
private:
# 2993 "/opt/intel/sgxsdk/include/libcxx/memory" 3
};

template <class _Tp, class _Dp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if<
    __is_swappable<_Dp>::value,
    void
>::type
swap(unique_ptr<_Tp, _Dp>& __x, unique_ptr<_Tp, _Dp>& __y) noexcept {__x.swap(__y);}

template <class _T1, class _D1, class _T2, class _D2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator==(const unique_ptr<_T1, _D1>& __x, const unique_ptr<_T2, _D2>& __y) {return __x.get() == __y.get();}

template <class _T1, class _D1, class _T2, class _D2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator!=(const unique_ptr<_T1, _D1>& __x, const unique_ptr<_T2, _D2>& __y) {return !(__x == __y);}

template <class _T1, class _D1, class _T2, class _D2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator< (const unique_ptr<_T1, _D1>& __x, const unique_ptr<_T2, _D2>& __y)
{
    typedef typename unique_ptr<_T1, _D1>::pointer _P1;
    typedef typename unique_ptr<_T2, _D2>::pointer _P2;
    typedef typename common_type<_P1, _P2>::type _Vp;
    return less<_Vp>()(__x.get(), __y.get());
}

template <class _T1, class _D1, class _T2, class _D2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator> (const unique_ptr<_T1, _D1>& __x, const unique_ptr<_T2, _D2>& __y) {return __y < __x;}

template <class _T1, class _D1, class _T2, class _D2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<=(const unique_ptr<_T1, _D1>& __x, const unique_ptr<_T2, _D2>& __y) {return !(__y < __x);}

template <class _T1, class _D1, class _T2, class _D2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>=(const unique_ptr<_T1, _D1>& __x, const unique_ptr<_T2, _D2>& __y) {return !(__x < __y);}

template <class _T1, class _D1>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator==(const unique_ptr<_T1, _D1>& __x, nullptr_t) noexcept
{
    return !__x;
}

template <class _T1, class _D1>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator==(nullptr_t, const unique_ptr<_T1, _D1>& __x) noexcept
{
    return !__x;
}

template <class _T1, class _D1>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator!=(const unique_ptr<_T1, _D1>& __x, nullptr_t) noexcept
{
    return static_cast<bool>(__x);
}

template <class _T1, class _D1>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator!=(nullptr_t, const unique_ptr<_T1, _D1>& __x) noexcept
{
    return static_cast<bool>(__x);
}

template <class _T1, class _D1>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<(const unique_ptr<_T1, _D1>& __x, nullptr_t)
{
    typedef typename unique_ptr<_T1, _D1>::pointer _P1;
    return less<_P1>()(__x.get(), nullptr);
}

template <class _T1, class _D1>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<(nullptr_t, const unique_ptr<_T1, _D1>& __x)
{
    typedef typename unique_ptr<_T1, _D1>::pointer _P1;
    return less<_P1>()(nullptr, __x.get());
}

template <class _T1, class _D1>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>(const unique_ptr<_T1, _D1>& __x, nullptr_t)
{
    return nullptr < __x;
}

template <class _T1, class _D1>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>(nullptr_t, const unique_ptr<_T1, _D1>& __x)
{
    return __x < nullptr;
}

template <class _T1, class _D1>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<=(const unique_ptr<_T1, _D1>& __x, nullptr_t)
{
    return !(nullptr < __x);
}

template <class _T1, class _D1>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<=(nullptr_t, const unique_ptr<_T1, _D1>& __x)
{
    return !(__x < nullptr);
}

template <class _T1, class _D1>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>=(const unique_ptr<_T1, _D1>& __x, nullptr_t)
{
    return !(__x < nullptr);
}

template <class _T1, class _D1>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>=(nullptr_t, const unique_ptr<_T1, _D1>& __x)
{
    return !(nullptr < __x);
}
# 3192 "/opt/intel/sgxsdk/include/libcxx/memory" 3
template <class _Size>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Size
__loadword(const void* __p)
{
    _Size __r;
    std::memcpy(&__r, __p, sizeof(__r));
    return __r;
}




template <class _Size, size_t = sizeof(_Size)*8>
struct __murmur2_or_cityhash;

template <class _Size>
struct __murmur2_or_cityhash<_Size, 32>
{
    _Size operator()(const void* __key, _Size __len);
};


template <class _Size>
_Size
__murmur2_or_cityhash<_Size, 32>::operator()(const void* __key, _Size __len)
{
    const _Size __m = 0x5bd1e995;
    const _Size __r = 24;
    _Size __h = __len;
    const unsigned char* __data = static_cast<const unsigned char*>(__key);
    for (; __len >= 4; __data += 4, __len -= 4)
    {
        _Size __k = __loadword<_Size>(__data);
        __k *= __m;
        __k ^= __k >> __r;
        __k *= __m;
        __h *= __m;
        __h ^= __k;
    }
    switch (__len)
    {
    case 3:
        __h ^= __data[2] << 16;
    case 2:
        __h ^= __data[1] << 8;
    case 1:
        __h ^= __data[0];
        __h *= __m;
    }
    __h ^= __h >> 13;
    __h *= __m;
    __h ^= __h >> 15;
    return __h;
}

template <class _Size>
struct __murmur2_or_cityhash<_Size, 64>
{
    _Size operator()(const void* __key, _Size __len);

 private:

  static const _Size __k0 = 0xc3a5c85c97cb3127ULL;
  static const _Size __k1 = 0xb492b66fbe98f273ULL;
  static const _Size __k2 = 0x9ae16a3b2f90404fULL;
  static const _Size __k3 = 0xc949d7c7509e6557ULL;

  static _Size __rotate(_Size __val, int __shift) {
    return __shift == 0 ? __val : ((__val >> __shift) | (__val << (64 - __shift)));
  }

  static _Size __rotate_by_at_least_1(_Size __val, int __shift) {
    return (__val >> __shift) | (__val << (64 - __shift));
  }

  static _Size __shift_mix(_Size __val) {
    return __val ^ (__val >> 47);
  }

  static _Size __hash_len_16(_Size __u, _Size __v) {
    const _Size __mul = 0x9ddfea08eb382d69ULL;
    _Size __a = (__u ^ __v) * __mul;
    __a ^= (__a >> 47);
    _Size __b = (__v ^ __a) * __mul;
    __b ^= (__b >> 47);
    __b *= __mul;
    return __b;
  }

  static _Size __hash_len_0_to_16(const char* __s, _Size __len) {
    if (__len > 8) {
      const _Size __a = __loadword<_Size>(__s);
      const _Size __b = __loadword<_Size>(__s + __len - 8);
      return __hash_len_16(__a, __rotate_by_at_least_1(__b + __len, __len)) ^ __b;
    }
    if (__len >= 4) {
      const uint32_t __a = __loadword<uint32_t>(__s);
      const uint32_t __b = __loadword<uint32_t>(__s + __len - 4);
      return __hash_len_16(__len + (__a << 3), __b);
    }
    if (__len > 0) {
      const unsigned char __a = __s[0];
      const unsigned char __b = __s[__len >> 1];
      const unsigned char __c = __s[__len - 1];
      const uint32_t __y = static_cast<uint32_t>(__a) +
                           (static_cast<uint32_t>(__b) << 8);
      const uint32_t __z = __len + (static_cast<uint32_t>(__c) << 2);
      return __shift_mix(__y * __k2 ^ __z * __k3) * __k2;
    }
    return __k2;
  }

  static _Size __hash_len_17_to_32(const char *__s, _Size __len) {
    const _Size __a = __loadword<_Size>(__s) * __k1;
    const _Size __b = __loadword<_Size>(__s + 8);
    const _Size __c = __loadword<_Size>(__s + __len - 8) * __k2;
    const _Size __d = __loadword<_Size>(__s + __len - 16) * __k0;
    return __hash_len_16(__rotate(__a - __b, 43) + __rotate(__c, 30) + __d,
                         __a + __rotate(__b ^ __k3, 20) - __c + __len);
  }



  static pair<_Size, _Size> __weak_hash_len_32_with_seeds(
      _Size __w, _Size __x, _Size __y, _Size __z, _Size __a, _Size __b) {
    __a += __w;
    __b = __rotate(__b + __a + __z, 21);
    const _Size __c = __a;
    __a += __x;
    __a += __y;
    __b += __rotate(__a, 44);
    return pair<_Size, _Size>(__a + __z, __b + __c);
  }


  static pair<_Size, _Size> __weak_hash_len_32_with_seeds(
      const char* __s, _Size __a, _Size __b) {
    return __weak_hash_len_32_with_seeds(__loadword<_Size>(__s),
                                         __loadword<_Size>(__s + 8),
                                         __loadword<_Size>(__s + 16),
                                         __loadword<_Size>(__s + 24),
                                         __a,
                                         __b);
  }


  static _Size __hash_len_33_to_64(const char *__s, size_t __len) {
    _Size __z = __loadword<_Size>(__s + 24);
    _Size __a = __loadword<_Size>(__s) +
                (__len + __loadword<_Size>(__s + __len - 16)) * __k0;
    _Size __b = __rotate(__a + __z, 52);
    _Size __c = __rotate(__a, 37);
    __a += __loadword<_Size>(__s + 8);
    __c += __rotate(__a, 7);
    __a += __loadword<_Size>(__s + 16);
    _Size __vf = __a + __z;
    _Size __vs = __b + __rotate(__a, 31) + __c;
    __a = __loadword<_Size>(__s + 16) + __loadword<_Size>(__s + __len - 32);
    __z += __loadword<_Size>(__s + __len - 8);
    __b = __rotate(__a + __z, 52);
    __c = __rotate(__a, 37);
    __a += __loadword<_Size>(__s + __len - 24);
    __c += __rotate(__a, 7);
    __a += __loadword<_Size>(__s + __len - 16);
    _Size __wf = __a + __z;
    _Size __ws = __b + __rotate(__a, 31) + __c;
    _Size __r = __shift_mix((__vf + __ws) * __k2 + (__wf + __vs) * __k0);
    return __shift_mix(__r * __k0 + __vs) * __k2;
  }
};


template <class _Size>
_Size
__murmur2_or_cityhash<_Size, 64>::operator()(const void* __key, _Size __len)
{
  const char* __s = static_cast<const char*>(__key);
  if (__len <= 32) {
    if (__len <= 16) {
      return __hash_len_0_to_16(__s, __len);
    } else {
      return __hash_len_17_to_32(__s, __len);
    }
  } else if (__len <= 64) {
    return __hash_len_33_to_64(__s, __len);
  }



  _Size __x = __loadword<_Size>(__s + __len - 40);
  _Size __y = __loadword<_Size>(__s + __len - 16) +
              __loadword<_Size>(__s + __len - 56);
  _Size __z = __hash_len_16(__loadword<_Size>(__s + __len - 48) + __len,
                          __loadword<_Size>(__s + __len - 24));
  pair<_Size, _Size> __v = __weak_hash_len_32_with_seeds(__s + __len - 64, __len, __z);
  pair<_Size, _Size> __w = __weak_hash_len_32_with_seeds(__s + __len - 32, __y + __k1, __x);
  __x = __x * __k1 + __loadword<_Size>(__s);


  __len = (__len - 1) & ~static_cast<_Size>(63);
  do {
    __x = __rotate(__x + __y + __v.first + __loadword<_Size>(__s + 8), 37) * __k1;
    __y = __rotate(__y + __v.second + __loadword<_Size>(__s + 48), 42) * __k1;
    __x ^= __w.second;
    __y += __v.first + __loadword<_Size>(__s + 40);
    __z = __rotate(__z + __w.first, 33) * __k1;
    __v = __weak_hash_len_32_with_seeds(__s, __v.second * __k1, __x + __w.first);
    __w = __weak_hash_len_32_with_seeds(__s + 32, __z + __w.second,
                                        __y + __loadword<_Size>(__s + 16));
    std::swap(__z, __x);
    __s += 64;
    __len -= 64;
  } while (__len != 0);
  return __hash_len_16(
      __hash_len_16(__v.first, __w.first) + __shift_mix(__y) * __k1 + __z,
      __hash_len_16(__v.second, __w.second) + __x);
}

template <class _Tp, size_t = sizeof(_Tp) / sizeof(size_t)>
struct __scalar_hash;

template <class _Tp>
struct __scalar_hash<_Tp, 0>
    : public unary_function<_Tp, size_t>
{
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_t operator()(_Tp __v) const noexcept
    {
        union
        {
            _Tp __t;
            size_t __a;
        } __u;
        __u.__a = 0;
        __u.__t = __v;
        return __u.__a;
    }
};

template <class _Tp>
struct __scalar_hash<_Tp, 1>
    : public unary_function<_Tp, size_t>
{
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_t operator()(_Tp __v) const noexcept
    {
        union
        {
            _Tp __t;
            size_t __a;
        } __u;
        __u.__t = __v;
        return __u.__a;
    }
};

template <class _Tp>
struct __scalar_hash<_Tp, 2>
    : public unary_function<_Tp, size_t>
{
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_t operator()(_Tp __v) const noexcept
    {
        union
        {
            _Tp __t;
            struct
            {
                size_t __a;
                size_t __b;
            } __s;
        } __u;
        __u.__t = __v;
        return __murmur2_or_cityhash<size_t>()(&__u, sizeof(__u));
    }
};

template <class _Tp>
struct __scalar_hash<_Tp, 3>
    : public unary_function<_Tp, size_t>
{
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_t operator()(_Tp __v) const noexcept
    {
        union
        {
            _Tp __t;
            struct
            {
                size_t __a;
                size_t __b;
                size_t __c;
            } __s;
        } __u;
        __u.__t = __v;
        return __murmur2_or_cityhash<size_t>()(&__u, sizeof(__u));
    }
};

template <class _Tp>
struct __scalar_hash<_Tp, 4>
    : public unary_function<_Tp, size_t>
{
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_t operator()(_Tp __v) const noexcept
    {
        union
        {
            _Tp __t;
            struct
            {
                size_t __a;
                size_t __b;
                size_t __c;
                size_t __d;
            } __s;
        } __u;
        __u.__t = __v;
        return __murmur2_or_cityhash<size_t>()(&__u, sizeof(__u));
    }
};

template<class _Tp>
struct __attribute__ ((__visibility__("default"))) hash<_Tp*>
    : public unary_function<_Tp*, size_t>
{
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_t operator()(_Tp* __v) const noexcept
    {
        union
        {
            _Tp* __t;
            size_t __a;
        } __u;
        __u.__t = __v;
        return __murmur2_or_cityhash<size_t>()(&__u, sizeof(__u));
    }
};

template <class _Tp, class _Dp>
struct __attribute__ ((__visibility__("default"))) hash<unique_ptr<_Tp, _Dp> >
{
    typedef unique_ptr<_Tp, _Dp> argument_type;
    typedef size_t result_type;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    result_type operator()(const argument_type& __ptr) const noexcept
    {
        typedef typename argument_type::pointer pointer;
        return hash<pointer>()(__ptr.get());
    }
};

struct __destruct_n
{
private:
    size_t size;

    template <class _Tp>
    __attribute__ ((__visibility__("hidden"), __always_inline__)) void __process(_Tp* __p, false_type) noexcept
        {for (size_t __i = 0; __i < size; ++__i, ++__p) __p->~_Tp();}

    template <class _Tp>
    __attribute__ ((__visibility__("hidden"), __always_inline__)) void __process(_Tp*, true_type) noexcept
        {}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) void __incr(false_type) noexcept
        {++size;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) void __incr(true_type) noexcept
        {}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) void __set(size_t __s, false_type) noexcept
        {size = __s;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) void __set(size_t, true_type) noexcept
        {}
public:
    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit __destruct_n(size_t __s) noexcept
        : size(__s) {}

    template <class _Tp>
    __attribute__ ((__visibility__("hidden"), __always_inline__)) void __incr(_Tp*) noexcept
        {__incr(integral_constant<bool, is_trivially_destructible<_Tp>::value>());}

    template <class _Tp>
    __attribute__ ((__visibility__("hidden"), __always_inline__)) void __set(size_t __s, _Tp*) noexcept
        {__set(__s, integral_constant<bool, is_trivially_destructible<_Tp>::value>());}

    template <class _Tp>
    __attribute__ ((__visibility__("hidden"), __always_inline__)) void operator()(_Tp* __p) noexcept
        {__process(__p, integral_constant<bool, is_trivially_destructible<_Tp>::value>());}
};

template <class _Alloc>
class __allocator_destructor
{
    typedef allocator_traits<_Alloc> __alloc_traits;
public:
    typedef typename __alloc_traits::pointer pointer;
    typedef typename __alloc_traits::size_type size_type;
private:
    _Alloc& __alloc_;
    size_type __s_;
public:
    __attribute__ ((__visibility__("hidden"), __always_inline__)) __allocator_destructor(_Alloc& __a, size_type __s)
             noexcept
        : __alloc_(__a), __s_(__s) {}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void operator()(pointer __p) noexcept
        {__alloc_traits::deallocate(__alloc_, __p, __s_);}
};

template <class _InputIterator, class _ForwardIterator>
_ForwardIterator
uninitialized_copy(_InputIterator __f, _InputIterator __l, _ForwardIterator __r)
{
    typedef typename iterator_traits<_ForwardIterator>::value_type value_type;

    _ForwardIterator __s = __r;
    try
    {

        for (; __f != __l; ++__f, (void) ++__r)
            ::new (static_cast<void*>(std::__1::addressof(*__r))) value_type(*__f);

    }
    catch (...)
    {
        for (; __s != __r; ++__s)
            __s->~value_type();
        throw;
    }

    return __r;
}

template <class _InputIterator, class _Size, class _ForwardIterator>
_ForwardIterator
uninitialized_copy_n(_InputIterator __f, _Size __n, _ForwardIterator __r)
{
    typedef typename iterator_traits<_ForwardIterator>::value_type value_type;

    _ForwardIterator __s = __r;
    try
    {

        for (; __n > 0; ++__f, (void) ++__r, (void) --__n)
            ::new (static_cast<void*>(std::__1::addressof(*__r))) value_type(*__f);

    }
    catch (...)
    {
        for (; __s != __r; ++__s)
            __s->~value_type();
        throw;
    }

    return __r;
}

template <class _ForwardIterator, class _Tp>
void
uninitialized_fill(_ForwardIterator __f, _ForwardIterator __l, const _Tp& __x)
{
    typedef typename iterator_traits<_ForwardIterator>::value_type value_type;

    _ForwardIterator __s = __f;
    try
    {

        for (; __f != __l; ++__f)
            ::new (static_cast<void*>(std::__1::addressof(*__f))) value_type(__x);

    }
    catch (...)
    {
        for (; __s != __f; ++__s)
            __s->~value_type();
        throw;
    }

}

template <class _ForwardIterator, class _Size, class _Tp>
_ForwardIterator
uninitialized_fill_n(_ForwardIterator __f, _Size __n, const _Tp& __x)
{
    typedef typename iterator_traits<_ForwardIterator>::value_type value_type;

    _ForwardIterator __s = __f;
    try
    {

        for (; __n > 0; ++__f, (void) --__n)
            ::new (static_cast<void*>(std::__1::addressof(*__f))) value_type(__x);

    }
    catch (...)
    {
        for (; __s != __f; ++__s)
            __s->~value_type();
        throw;
    }

    return __f;
}

class __attribute__ ((__visibility__("default"))) bad_weak_ptr
    : public std::exception
{
public:
    virtual ~bad_weak_ptr() noexcept;
    virtual const char* what() const noexcept;
};

template<class _Tp> class __attribute__ ((__visibility__("default"))) weak_ptr;

class __attribute__ ((__visibility__("default"))) __shared_count
{
    __shared_count(const __shared_count&);
    __shared_count& operator=(const __shared_count&);

protected:
    long __shared_owners_;
    virtual ~__shared_count();
private:
    virtual void __on_zero_shared() noexcept = 0;

public:
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    explicit __shared_count(long __refs = 0) noexcept
        : __shared_owners_(__refs) {}

    void __add_shared() noexcept;
    bool __release_shared() noexcept;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    long use_count() const noexcept {
        return __libcpp_relaxed_load(&__shared_owners_) + 1;
    }
};

class __attribute__ ((__visibility__("default"))) __shared_weak_count
    : private __shared_count
{
    long __shared_weak_owners_;

public:
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    explicit __shared_weak_count(long __refs = 0) noexcept
        : __shared_count(__refs),
          __shared_weak_owners_(__refs) {}
protected:
    virtual ~__shared_weak_count();

public:
    void __add_shared() noexcept;
    void __add_weak() noexcept;
    void __release_shared() noexcept;
    void __release_weak() noexcept;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    long use_count() const noexcept {return __shared_count::use_count();}
    __shared_weak_count* lock() noexcept;






    virtual const void* __get_deleter(const type_info&) const noexcept;

private:
    virtual void __on_zero_shared_weak() noexcept = 0;
};

template <class _Tp, class _Dp, class _Alloc>
class __shared_ptr_pointer
    : public __shared_weak_count
{
    __compressed_pair<__compressed_pair<_Tp, _Dp>, _Alloc> __data_;
public:
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    __shared_ptr_pointer(_Tp __p, _Dp __d, _Alloc __a)
        : __data_(__compressed_pair<_Tp, _Dp>(__p, std::__1::move(__d)), std::__1::move(__a)) {}


    virtual const void* __get_deleter(const type_info&) const noexcept;


private:
    virtual void __on_zero_shared() noexcept;
    virtual void __on_zero_shared_weak() noexcept;
};



template <class _Tp, class _Dp, class _Alloc>
const void*
__shared_ptr_pointer<_Tp, _Dp, _Alloc>::__get_deleter(const type_info& __t) const noexcept
{
    return __t == typeid(_Dp) ? std::__1::addressof(__data_.first().second()) : 0;
}



template <class _Tp, class _Dp, class _Alloc>
void
__shared_ptr_pointer<_Tp, _Dp, _Alloc>::__on_zero_shared() noexcept
{
    __data_.first().second()(__data_.first().first());
    __data_.first().second().~_Dp();
}

template <class _Tp, class _Dp, class _Alloc>
void
__shared_ptr_pointer<_Tp, _Dp, _Alloc>::__on_zero_shared_weak() noexcept
{
    typedef typename __allocator_traits_rebind<_Alloc, __shared_ptr_pointer>::type _Al;
    typedef allocator_traits<_Al> _ATraits;
    typedef pointer_traits<typename _ATraits::pointer> _PTraits;

    _Al __a(__data_.second());
    __data_.second().~_Alloc();
    __a.deallocate(_PTraits::pointer_to(*this), 1);
}

template <class _Tp, class _Alloc>
class __shared_ptr_emplace
    : public __shared_weak_count
{
    __compressed_pair<_Alloc, _Tp> __data_;
public:


    __attribute__ ((__visibility__("hidden"), __always_inline__))
    __shared_ptr_emplace(_Alloc __a)
        : __data_(std::__1::move(__a)) {}

    template <class ..._Args>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        __shared_ptr_emplace(_Alloc __a, _Args&& ...__args)
            : __data_(piecewise_construct, std::__1::forward_as_tuple(__a),
                   std::__1::forward_as_tuple(std::__1::forward<_Args>(__args)...)) {}
# 3857 "/opt/intel/sgxsdk/include/libcxx/memory" 3
private:
    virtual void __on_zero_shared() noexcept;
    virtual void __on_zero_shared_weak() noexcept;
public:
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    _Tp* get() noexcept {return &__data_.second();}
};

template <class _Tp, class _Alloc>
void
__shared_ptr_emplace<_Tp, _Alloc>::__on_zero_shared() noexcept
{
    __data_.second().~_Tp();
}

template <class _Tp, class _Alloc>
void
__shared_ptr_emplace<_Tp, _Alloc>::__on_zero_shared_weak() noexcept
{
    typedef typename __allocator_traits_rebind<_Alloc, __shared_ptr_emplace>::type _Al;
    typedef allocator_traits<_Al> _ATraits;
    typedef pointer_traits<typename _ATraits::pointer> _PTraits;
    _Al __a(__data_.first());
    __data_.first().~_Alloc();
    __a.deallocate(_PTraits::pointer_to(*this), 1);
}

template<class _Tp> class __attribute__ ((__visibility__("default"))) enable_shared_from_this;

template<class _Tp>
class __attribute__ ((__visibility__("default"))) shared_ptr
{
public:
    typedef _Tp element_type;



private:
    element_type* __ptr_;
    __shared_weak_count* __cntrl_;

    struct __nat {int __for_bool_;};
public:
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    constexpr shared_ptr() noexcept;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    constexpr shared_ptr(nullptr_t) noexcept;
    template<class _Yp>
        explicit shared_ptr(_Yp* __p,
                            typename enable_if<is_convertible<_Yp*, element_type*>::value, __nat>::type = __nat());
    template<class _Yp, class _Dp>
        shared_ptr(_Yp* __p, _Dp __d,
                   typename enable_if<is_convertible<_Yp*, element_type*>::value, __nat>::type = __nat());
    template<class _Yp, class _Dp, class _Alloc>
        shared_ptr(_Yp* __p, _Dp __d, _Alloc __a,
                   typename enable_if<is_convertible<_Yp*, element_type*>::value, __nat>::type = __nat());
    template <class _Dp> shared_ptr(nullptr_t __p, _Dp __d);
    template <class _Dp, class _Alloc> shared_ptr(nullptr_t __p, _Dp __d, _Alloc __a);
    template<class _Yp> __attribute__ ((__visibility__("hidden"), __always_inline__)) shared_ptr(const shared_ptr<_Yp>& __r, element_type* __p) noexcept;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    shared_ptr(const shared_ptr& __r) noexcept;
    template<class _Yp>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        shared_ptr(const shared_ptr<_Yp>& __r,
                   typename enable_if<is_convertible<_Yp*, _Tp*>::value, __nat>::type = __nat())
                       noexcept;

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    shared_ptr(shared_ptr&& __r) noexcept;
    template<class _Yp> __attribute__ ((__visibility__("hidden"), __always_inline__)) shared_ptr(shared_ptr<_Yp>&& __r,
                   typename enable_if<is_convertible<_Yp*, _Tp*>::value, __nat>::type = __nat())
                       noexcept;

    template<class _Yp> explicit shared_ptr(const weak_ptr<_Yp>& __r,
                   typename enable_if<is_convertible<_Yp*, _Tp*>::value, __nat>::type= __nat());

    template<class _Yp>
        shared_ptr(auto_ptr<_Yp>&& __r,
                   typename enable_if<is_convertible<_Yp*, element_type*>::value, __nat>::type = __nat());






    template <class _Yp, class _Dp>
        shared_ptr(unique_ptr<_Yp, _Dp>&&,
                   typename enable_if
                   <
                       !is_lvalue_reference<_Dp>::value &&
                       !is_array<_Yp>::value &&
                       is_convertible<typename unique_ptr<_Yp, _Dp>::pointer, element_type*>::value,
                       __nat
                   >::type = __nat());
    template <class _Yp, class _Dp>
        shared_ptr(unique_ptr<_Yp, _Dp>&&,
                   typename enable_if
                   <
                       is_lvalue_reference<_Dp>::value &&
                       !is_array<_Yp>::value &&
                       is_convertible<typename unique_ptr<_Yp, _Dp>::pointer, element_type*>::value,
                       __nat
                   >::type = __nat());
# 3981 "/opt/intel/sgxsdk/include/libcxx/memory" 3
    ~shared_ptr();

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    shared_ptr& operator=(const shared_ptr& __r) noexcept;
    template<class _Yp>
        typename enable_if
        <
            is_convertible<_Yp*, element_type*>::value,
            shared_ptr&
        >::type
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        operator=(const shared_ptr<_Yp>& __r) noexcept;

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    shared_ptr& operator=(shared_ptr&& __r) noexcept;
    template<class _Yp>
        typename enable_if
        <
            is_convertible<_Yp*, element_type*>::value,
            shared_ptr<_Tp>&
        >::type
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        operator=(shared_ptr<_Yp>&& __r);
    template<class _Yp>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        typename enable_if
        <
            !is_array<_Yp>::value &&
            is_convertible<_Yp*, element_type*>::value,
            shared_ptr
        >::type&
        operator=(auto_ptr<_Yp>&& __r);
# 4024 "/opt/intel/sgxsdk/include/libcxx/memory" 3
    template <class _Yp, class _Dp>
        typename enable_if
        <
            !is_array<_Yp>::value &&
            is_convertible<typename unique_ptr<_Yp, _Dp>::pointer, element_type*>::value,
            shared_ptr&
        >::type

        __attribute__ ((__visibility__("hidden"), __always_inline__))
        operator=(unique_ptr<_Yp, _Dp>&& __r);





    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void swap(shared_ptr& __r) noexcept;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void reset() noexcept;
    template<class _Yp>
        typename enable_if
        <
            is_convertible<_Yp*, element_type*>::value,
            void
        >::type
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        reset(_Yp* __p);
    template<class _Yp, class _Dp>
        typename enable_if
        <
            is_convertible<_Yp*, element_type*>::value,
            void
        >::type
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        reset(_Yp* __p, _Dp __d);
    template<class _Yp, class _Dp, class _Alloc>
        typename enable_if
        <
            is_convertible<_Yp*, element_type*>::value,
            void
        >::type
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        reset(_Yp* __p, _Dp __d, _Alloc __a);

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    element_type* get() const noexcept {return __ptr_;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    typename add_lvalue_reference<element_type>::type operator*() const noexcept
        {return *__ptr_;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    element_type* operator->() const noexcept {return __ptr_;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    long use_count() const noexcept {return __cntrl_ ? __cntrl_->use_count() : 0;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool unique() const noexcept {return use_count() == 1;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    operator bool() const noexcept {return get() != 0;}
    template <class _Up>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        bool owner_before(shared_ptr<_Up> const& __p) const
        {return __cntrl_ < __p.__cntrl_;}
    template <class _Up>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        bool owner_before(weak_ptr<_Up> const& __p) const
        {return __cntrl_ < __p.__cntrl_;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool
    __owner_equivalent(const shared_ptr& __p) const
        {return __cntrl_ == __p.__cntrl_;}


    template <class _Dp>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        _Dp* __get_deleter() const noexcept
            {return (_Dp*)(__cntrl_ ? __cntrl_->__get_deleter(typeid(_Dp)) : 0);}




    template<class ..._Args>
        static
        shared_ptr<_Tp>
        make_shared(_Args&& ...__args);

    template<class _Alloc, class ..._Args>
        static
        shared_ptr<_Tp>
        allocate_shared(const _Alloc& __a, _Args&& ...__args);
# 4144 "/opt/intel/sgxsdk/include/libcxx/memory" 3
private:

    template <class _Yp, class _OrigPtr>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        void
        __enable_weak_this(const enable_shared_from_this<_Yp>* __e,
                           _OrigPtr* __ptr) noexcept
        {
            typedef typename remove_cv<_Yp>::type _RawYp;
            if (__e && __e->__weak_this_.expired())
            {
                __e->__weak_this_ = shared_ptr<_RawYp>(*this,
                    const_cast<_RawYp*>(static_cast<const _Yp*>(__ptr)));
            }
        }

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void __enable_weak_this(const volatile void*, const volatile void*) noexcept {}

    template <class _Up> friend class __attribute__ ((__visibility__("default"))) shared_ptr;
    template <class _Up> friend class __attribute__ ((__visibility__("default"))) weak_ptr;
};

template<class _Tp>
inline
constexpr
shared_ptr<_Tp>::shared_ptr() noexcept
    : __ptr_(0),
      __cntrl_(0)
{
}

template<class _Tp>
inline
constexpr
shared_ptr<_Tp>::shared_ptr(nullptr_t) noexcept
    : __ptr_(0),
      __cntrl_(0)
{
}

template<class _Tp>
template<class _Yp>
shared_ptr<_Tp>::shared_ptr(_Yp* __p,
                            typename enable_if<is_convertible<_Yp*, element_type*>::value, __nat>::type)
    : __ptr_(__p)
{
    unique_ptr<_Yp> __hold(__p);
    typedef __shared_ptr_pointer<_Yp*, default_delete<_Yp>, allocator<_Yp> > _CntrlBlk;
    __cntrl_ = new _CntrlBlk(__p, default_delete<_Yp>(), allocator<_Yp>());
    __hold.release();
    __enable_weak_this(__p, __p);
}

template<class _Tp>
template<class _Yp, class _Dp>
shared_ptr<_Tp>::shared_ptr(_Yp* __p, _Dp __d,
                            typename enable_if<is_convertible<_Yp*, element_type*>::value, __nat>::type)
    : __ptr_(__p)
{

    try
    {

        typedef __shared_ptr_pointer<_Yp*, _Dp, allocator<_Yp> > _CntrlBlk;
        __cntrl_ = new _CntrlBlk(__p, __d, allocator<_Yp>());
        __enable_weak_this(__p, __p);

    }
    catch (...)
    {
        __d(__p);
        throw;
    }

}

template<class _Tp>
template<class _Dp>
shared_ptr<_Tp>::shared_ptr(nullptr_t __p, _Dp __d)
    : __ptr_(0)
{

    try
    {

        typedef __shared_ptr_pointer<nullptr_t, _Dp, allocator<_Tp> > _CntrlBlk;
        __cntrl_ = new _CntrlBlk(__p, __d, allocator<_Tp>());

    }
    catch (...)
    {
        __d(__p);
        throw;
    }

}

template<class _Tp>
template<class _Yp, class _Dp, class _Alloc>
shared_ptr<_Tp>::shared_ptr(_Yp* __p, _Dp __d, _Alloc __a,
                            typename enable_if<is_convertible<_Yp*, element_type*>::value, __nat>::type)
    : __ptr_(__p)
{

    try
    {

        typedef __shared_ptr_pointer<_Yp*, _Dp, _Alloc> _CntrlBlk;
        typedef typename __allocator_traits_rebind<_Alloc, _CntrlBlk>::type _A2;
        typedef __allocator_destructor<_A2> _D2;
        _A2 __a2(__a);
        unique_ptr<_CntrlBlk, _D2> __hold2(__a2.allocate(1), _D2(__a2, 1));
        ::new(static_cast<void*>(std::__1::addressof(*__hold2.get())))
            _CntrlBlk(__p, __d, __a);
        __cntrl_ = std::__1::addressof(*__hold2.release());
        __enable_weak_this(__p, __p);

    }
    catch (...)
    {
        __d(__p);
        throw;
    }

}

template<class _Tp>
template<class _Dp, class _Alloc>
shared_ptr<_Tp>::shared_ptr(nullptr_t __p, _Dp __d, _Alloc __a)
    : __ptr_(0)
{

    try
    {

        typedef __shared_ptr_pointer<nullptr_t, _Dp, _Alloc> _CntrlBlk;
        typedef typename __allocator_traits_rebind<_Alloc, _CntrlBlk>::type _A2;
        typedef __allocator_destructor<_A2> _D2;
        _A2 __a2(__a);
        unique_ptr<_CntrlBlk, _D2> __hold2(__a2.allocate(1), _D2(__a2, 1));
        ::new(static_cast<void*>(std::__1::addressof(*__hold2.get())))
            _CntrlBlk(__p, __d, __a);
        __cntrl_ = std::__1::addressof(*__hold2.release());

    }
    catch (...)
    {
        __d(__p);
        throw;
    }

}

template<class _Tp>
template<class _Yp>
inline
shared_ptr<_Tp>::shared_ptr(const shared_ptr<_Yp>& __r, element_type *__p) noexcept
    : __ptr_(__p),
      __cntrl_(__r.__cntrl_)
{
    if (__cntrl_)
        __cntrl_->__add_shared();
}

template<class _Tp>
inline
shared_ptr<_Tp>::shared_ptr(const shared_ptr& __r) noexcept
    : __ptr_(__r.__ptr_),
      __cntrl_(__r.__cntrl_)
{
    if (__cntrl_)
        __cntrl_->__add_shared();
}

template<class _Tp>
template<class _Yp>
inline
shared_ptr<_Tp>::shared_ptr(const shared_ptr<_Yp>& __r,
                            typename enable_if<is_convertible<_Yp*, _Tp*>::value, __nat>::type)
         noexcept
    : __ptr_(__r.__ptr_),
      __cntrl_(__r.__cntrl_)
{
    if (__cntrl_)
        __cntrl_->__add_shared();
}



template<class _Tp>
inline
shared_ptr<_Tp>::shared_ptr(shared_ptr&& __r) noexcept
    : __ptr_(__r.__ptr_),
      __cntrl_(__r.__cntrl_)
{
    __r.__ptr_ = 0;
    __r.__cntrl_ = 0;
}

template<class _Tp>
template<class _Yp>
inline
shared_ptr<_Tp>::shared_ptr(shared_ptr<_Yp>&& __r,
                            typename enable_if<is_convertible<_Yp*, _Tp*>::value, __nat>::type)
         noexcept
    : __ptr_(__r.__ptr_),
      __cntrl_(__r.__cntrl_)
{
    __r.__ptr_ = 0;
    __r.__cntrl_ = 0;
}



template<class _Tp>
template<class _Yp>

shared_ptr<_Tp>::shared_ptr(auto_ptr<_Yp>&& __r,



                            typename enable_if<is_convertible<_Yp*, element_type*>::value, __nat>::type)
    : __ptr_(__r.get())
{
    typedef __shared_ptr_pointer<_Yp*, default_delete<_Yp>, allocator<_Yp> > _CntrlBlk;
    __cntrl_ = new _CntrlBlk(__r.get(), default_delete<_Yp>(), allocator<_Yp>());
    __enable_weak_this(__r.get(), __r.get());
    __r.release();
}

template<class _Tp>
template <class _Yp, class _Dp>

shared_ptr<_Tp>::shared_ptr(unique_ptr<_Yp, _Dp>&& __r,



                            typename enable_if
                            <
                                !is_lvalue_reference<_Dp>::value &&
                                !is_array<_Yp>::value &&
                                is_convertible<typename unique_ptr<_Yp, _Dp>::pointer, element_type*>::value,
                                __nat
                            >::type)
    : __ptr_(__r.get())
{





    {
        typedef __shared_ptr_pointer<_Yp*, _Dp, allocator<_Yp> > _CntrlBlk;
        __cntrl_ = new _CntrlBlk(__r.get(), __r.get_deleter(), allocator<_Yp>());
        __enable_weak_this(__r.get(), __r.get());
    }
    __r.release();
}

template<class _Tp>
template <class _Yp, class _Dp>

shared_ptr<_Tp>::shared_ptr(unique_ptr<_Yp, _Dp>&& __r,



                            typename enable_if
                            <
                                is_lvalue_reference<_Dp>::value &&
                                !is_array<_Yp>::value &&
                                is_convertible<typename unique_ptr<_Yp, _Dp>::pointer, element_type*>::value,
                                __nat
                            >::type)
    : __ptr_(__r.get())
{





    {
        typedef __shared_ptr_pointer<_Yp*,
                                     reference_wrapper<typename remove_reference<_Dp>::type>,
                                     allocator<_Yp> > _CntrlBlk;
        __cntrl_ = new _CntrlBlk(__r.get(), ref(__r.get_deleter()), allocator<_Yp>());
        __enable_weak_this(__r.get(), __r.get());
    }
    __r.release();
}



template<class _Tp>
template<class ..._Args>
shared_ptr<_Tp>
shared_ptr<_Tp>::make_shared(_Args&& ...__args)
{
    typedef __shared_ptr_emplace<_Tp, allocator<_Tp> > _CntrlBlk;
    typedef allocator<_CntrlBlk> _A2;
    typedef __allocator_destructor<_A2> _D2;
    _A2 __a2;
    unique_ptr<_CntrlBlk, _D2> __hold2(__a2.allocate(1), _D2(__a2, 1));
    ::new(__hold2.get()) _CntrlBlk(__a2, std::__1::forward<_Args>(__args)...);
    shared_ptr<_Tp> __r;
    __r.__ptr_ = __hold2.get()->get();
    __r.__cntrl_ = __hold2.release();
    __r.__enable_weak_this(__r.__ptr_, __r.__ptr_);
    return __r;
}

template<class _Tp>
template<class _Alloc, class ..._Args>
shared_ptr<_Tp>
shared_ptr<_Tp>::allocate_shared(const _Alloc& __a, _Args&& ...__args)
{
    typedef __shared_ptr_emplace<_Tp, _Alloc> _CntrlBlk;
    typedef typename __allocator_traits_rebind<_Alloc, _CntrlBlk>::type _A2;
    typedef __allocator_destructor<_A2> _D2;
    _A2 __a2(__a);
    unique_ptr<_CntrlBlk, _D2> __hold2(__a2.allocate(1), _D2(__a2, 1));
    ::new(static_cast<void*>(std::__1::addressof(*__hold2.get())))
        _CntrlBlk(__a, std::__1::forward<_Args>(__args)...);
    shared_ptr<_Tp> __r;
    __r.__ptr_ = __hold2.get()->get();
    __r.__cntrl_ = std::__1::addressof(*__hold2.release());
    __r.__enable_weak_this(__r.__ptr_, __r.__ptr_);
    return __r;
}
# 4625 "/opt/intel/sgxsdk/include/libcxx/memory" 3
template<class _Tp>
shared_ptr<_Tp>::~shared_ptr()
{
    if (__cntrl_)
        __cntrl_->__release_shared();
}

template<class _Tp>
inline
shared_ptr<_Tp>&
shared_ptr<_Tp>::operator=(const shared_ptr& __r) noexcept
{
    shared_ptr(__r).swap(*this);
    return *this;
}

template<class _Tp>
template<class _Yp>
inline
typename enable_if
<
    is_convertible<_Yp*, _Tp*>::value,
    shared_ptr<_Tp>&
>::type
shared_ptr<_Tp>::operator=(const shared_ptr<_Yp>& __r) noexcept
{
    shared_ptr(__r).swap(*this);
    return *this;
}



template<class _Tp>
inline
shared_ptr<_Tp>&
shared_ptr<_Tp>::operator=(shared_ptr&& __r) noexcept
{
    shared_ptr(std::__1::move(__r)).swap(*this);
    return *this;
}

template<class _Tp>
template<class _Yp>
inline
typename enable_if
<
    is_convertible<_Yp*, _Tp*>::value,
    shared_ptr<_Tp>&
>::type
shared_ptr<_Tp>::operator=(shared_ptr<_Yp>&& __r)
{
    shared_ptr(std::__1::move(__r)).swap(*this);
    return *this;
}

template<class _Tp>
template<class _Yp>
inline
typename enable_if
<
    !is_array<_Yp>::value &&
    is_convertible<_Yp*, _Tp*>::value,
    shared_ptr<_Tp>
>::type&
shared_ptr<_Tp>::operator=(auto_ptr<_Yp>&& __r)
{
    shared_ptr(std::__1::move(__r)).swap(*this);
    return *this;
}

template<class _Tp>
template <class _Yp, class _Dp>
inline
typename enable_if
<
    !is_array<_Yp>::value &&
    is_convertible<typename unique_ptr<_Yp, _Dp>::pointer, _Tp*>::value,
    shared_ptr<_Tp>&
>::type
shared_ptr<_Tp>::operator=(unique_ptr<_Yp, _Dp>&& __r)
{
    shared_ptr(std::__1::move(__r)).swap(*this);
    return *this;
}
# 4744 "/opt/intel/sgxsdk/include/libcxx/memory" 3
template<class _Tp>
inline
void
shared_ptr<_Tp>::swap(shared_ptr& __r) noexcept
{
    std::__1::swap(__ptr_, __r.__ptr_);
    std::__1::swap(__cntrl_, __r.__cntrl_);
}

template<class _Tp>
inline
void
shared_ptr<_Tp>::reset() noexcept
{
    shared_ptr().swap(*this);
}

template<class _Tp>
template<class _Yp>
inline
typename enable_if
<
    is_convertible<_Yp*, _Tp*>::value,
    void
>::type
shared_ptr<_Tp>::reset(_Yp* __p)
{
    shared_ptr(__p).swap(*this);
}

template<class _Tp>
template<class _Yp, class _Dp>
inline
typename enable_if
<
    is_convertible<_Yp*, _Tp*>::value,
    void
>::type
shared_ptr<_Tp>::reset(_Yp* __p, _Dp __d)
{
    shared_ptr(__p, __d).swap(*this);
}

template<class _Tp>
template<class _Yp, class _Dp, class _Alloc>
inline
typename enable_if
<
    is_convertible<_Yp*, _Tp*>::value,
    void
>::type
shared_ptr<_Tp>::reset(_Yp* __p, _Dp __d, _Alloc __a)
{
    shared_ptr(__p, __d, __a).swap(*this);
}



template<class _Tp, class ..._Args>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    !is_array<_Tp>::value,
    shared_ptr<_Tp>
>::type
make_shared(_Args&& ...__args)
{
    return shared_ptr<_Tp>::make_shared(std::__1::forward<_Args>(__args)...);
}

template<class _Tp, class _Alloc, class ..._Args>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    !is_array<_Tp>::value,
    shared_ptr<_Tp>
>::type
allocate_shared(const _Alloc& __a, _Args&& ...__args)
{
    return shared_ptr<_Tp>::allocate_shared(__a, std::__1::forward<_Args>(__args)...);
}
# 4894 "/opt/intel/sgxsdk/include/libcxx/memory" 3
template<class _Tp, class _Up>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator==(const shared_ptr<_Tp>& __x, const shared_ptr<_Up>& __y) noexcept
{
    return __x.get() == __y.get();
}

template<class _Tp, class _Up>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator!=(const shared_ptr<_Tp>& __x, const shared_ptr<_Up>& __y) noexcept
{
    return !(__x == __y);
}

template<class _Tp, class _Up>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<(const shared_ptr<_Tp>& __x, const shared_ptr<_Up>& __y) noexcept
{
    typedef typename common_type<_Tp*, _Up*>::type _Vp;
    return less<_Vp>()(__x.get(), __y.get());
}

template<class _Tp, class _Up>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>(const shared_ptr<_Tp>& __x, const shared_ptr<_Up>& __y) noexcept
{
    return __y < __x;
}

template<class _Tp, class _Up>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<=(const shared_ptr<_Tp>& __x, const shared_ptr<_Up>& __y) noexcept
{
    return !(__y < __x);
}

template<class _Tp, class _Up>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>=(const shared_ptr<_Tp>& __x, const shared_ptr<_Up>& __y) noexcept
{
    return !(__x < __y);
}

template<class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator==(const shared_ptr<_Tp>& __x, nullptr_t) noexcept
{
    return !__x;
}

template<class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator==(nullptr_t, const shared_ptr<_Tp>& __x) noexcept
{
    return !__x;
}

template<class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator!=(const shared_ptr<_Tp>& __x, nullptr_t) noexcept
{
    return static_cast<bool>(__x);
}

template<class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator!=(nullptr_t, const shared_ptr<_Tp>& __x) noexcept
{
    return static_cast<bool>(__x);
}

template<class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<(const shared_ptr<_Tp>& __x, nullptr_t) noexcept
{
    return less<_Tp*>()(__x.get(), nullptr);
}

template<class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<(nullptr_t, const shared_ptr<_Tp>& __x) noexcept
{
    return less<_Tp*>()(nullptr, __x.get());
}

template<class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>(const shared_ptr<_Tp>& __x, nullptr_t) noexcept
{
    return nullptr < __x;
}

template<class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>(nullptr_t, const shared_ptr<_Tp>& __x) noexcept
{
    return __x < nullptr;
}

template<class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<=(const shared_ptr<_Tp>& __x, nullptr_t) noexcept
{
    return !(nullptr < __x);
}

template<class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<=(nullptr_t, const shared_ptr<_Tp>& __x) noexcept
{
    return !(__x < nullptr);
}

template<class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>=(const shared_ptr<_Tp>& __x, nullptr_t) noexcept
{
    return !(__x < nullptr);
}

template<class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>=(nullptr_t, const shared_ptr<_Tp>& __x) noexcept
{
    return !(nullptr < __x);
}

template<class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
swap(shared_ptr<_Tp>& __x, shared_ptr<_Tp>& __y) noexcept
{
    __x.swap(__y);
}

template<class _Tp, class _Up>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    !is_array<_Tp>::value && !is_array<_Up>::value,
    shared_ptr<_Tp>
>::type
static_pointer_cast(const shared_ptr<_Up>& __r) noexcept
{
    return shared_ptr<_Tp>(__r, static_cast<_Tp*>(__r.get()));
}

template<class _Tp, class _Up>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    !is_array<_Tp>::value && !is_array<_Up>::value,
    shared_ptr<_Tp>
>::type
dynamic_pointer_cast(const shared_ptr<_Up>& __r) noexcept
{
    _Tp* __p = dynamic_cast<_Tp*>(__r.get());
    return __p ? shared_ptr<_Tp>(__r, __p) : shared_ptr<_Tp>();
}

template<class _Tp, class _Up>
typename enable_if
<
    is_array<_Tp>::value == is_array<_Up>::value,
    shared_ptr<_Tp>
>::type
const_pointer_cast(const shared_ptr<_Up>& __r) noexcept
{
    typedef typename remove_extent<_Tp>::type _RTp;
    return shared_ptr<_Tp>(__r, const_cast<_RTp*>(__r.get()));
}



template<class _Dp, class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Dp*
get_deleter(const shared_ptr<_Tp>& __p) noexcept
{
    return __p.template __get_deleter<_Dp>();
}



template<class _Tp>
class __attribute__ ((__visibility__("default"))) weak_ptr
{
public:
    typedef _Tp element_type;
private:
    element_type* __ptr_;
    __shared_weak_count* __cntrl_;

public:
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    constexpr weak_ptr() noexcept;
    template<class _Yp> __attribute__ ((__visibility__("hidden"), __always_inline__)) weak_ptr(shared_ptr<_Yp> const& __r,
                   typename enable_if<is_convertible<_Yp*, _Tp*>::value, __nat*>::type = 0)
                        noexcept;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    weak_ptr(weak_ptr const& __r) noexcept;
    template<class _Yp> __attribute__ ((__visibility__("hidden"), __always_inline__)) weak_ptr(weak_ptr<_Yp> const& __r,
                   typename enable_if<is_convertible<_Yp*, _Tp*>::value, __nat*>::type = 0)
                         noexcept;


    __attribute__ ((__visibility__("hidden"), __always_inline__))
    weak_ptr(weak_ptr&& __r) noexcept;
    template<class _Yp> __attribute__ ((__visibility__("hidden"), __always_inline__)) weak_ptr(weak_ptr<_Yp>&& __r,
                   typename enable_if<is_convertible<_Yp*, _Tp*>::value, __nat*>::type = 0)
                         noexcept;

    ~weak_ptr();

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    weak_ptr& operator=(weak_ptr const& __r) noexcept;
    template<class _Yp>
        typename enable_if
        <
            is_convertible<_Yp*, element_type*>::value,
            weak_ptr&
        >::type
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        operator=(weak_ptr<_Yp> const& __r) noexcept;



    __attribute__ ((__visibility__("hidden"), __always_inline__))
    weak_ptr& operator=(weak_ptr&& __r) noexcept;
    template<class _Yp>
        typename enable_if
        <
            is_convertible<_Yp*, element_type*>::value,
            weak_ptr&
        >::type
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        operator=(weak_ptr<_Yp>&& __r) noexcept;



    template<class _Yp>
        typename enable_if
        <
            is_convertible<_Yp*, element_type*>::value,
            weak_ptr&
        >::type
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        operator=(shared_ptr<_Yp> const& __r) noexcept;

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void swap(weak_ptr& __r) noexcept;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void reset() noexcept;

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    long use_count() const noexcept
        {return __cntrl_ ? __cntrl_->use_count() : 0;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool expired() const noexcept
        {return __cntrl_ == 0 || __cntrl_->use_count() == 0;}
    shared_ptr<_Tp> lock() const noexcept;
    template<class _Up>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        bool owner_before(const shared_ptr<_Up>& __r) const
        {return __cntrl_ < __r.__cntrl_;}
    template<class _Up>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        bool owner_before(const weak_ptr<_Up>& __r) const
        {return __cntrl_ < __r.__cntrl_;}

    template <class _Up> friend class __attribute__ ((__visibility__("default"))) weak_ptr;
    template <class _Up> friend class __attribute__ ((__visibility__("default"))) shared_ptr;
};

template<class _Tp>
inline
constexpr
weak_ptr<_Tp>::weak_ptr() noexcept
    : __ptr_(0),
      __cntrl_(0)
{
}

template<class _Tp>
inline
weak_ptr<_Tp>::weak_ptr(weak_ptr const& __r) noexcept
    : __ptr_(__r.__ptr_),
      __cntrl_(__r.__cntrl_)
{
    if (__cntrl_)
        __cntrl_->__add_weak();
}

template<class _Tp>
template<class _Yp>
inline
weak_ptr<_Tp>::weak_ptr(shared_ptr<_Yp> const& __r,
                        typename enable_if<is_convertible<_Yp*, _Tp*>::value, __nat*>::type)
                         noexcept
    : __ptr_(__r.__ptr_),
      __cntrl_(__r.__cntrl_)
{
    if (__cntrl_)
        __cntrl_->__add_weak();
}

template<class _Tp>
template<class _Yp>
inline
weak_ptr<_Tp>::weak_ptr(weak_ptr<_Yp> const& __r,
                        typename enable_if<is_convertible<_Yp*, _Tp*>::value, __nat*>::type)
         noexcept
    : __ptr_(__r.__ptr_),
      __cntrl_(__r.__cntrl_)
{
    if (__cntrl_)
        __cntrl_->__add_weak();
}



template<class _Tp>
inline
weak_ptr<_Tp>::weak_ptr(weak_ptr&& __r) noexcept
    : __ptr_(__r.__ptr_),
      __cntrl_(__r.__cntrl_)
{
    __r.__ptr_ = 0;
    __r.__cntrl_ = 0;
}

template<class _Tp>
template<class _Yp>
inline
weak_ptr<_Tp>::weak_ptr(weak_ptr<_Yp>&& __r,
                        typename enable_if<is_convertible<_Yp*, _Tp*>::value, __nat*>::type)
         noexcept
    : __ptr_(__r.__ptr_),
      __cntrl_(__r.__cntrl_)
{
    __r.__ptr_ = 0;
    __r.__cntrl_ = 0;
}



template<class _Tp>
weak_ptr<_Tp>::~weak_ptr()
{
    if (__cntrl_)
        __cntrl_->__release_weak();
}

template<class _Tp>
inline
weak_ptr<_Tp>&
weak_ptr<_Tp>::operator=(weak_ptr const& __r) noexcept
{
    weak_ptr(__r).swap(*this);
    return *this;
}

template<class _Tp>
template<class _Yp>
inline
typename enable_if
<
    is_convertible<_Yp*, _Tp*>::value,
    weak_ptr<_Tp>&
>::type
weak_ptr<_Tp>::operator=(weak_ptr<_Yp> const& __r) noexcept
{
    weak_ptr(__r).swap(*this);
    return *this;
}



template<class _Tp>
inline
weak_ptr<_Tp>&
weak_ptr<_Tp>::operator=(weak_ptr&& __r) noexcept
{
    weak_ptr(std::__1::move(__r)).swap(*this);
    return *this;
}

template<class _Tp>
template<class _Yp>
inline
typename enable_if
<
    is_convertible<_Yp*, _Tp*>::value,
    weak_ptr<_Tp>&
>::type
weak_ptr<_Tp>::operator=(weak_ptr<_Yp>&& __r) noexcept
{
    weak_ptr(std::__1::move(__r)).swap(*this);
    return *this;
}



template<class _Tp>
template<class _Yp>
inline
typename enable_if
<
    is_convertible<_Yp*, _Tp*>::value,
    weak_ptr<_Tp>&
>::type
weak_ptr<_Tp>::operator=(shared_ptr<_Yp> const& __r) noexcept
{
    weak_ptr(__r).swap(*this);
    return *this;
}

template<class _Tp>
inline
void
weak_ptr<_Tp>::swap(weak_ptr& __r) noexcept
{
    std::__1::swap(__ptr_, __r.__ptr_);
    std::__1::swap(__cntrl_, __r.__cntrl_);
}

template<class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
swap(weak_ptr<_Tp>& __x, weak_ptr<_Tp>& __y) noexcept
{
    __x.swap(__y);
}

template<class _Tp>
inline
void
weak_ptr<_Tp>::reset() noexcept
{
    weak_ptr().swap(*this);
}

template<class _Tp>
template<class _Yp>
shared_ptr<_Tp>::shared_ptr(const weak_ptr<_Yp>& __r,
                            typename enable_if<is_convertible<_Yp*, _Tp*>::value, __nat>::type)
    : __ptr_(__r.__ptr_),
      __cntrl_(__r.__cntrl_ ? __r.__cntrl_->lock() : __r.__cntrl_)
{
    if (__cntrl_ == 0)

        throw bad_weak_ptr();



}

template<class _Tp>
shared_ptr<_Tp>
weak_ptr<_Tp>::lock() const noexcept
{
    shared_ptr<_Tp> __r;
    __r.__cntrl_ = __cntrl_ ? __cntrl_->lock() : __cntrl_;
    if (__r.__cntrl_)
        __r.__ptr_ = __ptr_;
    return __r;
}




template <class _Tp> struct owner_less;


template <class _Tp>
struct __attribute__ ((__visibility__("default"))) owner_less<shared_ptr<_Tp> >
    : binary_function<shared_ptr<_Tp>, shared_ptr<_Tp>, bool>
{
    typedef bool result_type;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator()(shared_ptr<_Tp> const& __x, shared_ptr<_Tp> const& __y) const
        {return __x.owner_before(__y);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator()(shared_ptr<_Tp> const& __x, weak_ptr<_Tp> const& __y) const
        {return __x.owner_before(__y);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator()( weak_ptr<_Tp> const& __x, shared_ptr<_Tp> const& __y) const
        {return __x.owner_before(__y);}
};

template <class _Tp>
struct __attribute__ ((__visibility__("default"))) owner_less<weak_ptr<_Tp> >
    : binary_function<weak_ptr<_Tp>, weak_ptr<_Tp>, bool>
{
    typedef bool result_type;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator()( weak_ptr<_Tp> const& __x, weak_ptr<_Tp> const& __y) const
        {return __x.owner_before(__y);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator()(shared_ptr<_Tp> const& __x, weak_ptr<_Tp> const& __y) const
        {return __x.owner_before(__y);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator()( weak_ptr<_Tp> const& __x, shared_ptr<_Tp> const& __y) const
        {return __x.owner_before(__y);}
};
# 5442 "/opt/intel/sgxsdk/include/libcxx/memory" 3
template<class _Tp>
class __attribute__ ((__visibility__("default"))) enable_shared_from_this
{
    mutable weak_ptr<_Tp> __weak_this_;
protected:
    __attribute__ ((__visibility__("hidden"), __always_inline__)) constexpr
    enable_shared_from_this() noexcept {}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    enable_shared_from_this(enable_shared_from_this const&) noexcept {}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    enable_shared_from_this& operator=(enable_shared_from_this const&) noexcept
        {return *this;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    ~enable_shared_from_this() {}
public:
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    shared_ptr<_Tp> shared_from_this()
        {return shared_ptr<_Tp>(__weak_this_);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    shared_ptr<_Tp const> shared_from_this() const
        {return shared_ptr<const _Tp>(__weak_this_);}
# 5474 "/opt/intel/sgxsdk/include/libcxx/memory" 3
    template <class _Up> friend class shared_ptr;
};

template <class _Tp>
struct __attribute__ ((__visibility__("default"))) hash<shared_ptr<_Tp> >
{
    typedef shared_ptr<_Tp> argument_type;
    typedef size_t result_type;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    result_type operator()(const argument_type& __ptr) const noexcept
    {
        return hash<_Tp*>()(__ptr.get());
    }
};
# 5498 "/opt/intel/sgxsdk/include/libcxx/memory" 3
class __attribute__ ((__visibility__("default"))) __sp_mut
{
    void* __lx;
public:
    void lock() noexcept;
    void unlock() noexcept;

private:
    constexpr __sp_mut(void*) noexcept;
    __sp_mut(const __sp_mut&);
    __sp_mut& operator=(const __sp_mut&);

    friend __attribute__ ((__visibility__("default"))) __sp_mut& __get_sp_mut(const void*);
};

__attribute__ ((__visibility__("default"))) __sp_mut& __get_sp_mut(const void*);

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
atomic_is_lock_free(const shared_ptr<_Tp>*)
{
    return false;
}

template <class _Tp>
shared_ptr<_Tp>
atomic_load(const shared_ptr<_Tp>* __p)
{
    __sp_mut& __m = __get_sp_mut(__p);
    __m.lock();
    shared_ptr<_Tp> __q = *__p;
    __m.unlock();
    return __q;
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
shared_ptr<_Tp>
atomic_load_explicit(const shared_ptr<_Tp>* __p, memory_order)
{
    return atomic_load(__p);
}

template <class _Tp>
void
atomic_store(shared_ptr<_Tp>* __p, shared_ptr<_Tp> __r)
{
    __sp_mut& __m = __get_sp_mut(__p);
    __m.lock();
    __p->swap(__r);
    __m.unlock();
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
atomic_store_explicit(shared_ptr<_Tp>* __p, shared_ptr<_Tp> __r, memory_order)
{
    atomic_store(__p, __r);
}

template <class _Tp>
shared_ptr<_Tp>
atomic_exchange(shared_ptr<_Tp>* __p, shared_ptr<_Tp> __r)
{
    __sp_mut& __m = __get_sp_mut(__p);
    __m.lock();
    __p->swap(__r);
    __m.unlock();
    return __r;
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
shared_ptr<_Tp>
atomic_exchange_explicit(shared_ptr<_Tp>* __p, shared_ptr<_Tp> __r, memory_order)
{
    return atomic_exchange(__p, __r);
}

template <class _Tp>
bool
atomic_compare_exchange_strong(shared_ptr<_Tp>* __p, shared_ptr<_Tp>* __v, shared_ptr<_Tp> __w)
{
    shared_ptr<_Tp> __temp;
    __sp_mut& __m = __get_sp_mut(__p);
    __m.lock();
    if (__p->__owner_equivalent(*__v))
    {
        std::__1::swap(__temp, *__p);
        *__p = __w;
        __m.unlock();
        return true;
    }
    std::__1::swap(__temp, *__v);
    *__v = *__p;
    __m.unlock();
    return false;
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
atomic_compare_exchange_weak(shared_ptr<_Tp>* __p, shared_ptr<_Tp>* __v, shared_ptr<_Tp> __w)
{
    return atomic_compare_exchange_strong(__p, __v, __w);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
atomic_compare_exchange_strong_explicit(shared_ptr<_Tp>* __p, shared_ptr<_Tp>* __v,
                                        shared_ptr<_Tp> __w, memory_order, memory_order)
{
    return atomic_compare_exchange_strong(__p, __v, __w);
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
atomic_compare_exchange_weak_explicit(shared_ptr<_Tp>* __p, shared_ptr<_Tp>* __v,
                                      shared_ptr<_Tp> __w, memory_order, memory_order)
{
    return atomic_compare_exchange_weak(__p, __v, __w);
}
# 5647 "/opt/intel/sgxsdk/include/libcxx/memory" 3
enum class pointer_safety { relaxed, preferred, strict };


__attribute__ ((__visibility__("default"))) void declare_reachable(void* __p);
__attribute__ ((__visibility__("default"))) void declare_no_pointers(char* __p, size_t __n);
__attribute__ ((__visibility__("default"))) void undeclare_no_pointers(char* __p, size_t __n);
__attribute__ ((__visibility__("default"))) pointer_safety get_pointer_safety() noexcept;
__attribute__ ((__visibility__("default"))) void* __undeclare_reachable(void* __p);

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp*
undeclare_reachable(_Tp* __p)
{
    return static_cast<_Tp*>(__undeclare_reachable(__p));
}

__attribute__ ((__visibility__("default"))) void* align(size_t __align, size_t __sz, void*& __ptr, size_t& __space);


template <typename _Alloc>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void __swap_allocator(_Alloc & __a1, _Alloc & __a2)



    noexcept(__is_nothrow_swappable<_Alloc>::value)

{
    __swap_allocator(__a1, __a2,
      integral_constant<bool, std::__1::allocator_traits<_Alloc>::propagate_on_container_swap::value>());
}

template <typename _Alloc>
__attribute__ ((__visibility__("hidden"), __always_inline__))
void __swap_allocator(_Alloc & __a1, _Alloc & __a2, true_type)



    noexcept(__is_nothrow_swappable<_Alloc>::value)

{
    using std::__1::swap;
    swap(__a1, __a2);
}

template <typename _Alloc>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void __swap_allocator(_Alloc &, _Alloc &, false_type) noexcept {}

template <typename _Alloc, typename _Traits=allocator_traits<_Alloc> >
struct __noexcept_move_assign_container : public integral_constant<bool,
    _Traits::propagate_on_container_move_assignment::value



        && is_nothrow_move_assignable<_Alloc>::value

    > {};



template <class _Tp, class _Alloc>
struct __temp_value {
    typedef allocator_traits<_Alloc> _Traits;

    typename aligned_storage<sizeof(_Tp), alignof(_Tp)>::type __v;
    _Alloc &__a;

    _Tp *__addr() { return reinterpret_cast<_Tp *>(addressof(__v)); }
    _Tp & get() { return *__addr(); }

    template<class... _Args>
    __temp_value(_Alloc &__alloc, _Args&& ... __args) : __a(__alloc)
    { _Traits::construct(__a, __addr(), std::__1::forward<_Args>(__args)...); }

    ~__temp_value() { _Traits::destroy(__a, __addr()); }
    };


} }
# 635 "/opt/intel/sgxsdk/include/libcxx/algorithm" 2
# 645 "/opt/intel/sgxsdk/include/libcxx/algorithm"
# 1 "/opt/intel/sgxsdk/include/libcxx/__undef_min_max" 1
# 646 "/opt/intel/sgxsdk/include/libcxx/algorithm" 2




       
# 651 "/opt/intel/sgxsdk/include/libcxx/algorithm" 3


namespace std { inline namespace __1 {




template <class _T1, class _T2 = _T1>
struct __equal_to
{
    __attribute__ ((__visibility__("hidden"), __always_inline__)) bool operator()(const _T1& __x, const _T1& __y) const {return __x == __y;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) bool operator()(const _T1& __x, const _T2& __y) const {return __x == __y;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) bool operator()(const _T2& __x, const _T1& __y) const {return __x == __y;}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) bool operator()(const _T2& __x, const _T2& __y) const {return __x == __y;}
};

template <class _T1>
struct __equal_to<_T1, _T1>
{
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator()(const _T1& __x, const _T1& __y) const {return __x == __y;}
};

template <class _T1>
struct __equal_to<const _T1, _T1>
{
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator()(const _T1& __x, const _T1& __y) const {return __x == __y;}
};

template <class _T1>
struct __equal_to<_T1, const _T1>
{
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator()(const _T1& __x, const _T1& __y) const {return __x == __y;}
};

template <class _T1, class _T2 = _T1>
struct __less
{
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator()(const _T1& __x, const _T1& __y) const {return __x < __y;}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator()(const _T1& __x, const _T2& __y) const {return __x < __y;}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator()(const _T2& __x, const _T1& __y) const {return __x < __y;}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator()(const _T2& __x, const _T2& __y) const {return __x < __y;}
};

template <class _T1>
struct __less<_T1, _T1>
{
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator()(const _T1& __x, const _T1& __y) const {return __x < __y;}
};

template <class _T1>
struct __less<const _T1, _T1>
{
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator()(const _T1& __x, const _T1& __y) const {return __x < __y;}
};

template <class _T1>
struct __less<_T1, const _T1>
{
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator()(const _T1& __x, const _T1& __y) const {return __x < __y;}
};

template <class _Predicate>
class __negate
{
private:
    _Predicate __p_;
public:
    __attribute__ ((__visibility__("hidden"), __always_inline__)) __negate() {}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    explicit __negate(_Predicate __p) : __p_(__p) {}

    template <class _T1>
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator()(const _T1& __x) {return !__p_(__x);}

    template <class _T1, class _T2>
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator()(const _T1& __x, const _T2& __y) {return !__p_(__x, __y);}
};
# 765 "/opt/intel/sgxsdk/include/libcxx/algorithm" 3
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
unsigned
__ctz(unsigned __x)
{
    return static_cast<unsigned>(__builtin_ctz(__x));
}

inline __attribute__ ((__visibility__("hidden"), __always_inline__))
unsigned long
__ctz(unsigned long __x)
{
    return static_cast<unsigned long>(__builtin_ctzl(__x));
}

inline __attribute__ ((__visibility__("hidden"), __always_inline__))
unsigned long long
__ctz(unsigned long long __x)
{
    return static_cast<unsigned long long>(__builtin_ctzll(__x));
}


inline __attribute__ ((__visibility__("hidden"), __always_inline__))
unsigned
__clz(unsigned __x)
{
    return static_cast<unsigned>(__builtin_clz(__x));
}

inline __attribute__ ((__visibility__("hidden"), __always_inline__))
unsigned long
__clz(unsigned long __x)
{
    return static_cast<unsigned long>(__builtin_clzl (__x));
}

inline __attribute__ ((__visibility__("hidden"), __always_inline__))
unsigned long long
__clz(unsigned long long __x)
{
    return static_cast<unsigned long long>(__builtin_clzll(__x));
}

inline __attribute__ ((__visibility__("hidden"), __always_inline__)) int __pop_count(unsigned __x) {return __builtin_popcount (__x);}
inline __attribute__ ((__visibility__("hidden"), __always_inline__)) int __pop_count(unsigned long __x) {return __builtin_popcountl (__x);}
inline __attribute__ ((__visibility__("hidden"), __always_inline__)) int __pop_count(unsigned long long __x) {return __builtin_popcountll(__x);}



template <class _InputIterator, class _Predicate>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
all_of(_InputIterator __first, _InputIterator __last, _Predicate __pred)
{
    for (; __first != __last; ++__first)
        if (!__pred(*__first))
            return false;
    return true;
}



template <class _InputIterator, class _Predicate>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
any_of(_InputIterator __first, _InputIterator __last, _Predicate __pred)
{
    for (; __first != __last; ++__first)
        if (__pred(*__first))
            return true;
    return false;
}



template <class _InputIterator, class _Predicate>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
none_of(_InputIterator __first, _InputIterator __last, _Predicate __pred)
{
    for (; __first != __last; ++__first)
        if (__pred(*__first))
            return false;
    return true;
}



template <class _InputIterator, class _Function>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Function
for_each(_InputIterator __first, _InputIterator __last, _Function __f)
{
    for (; __first != __last; ++__first)
        __f(*__first);
    return (__f);
}



template <class _InputIterator, class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_InputIterator
find(_InputIterator __first, _InputIterator __last, const _Tp& __value_)
{
    for (; __first != __last; ++__first)
        if (*__first == __value_)
            break;
    return __first;
}



template <class _InputIterator, class _Predicate>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_InputIterator
find_if(_InputIterator __first, _InputIterator __last, _Predicate __pred)
{
    for (; __first != __last; ++__first)
        if (__pred(*__first))
            break;
    return __first;
}



template<class _InputIterator, class _Predicate>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_InputIterator
find_if_not(_InputIterator __first, _InputIterator __last, _Predicate __pred)
{
    for (; __first != __last; ++__first)
        if (!__pred(*__first))
            break;
    return __first;
}



template <class _BinaryPredicate, class _ForwardIterator1, class _ForwardIterator2>
_ForwardIterator1
__find_end(_ForwardIterator1 __first1, _ForwardIterator1 __last1,
           _ForwardIterator2 __first2, _ForwardIterator2 __last2, _BinaryPredicate __pred,
           forward_iterator_tag, forward_iterator_tag)
{

    _ForwardIterator1 __r = __last1;
    if (__first2 == __last2)
        return __r;
    while (true)
    {
        while (true)
        {
            if (__first1 == __last1)
                return __r;
            if (__pred(*__first1, *__first2))
                break;
            ++__first1;
        }

        _ForwardIterator1 __m1 = __first1;
        _ForwardIterator2 __m2 = __first2;
        while (true)
        {
            if (++__m2 == __last2)
            {
                __r = __first1;
                ++__first1;
                break;
            }
            if (++__m1 == __last1)
                return __r;
            if (!__pred(*__m1, *__m2))
            {
                ++__first1;
                break;
            }
        }
    }
}

template <class _BinaryPredicate, class _BidirectionalIterator1, class _BidirectionalIterator2>
_BidirectionalIterator1
__find_end(_BidirectionalIterator1 __first1, _BidirectionalIterator1 __last1,
           _BidirectionalIterator2 __first2, _BidirectionalIterator2 __last2, _BinaryPredicate __pred,
           bidirectional_iterator_tag, bidirectional_iterator_tag)
{

    if (__first2 == __last2)
        return __last1;
    _BidirectionalIterator1 __l1 = __last1;
    _BidirectionalIterator2 __l2 = __last2;
    --__l2;
    while (true)
    {

        while (true)
        {
            if (__first1 == __l1)
                return __last1;
            if (__pred(*--__l1, *__l2))
                break;
        }

        _BidirectionalIterator1 __m1 = __l1;
        _BidirectionalIterator2 __m2 = __l2;
        while (true)
        {
            if (__m2 == __first2)
                return __m1;
            if (__m1 == __first1)
                return __last1;
            if (!__pred(*--__m1, *--__m2))
            {
                break;
            }
        }
    }
}

template <class _BinaryPredicate, class _RandomAccessIterator1, class _RandomAccessIterator2>
 _RandomAccessIterator1
__find_end(_RandomAccessIterator1 __first1, _RandomAccessIterator1 __last1,
           _RandomAccessIterator2 __first2, _RandomAccessIterator2 __last2, _BinaryPredicate __pred,
           random_access_iterator_tag, random_access_iterator_tag)
{

    typename iterator_traits<_RandomAccessIterator2>::difference_type __len2 = __last2 - __first2;
    if (__len2 == 0)
        return __last1;
    typename iterator_traits<_RandomAccessIterator1>::difference_type __len1 = __last1 - __first1;
    if (__len1 < __len2)
        return __last1;
    const _RandomAccessIterator1 __s = __first1 + (__len2 - 1);
    _RandomAccessIterator1 __l1 = __last1;
    _RandomAccessIterator2 __l2 = __last2;
    --__l2;
    while (true)
    {
        while (true)
        {
            if (__s == __l1)
                return __last1;
            if (__pred(*--__l1, *__l2))
                break;
        }
        _RandomAccessIterator1 __m1 = __l1;
        _RandomAccessIterator2 __m2 = __l2;
        while (true)
        {
            if (__m2 == __first2)
                return __m1;

            if (!__pred(*--__m1, *--__m2))
            {
                break;
            }
        }
    }
}

template <class _ForwardIterator1, class _ForwardIterator2, class _BinaryPredicate>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ForwardIterator1
find_end(_ForwardIterator1 __first1, _ForwardIterator1 __last1,
         _ForwardIterator2 __first2, _ForwardIterator2 __last2, _BinaryPredicate __pred)
{
    return std::__1::__find_end<typename add_lvalue_reference<_BinaryPredicate>::type>
                         (__first1, __last1, __first2, __last2, __pred,
                          typename iterator_traits<_ForwardIterator1>::iterator_category(),
                          typename iterator_traits<_ForwardIterator2>::iterator_category());
}

template <class _ForwardIterator1, class _ForwardIterator2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ForwardIterator1
find_end(_ForwardIterator1 __first1, _ForwardIterator1 __last1,
         _ForwardIterator2 __first2, _ForwardIterator2 __last2)
{
    typedef typename iterator_traits<_ForwardIterator1>::value_type __v1;
    typedef typename iterator_traits<_ForwardIterator2>::value_type __v2;
    return std::__1::find_end(__first1, __last1, __first2, __last2, __equal_to<__v1, __v2>());
}



template <class _ForwardIterator1, class _ForwardIterator2, class _BinaryPredicate>
 _ForwardIterator1
__find_first_of_ce(_ForwardIterator1 __first1, _ForwardIterator1 __last1,
              _ForwardIterator2 __first2, _ForwardIterator2 __last2, _BinaryPredicate __pred)
{
    for (; __first1 != __last1; ++__first1)
        for (_ForwardIterator2 __j = __first2; __j != __last2; ++__j)
            if (__pred(*__first1, *__j))
                return __first1;
    return __last1;
}


template <class _ForwardIterator1, class _ForwardIterator2, class _BinaryPredicate>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ForwardIterator1
find_first_of(_ForwardIterator1 __first1, _ForwardIterator1 __last1,
              _ForwardIterator2 __first2, _ForwardIterator2 __last2, _BinaryPredicate __pred)
{
    return std::__1::__find_first_of_ce(__first1, __last1, __first2, __last2, __pred);
}

template <class _ForwardIterator1, class _ForwardIterator2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ForwardIterator1
find_first_of(_ForwardIterator1 __first1, _ForwardIterator1 __last1,
              _ForwardIterator2 __first2, _ForwardIterator2 __last2)
{
    typedef typename iterator_traits<_ForwardIterator1>::value_type __v1;
    typedef typename iterator_traits<_ForwardIterator2>::value_type __v2;
    return std::__1::__find_first_of_ce(__first1, __last1, __first2, __last2, __equal_to<__v1, __v2>());
}



template <class _ForwardIterator, class _BinaryPredicate>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ForwardIterator
adjacent_find(_ForwardIterator __first, _ForwardIterator __last, _BinaryPredicate __pred)
{
    if (__first != __last)
    {
        _ForwardIterator __i = __first;
        while (++__i != __last)
        {
            if (__pred(*__first, *__i))
                return __first;
            __first = __i;
        }
    }
    return __last;
}

template <class _ForwardIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ForwardIterator
adjacent_find(_ForwardIterator __first, _ForwardIterator __last)
{
    typedef typename iterator_traits<_ForwardIterator>::value_type __v;
    return std::__1::adjacent_find(__first, __last, __equal_to<__v>());
}



template <class _InputIterator, class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename iterator_traits<_InputIterator>::difference_type
count(_InputIterator __first, _InputIterator __last, const _Tp& __value_)
{
    typename iterator_traits<_InputIterator>::difference_type __r(0);
    for (; __first != __last; ++__first)
        if (*__first == __value_)
            ++__r;
    return __r;
}



template <class _InputIterator, class _Predicate>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename iterator_traits<_InputIterator>::difference_type
count_if(_InputIterator __first, _InputIterator __last, _Predicate __pred)
{
    typename iterator_traits<_InputIterator>::difference_type __r(0);
    for (; __first != __last; ++__first)
        if (__pred(*__first))
            ++__r;
    return __r;
}



template <class _InputIterator1, class _InputIterator2, class _BinaryPredicate>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
pair<_InputIterator1, _InputIterator2>
mismatch(_InputIterator1 __first1, _InputIterator1 __last1,
         _InputIterator2 __first2, _BinaryPredicate __pred)
{
    for (; __first1 != __last1; ++__first1, (void) ++__first2)
        if (!__pred(*__first1, *__first2))
            break;
    return pair<_InputIterator1, _InputIterator2>(__first1, __first2);
}

template <class _InputIterator1, class _InputIterator2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
pair<_InputIterator1, _InputIterator2>
mismatch(_InputIterator1 __first1, _InputIterator1 __last1, _InputIterator2 __first2)
{
    typedef typename iterator_traits<_InputIterator1>::value_type __v1;
    typedef typename iterator_traits<_InputIterator2>::value_type __v2;
    return std::__1::mismatch(__first1, __last1, __first2, __equal_to<__v1, __v2>());
}
# 1193 "/opt/intel/sgxsdk/include/libcxx/algorithm" 3
template <class _InputIterator1, class _InputIterator2, class _BinaryPredicate>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
equal(_InputIterator1 __first1, _InputIterator1 __last1, _InputIterator2 __first2, _BinaryPredicate __pred)
{
    for (; __first1 != __last1; ++__first1, (void) ++__first2)
        if (!__pred(*__first1, *__first2))
            return false;
    return true;
}

template <class _InputIterator1, class _InputIterator2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
equal(_InputIterator1 __first1, _InputIterator1 __last1, _InputIterator2 __first2)
{
    typedef typename iterator_traits<_InputIterator1>::value_type __v1;
    typedef typename iterator_traits<_InputIterator2>::value_type __v2;
    return std::__1::equal(__first1, __last1, __first2, __equal_to<__v1, __v2>());
}
# 1270 "/opt/intel/sgxsdk/include/libcxx/algorithm" 3
template<class _ForwardIterator1, class _ForwardIterator2, class _BinaryPredicate>
bool
is_permutation(_ForwardIterator1 __first1, _ForwardIterator1 __last1,
               _ForwardIterator2 __first2, _BinaryPredicate __pred)
{

    for (; __first1 != __last1; ++__first1, (void) ++__first2)
        if (!__pred(*__first1, *__first2))
            goto __not_done;
    return true;
__not_done:

    typedef typename iterator_traits<_ForwardIterator1>::difference_type _D1;
    _D1 __l1 = std::__1::distance(__first1, __last1);
    if (__l1 == _D1(1))
        return false;
    _ForwardIterator2 __last2 = std::__1::next(__first2, __l1);


    for (_ForwardIterator1 __i = __first1; __i != __last1; ++__i)
    {

        for (_ForwardIterator1 __j = __first1; __j != __i; ++__j)
            if (__pred(*__j, *__i))
                goto __next_iter;
        {

            _D1 __c2 = 0;
            for (_ForwardIterator2 __j = __first2; __j != __last2; ++__j)
                if (__pred(*__i, *__j))
                    ++__c2;
            if (__c2 == 0)
                return false;

            _D1 __c1 = 1;
            for (_ForwardIterator1 __j = std::__1::next(__i); __j != __last1; ++__j)
                if (__pred(*__i, *__j))
                    ++__c1;
            if (__c1 != __c2)
                return false;
        }
__next_iter:;
    }
    return true;
}

template<class _ForwardIterator1, class _ForwardIterator2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
is_permutation(_ForwardIterator1 __first1, _ForwardIterator1 __last1,
               _ForwardIterator2 __first2)
{
    typedef typename iterator_traits<_ForwardIterator1>::value_type __v1;
    typedef typename iterator_traits<_ForwardIterator2>::value_type __v2;
    return std::__1::is_permutation(__first1, __last1, __first2, __equal_to<__v1, __v2>());
}
# 1423 "/opt/intel/sgxsdk/include/libcxx/algorithm" 3
template <class _BinaryPredicate, class _ForwardIterator1, class _ForwardIterator2>
pair<_ForwardIterator1, _ForwardIterator1>
__search(_ForwardIterator1 __first1, _ForwardIterator1 __last1,
         _ForwardIterator2 __first2, _ForwardIterator2 __last2, _BinaryPredicate __pred,
         forward_iterator_tag, forward_iterator_tag)
{
    if (__first2 == __last2)
        return make_pair(__first1, __first1);
    while (true)
    {

        while (true)
        {
            if (__first1 == __last1)
                return make_pair(__last1, __last1);
            if (__pred(*__first1, *__first2))
                break;
            ++__first1;
        }

        _ForwardIterator1 __m1 = __first1;
        _ForwardIterator2 __m2 = __first2;
        while (true)
        {
            if (++__m2 == __last2)
                return make_pair(__first1, __m1);
            if (++__m1 == __last1)
                return make_pair(__last1, __last1);
            if (!__pred(*__m1, *__m2))
            {
                ++__first1;
                break;
            }
        }
    }
}

template <class _BinaryPredicate, class _RandomAccessIterator1, class _RandomAccessIterator2>

pair<_RandomAccessIterator1, _RandomAccessIterator1>
__search(_RandomAccessIterator1 __first1, _RandomAccessIterator1 __last1,
         _RandomAccessIterator2 __first2, _RandomAccessIterator2 __last2, _BinaryPredicate __pred,
           random_access_iterator_tag, random_access_iterator_tag)
{
    typedef typename iterator_traits<_RandomAccessIterator1>::difference_type _D1;
    typedef typename iterator_traits<_RandomAccessIterator2>::difference_type _D2;

    const _D2 __len2 = __last2 - __first2;
    if (__len2 == 0)
        return make_pair(__first1, __first1);
    const _D1 __len1 = __last1 - __first1;
    if (__len1 < __len2)
        return make_pair(__last1, __last1);
    const _RandomAccessIterator1 __s = __last1 - (__len2 - 1);
    while (true)
    {

        while (true)
        {
            if (__first1 == __s)
                return make_pair(__last1, __last1);
            if (__pred(*__first1, *__first2))
                break;
            ++__first1;
        }
# 1519 "/opt/intel/sgxsdk/include/libcxx/algorithm" 3
        _RandomAccessIterator1 __m1 = __first1;
        _RandomAccessIterator2 __m2 = __first2;

         while (true)
         {
             if (++__m2 == __last2)
                 return make_pair(__first1, __first1 + __len2);
             ++__m1;
             if (!__pred(*__m1, *__m2))
             {
                 ++__first1;
                 break;
             }
         }
# 1570 "/opt/intel/sgxsdk/include/libcxx/algorithm" 3
    }
}

template <class _ForwardIterator1, class _ForwardIterator2, class _BinaryPredicate>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ForwardIterator1
search(_ForwardIterator1 __first1, _ForwardIterator1 __last1,
       _ForwardIterator2 __first2, _ForwardIterator2 __last2, _BinaryPredicate __pred)
{
    return std::__1::__search<typename add_lvalue_reference<_BinaryPredicate>::type>
                         (__first1, __last1, __first2, __last2, __pred,
                          typename iterator_traits<_ForwardIterator1>::iterator_category(),
                          typename iterator_traits<_ForwardIterator2>::iterator_category())
            .first;
}

template <class _ForwardIterator1, class _ForwardIterator2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ForwardIterator1
search(_ForwardIterator1 __first1, _ForwardIterator1 __last1,
       _ForwardIterator2 __first2, _ForwardIterator2 __last2)
{
    typedef typename iterator_traits<_ForwardIterator1>::value_type __v1;
    typedef typename iterator_traits<_ForwardIterator2>::value_type __v2;
    return std::__1::search(__first1, __last1, __first2, __last2, __equal_to<__v1, __v2>());
}



template <class _BinaryPredicate, class _ForwardIterator, class _Size, class _Tp>
_ForwardIterator
__search_n(_ForwardIterator __first, _ForwardIterator __last,
           _Size __count, const _Tp& __value_, _BinaryPredicate __pred, forward_iterator_tag)
{
    if (__count <= 0)
        return __first;
    while (true)
    {

        while (true)
        {
            if (__first == __last)
                return __last;
            if (__pred(*__first, __value_))
                break;
            ++__first;
        }

        _ForwardIterator __m = __first;
        _Size __c(0);
        while (true)
        {
            if (++__c == __count)
                return __first;
            if (++__m == __last)
                return __last;
            if (!__pred(*__m, __value_))
            {
                __first = __m;
                ++__first;
                break;
            }
        }
    }
}

template <class _BinaryPredicate, class _RandomAccessIterator, class _Size, class _Tp>
_RandomAccessIterator
__search_n(_RandomAccessIterator __first, _RandomAccessIterator __last,
           _Size __count, const _Tp& __value_, _BinaryPredicate __pred, random_access_iterator_tag)
{
    if (__count <= 0)
        return __first;
    _Size __len = static_cast<_Size>(__last - __first);
    if (__len < __count)
        return __last;
    const _RandomAccessIterator __s = __last - (__count - 1);
    while (true)
    {

        while (true)
        {
            if (__first >= __s)
                return __last;
            if (__pred(*__first, __value_))
                break;
            ++__first;
        }

        _RandomAccessIterator __m = __first;
        _Size __c(0);
        while (true)
        {
            if (++__c == __count)
                return __first;
             ++__m;
            if (!__pred(*__m, __value_))
            {
                __first = __m;
                ++__first;
                break;
            }
        }
    }
}

template <class _ForwardIterator, class _Size, class _Tp, class _BinaryPredicate>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ForwardIterator
search_n(_ForwardIterator __first, _ForwardIterator __last,
         _Size __count, const _Tp& __value_, _BinaryPredicate __pred)
{
    return std::__1::__search_n<typename add_lvalue_reference<_BinaryPredicate>::type>
           (__first, __last, __convert_to_integral(__count), __value_, __pred,
           typename iterator_traits<_ForwardIterator>::iterator_category());
}

template <class _ForwardIterator, class _Size, class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ForwardIterator
search_n(_ForwardIterator __first, _ForwardIterator __last, _Size __count, const _Tp& __value_)
{
    typedef typename iterator_traits<_ForwardIterator>::value_type __v;
    return std::__1::search_n(__first, __last, __convert_to_integral(__count),
                           __value_, __equal_to<__v, _Tp>());
}


template <class _Iter>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Iter
__unwrap_iter(_Iter __i)
{
    return __i;
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_trivially_copy_assignable<_Tp>::value,
    _Tp*
>::type
__unwrap_iter(move_iterator<_Tp*> __i)
{
    return __i.base();
}



template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_trivially_copy_assignable<_Tp>::value,
    _Tp*
>::type
__unwrap_iter(__wrap_iter<_Tp*> __i)
{
    return __i.base();
}



template <class _InputIterator, class _OutputIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
__copy(_InputIterator __first, _InputIterator __last, _OutputIterator __result)
{
    for (; __first != __last; ++__first, (void) ++__result)
        *__result = *__first;
    return __result;
}

template <class _Tp, class _Up>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_same<typename remove_const<_Tp>::type, _Up>::value &&
    is_trivially_copy_assignable<_Up>::value,
    _Up*
>::type
__copy(_Tp* __first, _Tp* __last, _Up* __result)
{
    const size_t __n = static_cast<size_t>(__last - __first);
    if (__n > 0)
        std::__1::memmove(__result, __first, __n * sizeof(_Up));
    return __result + __n;
}

template <class _InputIterator, class _OutputIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
copy(_InputIterator __first, _InputIterator __last, _OutputIterator __result)
{
    return std::__1::__copy(__unwrap_iter(__first), __unwrap_iter(__last), __unwrap_iter(__result));
}



template <class _BidirectionalIterator, class _OutputIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
__copy_backward(_BidirectionalIterator __first, _BidirectionalIterator __last, _OutputIterator __result)
{
    while (__first != __last)
        *--__result = *--__last;
    return __result;
}

template <class _Tp, class _Up>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_same<typename remove_const<_Tp>::type, _Up>::value &&
    is_trivially_copy_assignable<_Up>::value,
    _Up*
>::type
__copy_backward(_Tp* __first, _Tp* __last, _Up* __result)
{
    const size_t __n = static_cast<size_t>(__last - __first);
    if (__n > 0)
    {
        __result -= __n;
        std::__1::memmove(__result, __first, __n * sizeof(_Up));
    }
    return __result;
}

template <class _BidirectionalIterator1, class _BidirectionalIterator2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_BidirectionalIterator2
copy_backward(_BidirectionalIterator1 __first, _BidirectionalIterator1 __last,
              _BidirectionalIterator2 __result)
{
    return std::__1::__copy_backward(__unwrap_iter(__first), __unwrap_iter(__last), __unwrap_iter(__result));
}



template<class _InputIterator, class _OutputIterator, class _Predicate>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
copy_if(_InputIterator __first, _InputIterator __last,
        _OutputIterator __result, _Predicate __pred)
{
    for (; __first != __last; ++__first)
    {
        if (__pred(*__first))
        {
            *__result = *__first;
            ++__result;
        }
    }
    return __result;
}



template<class _InputIterator, class _Size, class _OutputIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    __is_input_iterator<_InputIterator>::value &&
   !__is_random_access_iterator<_InputIterator>::value,
    _OutputIterator
>::type
copy_n(_InputIterator __first, _Size __orig_n, _OutputIterator __result)
{
    typedef decltype(__convert_to_integral(__orig_n)) _IntegralSize;
    _IntegralSize __n = __orig_n;
    if (__n > 0)
    {
        *__result = *__first;
        ++__result;
        for (--__n; __n > 0; --__n)
        {
            ++__first;
            *__result = *__first;
            ++__result;
        }
    }
    return __result;
}

template<class _InputIterator, class _Size, class _OutputIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    __is_random_access_iterator<_InputIterator>::value,
    _OutputIterator
>::type
copy_n(_InputIterator __first, _Size __orig_n, _OutputIterator __result)
{
    typedef decltype(__convert_to_integral(__orig_n)) _IntegralSize;
    _IntegralSize __n = __orig_n;
    return std::__1::copy(__first, __first + __n, __result);
}



template <class _InputIterator, class _OutputIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
__move(_InputIterator __first, _InputIterator __last, _OutputIterator __result)
{
    for (; __first != __last; ++__first, (void) ++__result)
        *__result = std::__1::move(*__first);
    return __result;
}

template <class _Tp, class _Up>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_same<typename remove_const<_Tp>::type, _Up>::value &&
    is_trivially_copy_assignable<_Up>::value,
    _Up*
>::type
__move(_Tp* __first, _Tp* __last, _Up* __result)
{
    const size_t __n = static_cast<size_t>(__last - __first);
    if (__n > 0)
        std::__1::memmove(__result, __first, __n * sizeof(_Up));
    return __result + __n;
}

template <class _InputIterator, class _OutputIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
move(_InputIterator __first, _InputIterator __last, _OutputIterator __result)
{
    return std::__1::__move(__unwrap_iter(__first), __unwrap_iter(__last), __unwrap_iter(__result));
}



template <class _InputIterator, class _OutputIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
__move_backward(_InputIterator __first, _InputIterator __last, _OutputIterator __result)
{
    while (__first != __last)
        *--__result = std::__1::move(*--__last);
    return __result;
}

template <class _Tp, class _Up>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_same<typename remove_const<_Tp>::type, _Up>::value &&
    is_trivially_copy_assignable<_Up>::value,
    _Up*
>::type
__move_backward(_Tp* __first, _Tp* __last, _Up* __result)
{
    const size_t __n = static_cast<size_t>(__last - __first);
    if (__n > 0)
    {
        __result -= __n;
        std::__1::memmove(__result, __first, __n * sizeof(_Up));
    }
    return __result;
}

template <class _BidirectionalIterator1, class _BidirectionalIterator2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_BidirectionalIterator2
move_backward(_BidirectionalIterator1 __first, _BidirectionalIterator1 __last,
              _BidirectionalIterator2 __result)
{
    return std::__1::__move_backward(__unwrap_iter(__first), __unwrap_iter(__last), __unwrap_iter(__result));
}







template <class _InputIterator, class _OutputIterator, class _UnaryOperation>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
transform(_InputIterator __first, _InputIterator __last, _OutputIterator __result, _UnaryOperation __op)
{
    for (; __first != __last; ++__first, (void) ++__result)
        *__result = __op(*__first);
    return __result;
}

template <class _InputIterator1, class _InputIterator2, class _OutputIterator, class _BinaryOperation>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
transform(_InputIterator1 __first1, _InputIterator1 __last1, _InputIterator2 __first2,
          _OutputIterator __result, _BinaryOperation __binary_op)
{
    for (; __first1 != __last1; ++__first1, (void) ++__first2, ++__result)
        *__result = __binary_op(*__first1, *__first2);
    return __result;
}



template <class _ForwardIterator, class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
replace(_ForwardIterator __first, _ForwardIterator __last, const _Tp& __old_value, const _Tp& __new_value)
{
    for (; __first != __last; ++__first)
        if (*__first == __old_value)
            *__first = __new_value;
}



template <class _ForwardIterator, class _Predicate, class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
replace_if(_ForwardIterator __first, _ForwardIterator __last, _Predicate __pred, const _Tp& __new_value)
{
    for (; __first != __last; ++__first)
        if (__pred(*__first))
            *__first = __new_value;
}



template <class _InputIterator, class _OutputIterator, class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
replace_copy(_InputIterator __first, _InputIterator __last, _OutputIterator __result,
             const _Tp& __old_value, const _Tp& __new_value)
{
    for (; __first != __last; ++__first, (void) ++__result)
        if (*__first == __old_value)
            *__result = __new_value;
        else
            *__result = *__first;
    return __result;
}



template <class _InputIterator, class _OutputIterator, class _Predicate, class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
replace_copy_if(_InputIterator __first, _InputIterator __last, _OutputIterator __result,
                _Predicate __pred, const _Tp& __new_value)
{
    for (; __first != __last; ++__first, (void) ++__result)
        if (__pred(*__first))
            *__result = __new_value;
        else
            *__result = *__first;
    return __result;
}



template <class _OutputIterator, class _Size, class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
__fill_n(_OutputIterator __first, _Size __n, const _Tp& __value_)
{
    for (; __n > 0; ++__first, (void) --__n)
        *__first = __value_;
    return __first;
}

template <class _Tp, class _Size, class _Up>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename enable_if
<
    is_integral<_Tp>::value && sizeof(_Tp) == 1 &&
    !is_same<_Tp, bool>::value &&
    is_integral<_Up>::value && sizeof(_Up) == 1,
    _Tp*
>::type
__fill_n(_Tp* __first, _Size __n,_Up __value_)
{
    if (__n > 0)
        std::__1::memset(__first, (unsigned char)__value_, (size_t)(__n));
    return __first + __n;
}

template <class _OutputIterator, class _Size, class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
fill_n(_OutputIterator __first, _Size __n, const _Tp& __value_)
{
   return std::__1::__fill_n(__first, __convert_to_integral(__n), __value_);
}



template <class _ForwardIterator, class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
__fill(_ForwardIterator __first, _ForwardIterator __last, const _Tp& __value_, forward_iterator_tag)
{
    for (; __first != __last; ++__first)
        *__first = __value_;
}

template <class _RandomAccessIterator, class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
__fill(_RandomAccessIterator __first, _RandomAccessIterator __last, const _Tp& __value_, random_access_iterator_tag)
{
    std::__1::fill_n(__first, __last - __first, __value_);
}

template <class _ForwardIterator, class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
fill(_ForwardIterator __first, _ForwardIterator __last, const _Tp& __value_)
{
    std::__1::__fill(__first, __last, __value_, typename iterator_traits<_ForwardIterator>::iterator_category());
}



template <class _ForwardIterator, class _Generator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
generate(_ForwardIterator __first, _ForwardIterator __last, _Generator __gen)
{
    for (; __first != __last; ++__first)
        *__first = __gen();
}



template <class _OutputIterator, class _Size, class _Generator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
generate_n(_OutputIterator __first, _Size __orig_n, _Generator __gen)
{
    typedef decltype(__convert_to_integral(__orig_n)) _IntegralSize;
    _IntegralSize __n = __orig_n;
    for (; __n > 0; ++__first, (void) --__n)
        *__first = __gen();
    return __first;
}



template <class _ForwardIterator, class _Tp>
_ForwardIterator
remove(_ForwardIterator __first, _ForwardIterator __last, const _Tp& __value_)
{
    __first = std::__1::find(__first, __last, __value_);
    if (__first != __last)
    {
        _ForwardIterator __i = __first;
        while (++__i != __last)
        {
            if (!(*__i == __value_))
            {
                *__first = std::__1::move(*__i);
                ++__first;
            }
        }
    }
    return __first;
}



template <class _ForwardIterator, class _Predicate>
_ForwardIterator
remove_if(_ForwardIterator __first, _ForwardIterator __last, _Predicate __pred)
{
    __first = std::__1::find_if<_ForwardIterator, typename add_lvalue_reference<_Predicate>::type>
                           (__first, __last, __pred);
    if (__first != __last)
    {
        _ForwardIterator __i = __first;
        while (++__i != __last)
        {
            if (!__pred(*__i))
            {
                *__first = std::__1::move(*__i);
                ++__first;
            }
        }
    }
    return __first;
}



template <class _InputIterator, class _OutputIterator, class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
remove_copy(_InputIterator __first, _InputIterator __last, _OutputIterator __result, const _Tp& __value_)
{
    for (; __first != __last; ++__first)
    {
        if (!(*__first == __value_))
        {
            *__result = *__first;
            ++__result;
        }
    }
    return __result;
}



template <class _InputIterator, class _OutputIterator, class _Predicate>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
remove_copy_if(_InputIterator __first, _InputIterator __last, _OutputIterator __result, _Predicate __pred)
{
    for (; __first != __last; ++__first)
    {
        if (!__pred(*__first))
        {
            *__result = *__first;
            ++__result;
        }
    }
    return __result;
}



template <class _ForwardIterator, class _BinaryPredicate>
_ForwardIterator
unique(_ForwardIterator __first, _ForwardIterator __last, _BinaryPredicate __pred)
{
    __first = std::__1::adjacent_find<_ForwardIterator, typename add_lvalue_reference<_BinaryPredicate>::type>
                                 (__first, __last, __pred);
    if (__first != __last)
    {


        _ForwardIterator __i = __first;
        for (++__i; ++__i != __last;)
            if (!__pred(*__first, *__i))
                *++__first = std::__1::move(*__i);
        ++__first;
    }
    return __first;
}

template <class _ForwardIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ForwardIterator
unique(_ForwardIterator __first, _ForwardIterator __last)
{
    typedef typename iterator_traits<_ForwardIterator>::value_type __v;
    return std::__1::unique(__first, __last, __equal_to<__v>());
}



template <class _BinaryPredicate, class _InputIterator, class _OutputIterator>
_OutputIterator
__unique_copy(_InputIterator __first, _InputIterator __last, _OutputIterator __result, _BinaryPredicate __pred,
              input_iterator_tag, output_iterator_tag)
{
    if (__first != __last)
    {
        typename iterator_traits<_InputIterator>::value_type __t(*__first);
        *__result = __t;
        ++__result;
        while (++__first != __last)
        {
            if (!__pred(__t, *__first))
            {
                __t = *__first;
                *__result = __t;
                ++__result;
            }
        }
    }
    return __result;
}

template <class _BinaryPredicate, class _ForwardIterator, class _OutputIterator>
_OutputIterator
__unique_copy(_ForwardIterator __first, _ForwardIterator __last, _OutputIterator __result, _BinaryPredicate __pred,
              forward_iterator_tag, output_iterator_tag)
{
    if (__first != __last)
    {
        _ForwardIterator __i = __first;
        *__result = *__i;
        ++__result;
        while (++__first != __last)
        {
            if (!__pred(*__i, *__first))
            {
                *__result = *__first;
                ++__result;
                __i = __first;
            }
        }
    }
    return __result;
}

template <class _BinaryPredicate, class _InputIterator, class _ForwardIterator>
_ForwardIterator
__unique_copy(_InputIterator __first, _InputIterator __last, _ForwardIterator __result, _BinaryPredicate __pred,
              input_iterator_tag, forward_iterator_tag)
{
    if (__first != __last)
    {
        *__result = *__first;
        while (++__first != __last)
            if (!__pred(*__result, *__first))
                *++__result = *__first;
        ++__result;
    }
    return __result;
}

template <class _InputIterator, class _OutputIterator, class _BinaryPredicate>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
unique_copy(_InputIterator __first, _InputIterator __last, _OutputIterator __result, _BinaryPredicate __pred)
{
    return std::__1::__unique_copy<typename add_lvalue_reference<_BinaryPredicate>::type>
                              (__first, __last, __result, __pred,
                               typename iterator_traits<_InputIterator>::iterator_category(),
                               typename iterator_traits<_OutputIterator>::iterator_category());
}

template <class _InputIterator, class _OutputIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
unique_copy(_InputIterator __first, _InputIterator __last, _OutputIterator __result)
{
    typedef typename iterator_traits<_InputIterator>::value_type __v;
    return std::__1::unique_copy(__first, __last, __result, __equal_to<__v>());
}



template <class _BidirectionalIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
__reverse(_BidirectionalIterator __first, _BidirectionalIterator __last, bidirectional_iterator_tag)
{
    while (__first != __last)
    {
        if (__first == --__last)
            break;
        std::__1::iter_swap(__first, __last);
        ++__first;
    }
}

template <class _RandomAccessIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
__reverse(_RandomAccessIterator __first, _RandomAccessIterator __last, random_access_iterator_tag)
{
    if (__first != __last)
        for (; __first < --__last; ++__first)
            std::__1::iter_swap(__first, __last);
}

template <class _BidirectionalIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
reverse(_BidirectionalIterator __first, _BidirectionalIterator __last)
{
    std::__1::__reverse(__first, __last, typename iterator_traits<_BidirectionalIterator>::iterator_category());
}



template <class _BidirectionalIterator, class _OutputIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
reverse_copy(_BidirectionalIterator __first, _BidirectionalIterator __last, _OutputIterator __result)
{
    for (; __first != __last; ++__result)
        *__result = *--__last;
    return __result;
}



template <class _ForwardIterator>
_ForwardIterator
__rotate_left(_ForwardIterator __first, _ForwardIterator __last)
{
    typedef typename iterator_traits<_ForwardIterator>::value_type value_type;
    value_type __tmp = std::__1::move(*__first);
    _ForwardIterator __lm1 = std::__1::move(std::__1::next(__first), __last, __first);
    *__lm1 = std::__1::move(__tmp);
    return __lm1;
}

template <class _BidirectionalIterator>
_BidirectionalIterator
__rotate_right(_BidirectionalIterator __first, _BidirectionalIterator __last)
{
    typedef typename iterator_traits<_BidirectionalIterator>::value_type value_type;
    _BidirectionalIterator __lm1 = std::__1::prev(__last);
    value_type __tmp = std::__1::move(*__lm1);
    _BidirectionalIterator __fp1 = std::__1::move_backward(__first, __lm1, __last);
    *__first = std::__1::move(__tmp);
    return __fp1;
}

template <class _ForwardIterator>
_ForwardIterator
__rotate_forward(_ForwardIterator __first, _ForwardIterator __middle, _ForwardIterator __last)
{
    _ForwardIterator __i = __middle;
    while (true)
    {
        swap(*__first, *__i);
        ++__first;
        if (++__i == __last)
            break;
        if (__first == __middle)
            __middle = __i;
    }
    _ForwardIterator __r = __first;
    if (__first != __middle)
    {
        __i = __middle;
        while (true)
        {
            swap(*__first, *__i);
            ++__first;
            if (++__i == __last)
            {
                if (__first == __middle)
                    break;
                __i = __middle;
            }
            else if (__first == __middle)
                __middle = __i;
        }
    }
    return __r;
}

template<typename _Integral>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Integral
__gcd(_Integral __x, _Integral __y)
{
    do
    {
        _Integral __t = __x % __y;
        __x = __y;
        __y = __t;
    } while (__y);
    return __x;
}

template<typename _RandomAccessIterator>
_RandomAccessIterator
__rotate_gcd(_RandomAccessIterator __first, _RandomAccessIterator __middle, _RandomAccessIterator __last)
{
    typedef typename iterator_traits<_RandomAccessIterator>::difference_type difference_type;
    typedef typename iterator_traits<_RandomAccessIterator>::value_type value_type;

    const difference_type __m1 = __middle - __first;
    const difference_type __m2 = __last - __middle;
    if (__m1 == __m2)
    {
        std::__1::swap_ranges(__first, __middle, __middle);
        return __middle;
    }
    const difference_type __g = std::__1::__gcd(__m1, __m2);
    for (_RandomAccessIterator __p = __first + __g; __p != __first;)
    {
        value_type __t(std::__1::move(*--__p));
        _RandomAccessIterator __p1 = __p;
        _RandomAccessIterator __p2 = __p1 + __m1;
        do
        {
            *__p1 = std::__1::move(*__p2);
            __p1 = __p2;
            const difference_type __d = __last - __p2;
            if (__m1 < __d)
                __p2 += __m1;
            else
                __p2 = __first + (__m1 - __d);
        } while (__p2 != __p);
        *__p1 = std::__1::move(__t);
    }
    return __first + __m2;
}

template <class _ForwardIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ForwardIterator
__rotate(_ForwardIterator __first, _ForwardIterator __middle, _ForwardIterator __last,
         std::__1::forward_iterator_tag)
{
    typedef typename std::__1::iterator_traits<_ForwardIterator>::value_type value_type;
    if (std::__1::is_trivially_move_assignable<value_type>::value)
    {
        if (std::__1::next(__first) == __middle)
            return std::__1::__rotate_left(__first, __last);
    }
    return std::__1::__rotate_forward(__first, __middle, __last);
}

template <class _BidirectionalIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_BidirectionalIterator
__rotate(_BidirectionalIterator __first, _BidirectionalIterator __middle, _BidirectionalIterator __last,
         std::__1::bidirectional_iterator_tag)
{
    typedef typename std::__1::iterator_traits<_BidirectionalIterator>::value_type value_type;
    if (std::__1::is_trivially_move_assignable<value_type>::value)
    {
        if (std::__1::next(__first) == __middle)
            return std::__1::__rotate_left(__first, __last);
        if (std::__1::next(__middle) == __last)
            return std::__1::__rotate_right(__first, __last);
    }
    return std::__1::__rotate_forward(__first, __middle, __last);
}

template <class _RandomAccessIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_RandomAccessIterator
__rotate(_RandomAccessIterator __first, _RandomAccessIterator __middle, _RandomAccessIterator __last,
         std::__1::random_access_iterator_tag)
{
    typedef typename std::__1::iterator_traits<_RandomAccessIterator>::value_type value_type;
    if (std::__1::is_trivially_move_assignable<value_type>::value)
    {
        if (std::__1::next(__first) == __middle)
            return std::__1::__rotate_left(__first, __last);
        if (std::__1::next(__middle) == __last)
            return std::__1::__rotate_right(__first, __last);
        return std::__1::__rotate_gcd(__first, __middle, __last);
    }
    return std::__1::__rotate_forward(__first, __middle, __last);
}

template <class _ForwardIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ForwardIterator
rotate(_ForwardIterator __first, _ForwardIterator __middle, _ForwardIterator __last)
{
    if (__first == __middle)
        return __last;
    if (__middle == __last)
        return __first;
    return std::__1::__rotate(__first, __middle, __last,
                           typename std::__1::iterator_traits<_ForwardIterator>::iterator_category());
}



template <class _ForwardIterator, class _OutputIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
rotate_copy(_ForwardIterator __first, _ForwardIterator __middle, _ForwardIterator __last, _OutputIterator __result)
{
    return std::__1::copy(__first, __middle, std::__1::copy(__middle, __last, __result));
}



template <class _ForwardIterator, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ForwardIterator
min_element(_ForwardIterator __first, _ForwardIterator __last, _Compare __comp)
{
    if (__first != __last)
    {
        _ForwardIterator __i = __first;
        while (++__i != __last)
            if (__comp(*__i, *__first))
                __first = __i;
    }
    return __first;
}

template <class _ForwardIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ForwardIterator
min_element(_ForwardIterator __first, _ForwardIterator __last)
{
    return std::__1::min_element(__first, __last,
              __less<typename iterator_traits<_ForwardIterator>::value_type>());
}



template <class _Tp, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
const _Tp&
min(const _Tp& __a, const _Tp& __b, _Compare __comp)
{
    return __comp(__b, __a) ? __b : __a;
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
const _Tp&
min(const _Tp& __a, const _Tp& __b)
{
    return std::__1::min(__a, __b, __less<_Tp>());
}



template<class _Tp, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp
min(initializer_list<_Tp> __t, _Compare __comp)
{
    return *std::__1::min_element(__t.begin(), __t.end(), __comp);
}

template<class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp
min(initializer_list<_Tp> __t)
{
    return *std::__1::min_element(__t.begin(), __t.end(), __less<_Tp>());
}





template <class _ForwardIterator, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ForwardIterator
max_element(_ForwardIterator __first, _ForwardIterator __last, _Compare __comp)
{
    if (__first != __last)
    {
        _ForwardIterator __i = __first;
        while (++__i != __last)
            if (__comp(*__first, *__i))
                __first = __i;
    }
    return __first;
}


template <class _ForwardIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ForwardIterator
max_element(_ForwardIterator __first, _ForwardIterator __last)
{
    return std::__1::max_element(__first, __last,
              __less<typename iterator_traits<_ForwardIterator>::value_type>());
}



template <class _Tp, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
const _Tp&
max(const _Tp& __a, const _Tp& __b, _Compare __comp)
{
    return __comp(__a, __b) ? __b : __a;
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
const _Tp&
max(const _Tp& __a, const _Tp& __b)
{
    return std::__1::max(__a, __b, __less<_Tp>());
}



template<class _Tp, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp
max(initializer_list<_Tp> __t, _Compare __comp)
{
    return *std::__1::max_element(__t.begin(), __t.end(), __comp);
}

template<class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_Tp
max(initializer_list<_Tp> __t)
{
    return *std::__1::max_element(__t.begin(), __t.end(), __less<_Tp>());
}
# 2691 "/opt/intel/sgxsdk/include/libcxx/algorithm" 3
template <class _ForwardIterator, class _Compare>

std::pair<_ForwardIterator, _ForwardIterator>
minmax_element(_ForwardIterator __first, _ForwardIterator __last, _Compare __comp)
{
  std::pair<_ForwardIterator, _ForwardIterator> __result(__first, __first);
  if (__first != __last)
  {
      if (++__first != __last)
      {
          if (__comp(*__first, *__result.first))
              __result.first = __first;
          else
              __result.second = __first;
          while (++__first != __last)
          {
              _ForwardIterator __i = __first;
              if (++__first == __last)
              {
                  if (__comp(*__i, *__result.first))
                      __result.first = __i;
                  else if (!__comp(*__i, *__result.second))
                      __result.second = __i;
                  break;
              }
              else
              {
                  if (__comp(*__first, *__i))
                  {
                      if (__comp(*__first, *__result.first))
                          __result.first = __first;
                      if (!__comp(*__i, *__result.second))
                          __result.second = __i;
                  }
                  else
                  {
                      if (__comp(*__i, *__result.first))
                          __result.first = __i;
                      if (!__comp(*__first, *__result.second))
                          __result.second = __first;
                  }
              }
          }
      }
  }
  return __result;
}

template <class _ForwardIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
std::pair<_ForwardIterator, _ForwardIterator>
minmax_element(_ForwardIterator __first, _ForwardIterator __last)
{
    return std::__1::minmax_element(__first, __last,
              __less<typename iterator_traits<_ForwardIterator>::value_type>());
}



template<class _Tp, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
pair<const _Tp&, const _Tp&>
minmax(const _Tp& __a, const _Tp& __b, _Compare __comp)
{
    return __comp(__b, __a) ? pair<const _Tp&, const _Tp&>(__b, __a) :
                              pair<const _Tp&, const _Tp&>(__a, __b);
}

template<class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
pair<const _Tp&, const _Tp&>
minmax(const _Tp& __a, const _Tp& __b)
{
    return std::__1::minmax(__a, __b, __less<_Tp>());
}



template<class _Tp, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
pair<_Tp, _Tp>
minmax(initializer_list<_Tp> __t, _Compare __comp)
{
    typedef typename initializer_list<_Tp>::const_iterator _Iter;
    _Iter __first = __t.begin();
    _Iter __last = __t.end();
    std::pair<_Tp, _Tp> __result(*__first, *__first);

    ++__first;
    if (__t.size() % 2 == 0)
    {
        if (__comp(*__first, __result.first))
            __result.first = *__first;
        else
            __result.second = *__first;
        ++__first;
    }

    while (__first != __last)
    {
        _Tp __prev = *__first++;
        if (__comp(*__first, __prev)) {
            if ( __comp(*__first, __result.first)) __result.first = *__first;
            if (!__comp(__prev, __result.second)) __result.second = __prev;
            }
        else {
            if ( __comp(__prev, __result.first)) __result.first = __prev;
            if (!__comp(*__first, __result.second)) __result.second = *__first;
            }

        __first++;
    }
    return __result;
}

template<class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
pair<_Tp, _Tp>
minmax(initializer_list<_Tp> __t)
{
    return std::__1::minmax(__t, __less<_Tp>());
}







template <unsigned long long _Xp, size_t _Rp>
struct __log2_imp
{
    static const size_t value = _Xp & ((unsigned long long)(1) << _Rp) ? _Rp
                                           : __log2_imp<_Xp, _Rp - 1>::value;
};

template <unsigned long long _Xp>
struct __log2_imp<_Xp, 0>
{
    static const size_t value = 0;
};

template <size_t _Rp>
struct __log2_imp<0, _Rp>
{
    static const size_t value = _Rp + 1;
};

template <class _UI, _UI _Xp>
struct __log2
{
    static const size_t value = __log2_imp<_Xp,
                                         sizeof(_UI) * 8 - 1>::value;
};

template<class _Engine, class _UIntType>
class __independent_bits_engine
{
public:

    typedef _UIntType result_type;

private:
    typedef typename _Engine::result_type _Engine_result_type;
    typedef typename conditional
        <
            sizeof(_Engine_result_type) <= sizeof(result_type),
                result_type,
                _Engine_result_type
        >::type _Working_result_type;

    _Engine& __e_;
    size_t __w_;
    size_t __w0_;
    size_t __n_;
    size_t __n0_;
    _Working_result_type __y0_;
    _Working_result_type __y1_;
    _Engine_result_type __mask0_;
    _Engine_result_type __mask1_;





    static constexpr const _Working_result_type _Rp = _Engine::max() - _Engine::min()
                                                      + _Working_result_type(1);

    static constexpr const size_t __m = __log2<_Working_result_type, _Rp>::value;
    static constexpr const size_t _WDt = numeric_limits<_Working_result_type>::digits;
    static constexpr const size_t _EDt = numeric_limits<_Engine_result_type>::digits;

public:

    __independent_bits_engine(_Engine& __e, size_t __w);


    result_type operator()() {return __eval(integral_constant<bool, _Rp != 0>());}

private:
    result_type __eval(false_type);
    result_type __eval(true_type);
};

template<class _Engine, class _UIntType>
__independent_bits_engine<_Engine, _UIntType>
    ::__independent_bits_engine(_Engine& __e, size_t __w)
        : __e_(__e),
          __w_(__w)
{
    __n_ = __w_ / __m + (__w_ % __m != 0);
    __w0_ = __w_ / __n_;
    if (_Rp == 0)
        __y0_ = _Rp;
    else if (__w0_ < _WDt)
        __y0_ = (_Rp >> __w0_) << __w0_;
    else
        __y0_ = 0;
    if (_Rp - __y0_ > __y0_ / __n_)
    {
        ++__n_;
        __w0_ = __w_ / __n_;
        if (__w0_ < _WDt)
            __y0_ = (_Rp >> __w0_) << __w0_;
        else
            __y0_ = 0;
    }
    __n0_ = __n_ - __w_ % __n_;
    if (__w0_ < _WDt - 1)
        __y1_ = (_Rp >> (__w0_ + 1)) << (__w0_ + 1);
    else
        __y1_ = 0;
    __mask0_ = __w0_ > 0 ? _Engine_result_type(~0) >> (_EDt - __w0_) :
                          _Engine_result_type(0);
    __mask1_ = __w0_ < _EDt - 1 ?
                               _Engine_result_type(~0) >> (_EDt - (__w0_ + 1)) :
                               _Engine_result_type(~0);
}

template<class _Engine, class _UIntType>
inline
_UIntType
__independent_bits_engine<_Engine, _UIntType>::__eval(false_type)
{
    return static_cast<result_type>(__e_() & __mask0_);
}

template<class _Engine, class _UIntType>
_UIntType
__independent_bits_engine<_Engine, _UIntType>::__eval(true_type)
{
    result_type _Sp = 0;
    for (size_t __k = 0; __k < __n0_; ++__k)
    {
        _Engine_result_type __u;
        do
        {
            __u = __e_() - _Engine::min();
        } while (__u >= __y0_);
        if (__w0_ < _WDt)
            _Sp <<= __w0_;
        else
            _Sp = 0;
        _Sp += __u & __mask0_;
    }
    for (size_t __k = __n0_; __k < __n_; ++__k)
    {
        _Engine_result_type __u;
        do
        {
            __u = __e_() - _Engine::min();
        } while (__u >= __y1_);
        if (__w0_ < _WDt - 1)
            _Sp <<= __w0_ + 1;
        else
            _Sp = 0;
        _Sp += __u & __mask1_;
    }
    return _Sp;
}



template<class _IntType = int>
class uniform_int_distribution
{
public:

    typedef _IntType result_type;

    class param_type
    {
        result_type __a_;
        result_type __b_;
    public:
        typedef uniform_int_distribution distribution_type;

        explicit param_type(result_type __a = 0,
                            result_type __b = numeric_limits<result_type>::max())
            : __a_(__a), __b_(__b) {}

        result_type a() const {return __a_;}
        result_type b() const {return __b_;}

        friend bool operator==(const param_type& __x, const param_type& __y)
            {return __x.__a_ == __y.__a_ && __x.__b_ == __y.__b_;}
        friend bool operator!=(const param_type& __x, const param_type& __y)
            {return !(__x == __y);}
    };

private:
    param_type __p_;

public:

    explicit uniform_int_distribution(result_type __a = 0,
                                      result_type __b = numeric_limits<result_type>::max())
        : __p_(param_type(__a, __b)) {}
    explicit uniform_int_distribution(const param_type& __p) : __p_(__p) {}
    void reset() {}


    template<class _URNG> result_type operator()(_URNG& __g)
        {return (*this)(__g, __p_);}
    template<class _URNG> result_type operator()(_URNG& __g, const param_type& __p);


    result_type a() const {return __p_.a();}
    result_type b() const {return __p_.b();}

    param_type param() const {return __p_;}
    void param(const param_type& __p) {__p_ = __p;}

    result_type min() const {return a();}
    result_type max() const {return b();}

    friend bool operator==(const uniform_int_distribution& __x,
                           const uniform_int_distribution& __y)
        {return __x.__p_ == __y.__p_;}
    friend bool operator!=(const uniform_int_distribution& __x,
                           const uniform_int_distribution& __y)
            {return !(__x == __y);}
};

template<class _IntType>
template<class _URNG>
typename uniform_int_distribution<_IntType>::result_type
uniform_int_distribution<_IntType>::operator()(_URNG& __g, const param_type& __p)
{
    typedef typename conditional<sizeof(result_type) <= sizeof(uint32_t),
                                            uint32_t, uint64_t>::type _UIntType;
    const _UIntType _Rp = __p.b() - __p.a() + _UIntType(1);
    if (_Rp == 1)
        return __p.a();
    const size_t _Dt = numeric_limits<_UIntType>::digits;
    typedef __independent_bits_engine<_URNG, _UIntType> _Eng;
    if (_Rp == 0)
        return static_cast<result_type>(_Eng(__g, _Dt)());
    size_t __w = _Dt - __clz(_Rp) - 1;
    if ((_Rp & (std::numeric_limits<_UIntType>::max() >> (_Dt - __w))) != 0)
        ++__w;
    _Eng __e(__g, __w);
    _UIntType __u;
    do
    {
        __u = __e();
    } while (__u >= _Rp);
    return static_cast<result_type>(__u + __p.a());
}
# 3133 "/opt/intel/sgxsdk/include/libcxx/algorithm" 3
template<class _RandomAccessIterator, class _UniformRandomNumberGenerator>
    void shuffle(_RandomAccessIterator __first, _RandomAccessIterator __last,

                 _UniformRandomNumberGenerator&& __g)



{
    typedef typename iterator_traits<_RandomAccessIterator>::difference_type difference_type;
    typedef uniform_int_distribution<ptrdiff_t> _Dp;
    typedef typename _Dp::param_type _Pp;
    difference_type __d = __last - __first;
    if (__d > 1)
    {
        _Dp __uid;
        for (--__last, --__d; __first < __last; ++__first, --__d)
        {
            difference_type __i = __uid(__g, _Pp(0, __d));
            if (__i != difference_type(0))
                swap(*__first, *(__first + __i));
        }
    }
}

template <class _InputIterator, class _Predicate>
bool
is_partitioned(_InputIterator __first, _InputIterator __last, _Predicate __pred)
{
    for (; __first != __last; ++__first)
        if (!__pred(*__first))
            break;
    if ( __first == __last )
        return true;
    ++__first;
    for (; __first != __last; ++__first)
        if (__pred(*__first))
            return false;
    return true;
}



template <class _Predicate, class _ForwardIterator>
_ForwardIterator
__partition(_ForwardIterator __first, _ForwardIterator __last, _Predicate __pred, forward_iterator_tag)
{
    while (true)
    {
        if (__first == __last)
            return __first;
        if (!__pred(*__first))
            break;
        ++__first;
    }
    for (_ForwardIterator __p = __first; ++__p != __last;)
    {
        if (__pred(*__p))
        {
            swap(*__first, *__p);
            ++__first;
        }
    }
    return __first;
}

template <class _Predicate, class _BidirectionalIterator>
_BidirectionalIterator
__partition(_BidirectionalIterator __first, _BidirectionalIterator __last, _Predicate __pred,
            bidirectional_iterator_tag)
{
    while (true)
    {
        while (true)
        {
            if (__first == __last)
                return __first;
            if (!__pred(*__first))
                break;
            ++__first;
        }
        do
        {
            if (__first == --__last)
                return __first;
        } while (!__pred(*__last));
        swap(*__first, *__last);
        ++__first;
    }
}

template <class _ForwardIterator, class _Predicate>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ForwardIterator
partition(_ForwardIterator __first, _ForwardIterator __last, _Predicate __pred)
{
    return std::__1::__partition<typename add_lvalue_reference<_Predicate>::type>
                            (__first, __last, __pred, typename iterator_traits<_ForwardIterator>::iterator_category());
}



template <class _InputIterator, class _OutputIterator1,
          class _OutputIterator2, class _Predicate>
pair<_OutputIterator1, _OutputIterator2>
partition_copy(_InputIterator __first, _InputIterator __last,
               _OutputIterator1 __out_true, _OutputIterator2 __out_false,
               _Predicate __pred)
{
    for (; __first != __last; ++__first)
    {
        if (__pred(*__first))
        {
            *__out_true = *__first;
            ++__out_true;
        }
        else
        {
            *__out_false = *__first;
            ++__out_false;
        }
    }
    return pair<_OutputIterator1, _OutputIterator2>(__out_true, __out_false);
}



template<class _ForwardIterator, class _Predicate>
_ForwardIterator
partition_point(_ForwardIterator __first, _ForwardIterator __last, _Predicate __pred)
{
    typedef typename iterator_traits<_ForwardIterator>::difference_type difference_type;
    difference_type __len = std::__1::distance(__first, __last);
    while (__len != 0)
    {
        difference_type __l2 = __len / 2;
        _ForwardIterator __m = __first;
        std::__1::advance(__m, __l2);
        if (__pred(*__m))
        {
            __first = ++__m;
            __len -= __l2 + 1;
        }
        else
            __len = __l2;
    }
    return __first;
}



template <class _Predicate, class _ForwardIterator, class _Distance, class _Pair>
_ForwardIterator
__stable_partition(_ForwardIterator __first, _ForwardIterator __last, _Predicate __pred,
                   _Distance __len, _Pair __p, forward_iterator_tag __fit)
{


    if (__len == 1)
        return __first;
    if (__len == 2)
    {
        _ForwardIterator __m = __first;
        if (__pred(*++__m))
        {
            swap(*__first, *__m);
            return __m;
        }
        return __first;
    }
    if (__len <= __p.second)
    {
        typedef typename iterator_traits<_ForwardIterator>::value_type value_type;
        __destruct_n __d(0);
        unique_ptr<value_type, __destruct_n&> __h(__p.first, __d);


        value_type* __t = __p.first;
        ::new(__t) value_type(std::__1::move(*__first));
        __d.__incr((value_type*)0);
        ++__t;
        _ForwardIterator __i = __first;
        while (++__i != __last)
        {
            if (__pred(*__i))
            {
                *__first = std::__1::move(*__i);
                ++__first;
            }
            else
            {
                ::new(__t) value_type(std::__1::move(*__i));
                __d.__incr((value_type*)0);
                ++__t;
            }
        }


        __i = __first;
        for (value_type* __t2 = __p.first; __t2 < __t; ++__t2, ++__i)
            *__i = std::__1::move(*__t2);

        return __first;
    }


    _ForwardIterator __m = __first;
    _Distance __len2 = __len / 2;
    std::__1::advance(__m, __len2);



    typedef typename add_lvalue_reference<_Predicate>::type _PredRef;
    _ForwardIterator __first_false = __stable_partition<_PredRef>(__first, __m, __pred, __len2, __p, __fit);



    _ForwardIterator __m1 = __m;
    _ForwardIterator __second_false = __last;
    _Distance __len_half = __len - __len2;
    while (__pred(*__m1))
    {
        if (++__m1 == __last)
            goto __second_half_done;
        --__len_half;
    }


    __second_false = __stable_partition<_PredRef>(__m1, __last, __pred, __len_half, __p, __fit);
__second_half_done:


    return std::__1::rotate(__first_false, __m, __second_false);


}

struct __return_temporary_buffer
{
    template <class _Tp>
    __attribute__ ((__visibility__("hidden"), __always_inline__)) void operator()(_Tp* __p) const {std::__1::return_temporary_buffer(__p);}
};

template <class _Predicate, class _ForwardIterator>
_ForwardIterator
__stable_partition(_ForwardIterator __first, _ForwardIterator __last, _Predicate __pred,
                   forward_iterator_tag)
{
    const unsigned __alloc_limit = 3;

    while (true)
    {
        if (__first == __last)
            return __first;
        if (!__pred(*__first))
            break;
        ++__first;
    }


    typedef typename iterator_traits<_ForwardIterator>::difference_type difference_type;
    typedef typename iterator_traits<_ForwardIterator>::value_type value_type;
    difference_type __len = std::__1::distance(__first, __last);
    pair<value_type*, ptrdiff_t> __p(0, 0);
    unique_ptr<value_type, __return_temporary_buffer> __h;
    if (__len >= __alloc_limit)
    {
        __p = std::__1::get_temporary_buffer<value_type>(__len);
        __h.reset(__p.first);
    }
    return __stable_partition<typename add_lvalue_reference<_Predicate>::type>
                             (__first, __last, __pred, __len, __p, forward_iterator_tag());
}

template <class _Predicate, class _BidirectionalIterator, class _Distance, class _Pair>
_BidirectionalIterator
__stable_partition(_BidirectionalIterator __first, _BidirectionalIterator __last, _Predicate __pred,
                   _Distance __len, _Pair __p, bidirectional_iterator_tag __bit)
{



    if (__len == 2)
    {
        swap(*__first, *__last);
        return __last;
    }
    if (__len == 3)
    {
        _BidirectionalIterator __m = __first;
        if (__pred(*++__m))
        {
            swap(*__first, *__m);
            swap(*__m, *__last);
            return __last;
        }
        swap(*__m, *__last);
        swap(*__first, *__m);
        return __m;
    }
    if (__len <= __p.second)
    {
        typedef typename iterator_traits<_BidirectionalIterator>::value_type value_type;
        __destruct_n __d(0);
        unique_ptr<value_type, __destruct_n&> __h(__p.first, __d);


        value_type* __t = __p.first;
        ::new(__t) value_type(std::__1::move(*__first));
        __d.__incr((value_type*)0);
        ++__t;
        _BidirectionalIterator __i = __first;
        while (++__i != __last)
        {
            if (__pred(*__i))
            {
                *__first = std::__1::move(*__i);
                ++__first;
            }
            else
            {
                ::new(__t) value_type(std::__1::move(*__i));
                __d.__incr((value_type*)0);
                ++__t;
            }
        }

        *__first = std::__1::move(*__i);
        __i = ++__first;


        for (value_type* __t2 = __p.first; __t2 < __t; ++__t2, ++__i)
            *__i = std::__1::move(*__t2);

        return __first;
    }


    _BidirectionalIterator __m = __first;
    _Distance __len2 = __len / 2;
    std::__1::advance(__m, __len2);



    _BidirectionalIterator __m1 = __m;
    _BidirectionalIterator __first_false = __first;
    _Distance __len_half = __len2;
    while (!__pred(*--__m1))
    {
        if (__m1 == __first)
            goto __first_half_done;
        --__len_half;
    }


    typedef typename add_lvalue_reference<_Predicate>::type _PredRef;
    __first_false = __stable_partition<_PredRef>(__first, __m1, __pred, __len_half, __p, __bit);
__first_half_done:



    __m1 = __m;
    _BidirectionalIterator __second_false = __last;
    ++__second_false;
    __len_half = __len - __len2;
    while (__pred(*__m1))
    {
        if (++__m1 == __last)
            goto __second_half_done;
        --__len_half;
    }


    __second_false = __stable_partition<_PredRef>(__m1, __last, __pred, __len_half, __p, __bit);
__second_half_done:


    return std::__1::rotate(__first_false, __m, __second_false);


}

template <class _Predicate, class _BidirectionalIterator>
_BidirectionalIterator
__stable_partition(_BidirectionalIterator __first, _BidirectionalIterator __last, _Predicate __pred,
                   bidirectional_iterator_tag)
{
    typedef typename iterator_traits<_BidirectionalIterator>::difference_type difference_type;
    typedef typename iterator_traits<_BidirectionalIterator>::value_type value_type;
    const difference_type __alloc_limit = 4;

    while (true)
    {
        if (__first == __last)
            return __first;
        if (!__pred(*__first))
            break;
        ++__first;
    }


    do
    {
        if (__first == --__last)
            return __first;
    } while (!__pred(*__last));




    difference_type __len = std::__1::distance(__first, __last) + 1;
    pair<value_type*, ptrdiff_t> __p(0, 0);
    unique_ptr<value_type, __return_temporary_buffer> __h;
    if (__len >= __alloc_limit)
    {
        __p = std::__1::get_temporary_buffer<value_type>(__len);
        __h.reset(__p.first);
    }
    return __stable_partition<typename add_lvalue_reference<_Predicate>::type>
                             (__first, __last, __pred, __len, __p, bidirectional_iterator_tag());
}

template <class _ForwardIterator, class _Predicate>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ForwardIterator
stable_partition(_ForwardIterator __first, _ForwardIterator __last, _Predicate __pred)
{
    return __stable_partition<typename add_lvalue_reference<_Predicate>::type>
                             (__first, __last, __pred, typename iterator_traits<_ForwardIterator>::iterator_category());
}



template <class _ForwardIterator, class _Compare>
_ForwardIterator
is_sorted_until(_ForwardIterator __first, _ForwardIterator __last, _Compare __comp)
{
    if (__first != __last)
    {
        _ForwardIterator __i = __first;
        while (++__i != __last)
        {
            if (__comp(*__i, *__first))
                return __i;
            __first = __i;
        }
    }
    return __last;
}

template<class _ForwardIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ForwardIterator
is_sorted_until(_ForwardIterator __first, _ForwardIterator __last)
{
    return std::__1::is_sorted_until(__first, __last, __less<typename iterator_traits<_ForwardIterator>::value_type>());
}



template <class _ForwardIterator, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
is_sorted(_ForwardIterator __first, _ForwardIterator __last, _Compare __comp)
{
    return std::__1::is_sorted_until(__first, __last, __comp) == __last;
}

template<class _ForwardIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
is_sorted(_ForwardIterator __first, _ForwardIterator __last)
{
    return std::__1::is_sorted(__first, __last, __less<typename iterator_traits<_ForwardIterator>::value_type>());
}





template <class _Compare, class _ForwardIterator>
unsigned
__sort3(_ForwardIterator __x, _ForwardIterator __y, _ForwardIterator __z, _Compare __c)
{
    unsigned __r = 0;
    if (!__c(*__y, *__x))
    {
        if (!__c(*__z, *__y))
            return __r;

        swap(*__y, *__z);
        __r = 1;
        if (__c(*__y, *__x))
        {
            swap(*__x, *__y);
            __r = 2;
        }
        return __r;
    }
    if (__c(*__z, *__y))
    {
        swap(*__x, *__z);
        __r = 1;
        return __r;
    }
    swap(*__x, *__y);
    __r = 1;
    if (__c(*__z, *__y))
    {
        swap(*__y, *__z);
        __r = 2;
    }
    return __r;
}



template <class _Compare, class _ForwardIterator>
unsigned
__sort4(_ForwardIterator __x1, _ForwardIterator __x2, _ForwardIterator __x3,
            _ForwardIterator __x4, _Compare __c)
{
    unsigned __r = __sort3<_Compare>(__x1, __x2, __x3, __c);
    if (__c(*__x4, *__x3))
    {
        swap(*__x3, *__x4);
        ++__r;
        if (__c(*__x3, *__x2))
        {
            swap(*__x2, *__x3);
            ++__r;
            if (__c(*__x2, *__x1))
            {
                swap(*__x1, *__x2);
                ++__r;
            }
        }
    }
    return __r;
}



template <class _Compare, class _ForwardIterator>
unsigned
__sort5(_ForwardIterator __x1, _ForwardIterator __x2, _ForwardIterator __x3,
            _ForwardIterator __x4, _ForwardIterator __x5, _Compare __c)
{
    unsigned __r = __sort4<_Compare>(__x1, __x2, __x3, __x4, __c);
    if (__c(*__x5, *__x4))
    {
        swap(*__x4, *__x5);
        ++__r;
        if (__c(*__x4, *__x3))
        {
            swap(*__x3, *__x4);
            ++__r;
            if (__c(*__x3, *__x2))
            {
                swap(*__x2, *__x3);
                ++__r;
                if (__c(*__x2, *__x1))
                {
                    swap(*__x1, *__x2);
                    ++__r;
                }
            }
        }
    }
    return __r;
}


template <class _Compare, class _BirdirectionalIterator>
void
__selection_sort(_BirdirectionalIterator __first, _BirdirectionalIterator __last, _Compare __comp)
{
    _BirdirectionalIterator __lm1 = __last;
    for (--__lm1; __first != __lm1; ++__first)
    {
        _BirdirectionalIterator __i = std::__1::min_element<_BirdirectionalIterator,
                                                        typename add_lvalue_reference<_Compare>::type>
                                                       (__first, __last, __comp);
        if (__i != __first)
            swap(*__first, *__i);
    }
}

template <class _Compare, class _BirdirectionalIterator>
void
__insertion_sort(_BirdirectionalIterator __first, _BirdirectionalIterator __last, _Compare __comp)
{
    typedef typename iterator_traits<_BirdirectionalIterator>::value_type value_type;
    if (__first != __last)
    {
        _BirdirectionalIterator __i = __first;
        for (++__i; __i != __last; ++__i)
        {
            _BirdirectionalIterator __j = __i;
            value_type __t(std::__1::move(*__j));
            for (_BirdirectionalIterator __k = __i; __k != __first && __comp(__t, *--__k); --__j)
                *__j = std::__1::move(*__k);
            *__j = std::__1::move(__t);
        }
    }
}

template <class _Compare, class _RandomAccessIterator>
void
__insertion_sort_3(_RandomAccessIterator __first, _RandomAccessIterator __last, _Compare __comp)
{
    typedef typename iterator_traits<_RandomAccessIterator>::value_type value_type;
    _RandomAccessIterator __j = __first+2;
    __sort3<_Compare>(__first, __first+1, __j, __comp);
    for (_RandomAccessIterator __i = __j+1; __i != __last; ++__i)
    {
        if (__comp(*__i, *__j))
        {
            value_type __t(std::__1::move(*__i));
            _RandomAccessIterator __k = __j;
            __j = __i;
            do
            {
                *__j = std::__1::move(*__k);
                __j = __k;
            } while (__j != __first && __comp(__t, *--__k));
            *__j = std::__1::move(__t);
        }
        __j = __i;
    }
}

template <class _Compare, class _RandomAccessIterator>
bool
__insertion_sort_incomplete(_RandomAccessIterator __first, _RandomAccessIterator __last, _Compare __comp)
{
    switch (__last - __first)
    {
    case 0:
    case 1:
        return true;
    case 2:
        if (__comp(*--__last, *__first))
            swap(*__first, *__last);
        return true;
    case 3:
        std::__1::__sort3<_Compare>(__first, __first+1, --__last, __comp);
        return true;
    case 4:
        std::__1::__sort4<_Compare>(__first, __first+1, __first+2, --__last, __comp);
        return true;
    case 5:
        std::__1::__sort5<_Compare>(__first, __first+1, __first+2, __first+3, --__last, __comp);
        return true;
    }
    typedef typename iterator_traits<_RandomAccessIterator>::value_type value_type;
    _RandomAccessIterator __j = __first+2;
    __sort3<_Compare>(__first, __first+1, __j, __comp);
    const unsigned __limit = 8;
    unsigned __count = 0;
    for (_RandomAccessIterator __i = __j+1; __i != __last; ++__i)
    {
        if (__comp(*__i, *__j))
        {
            value_type __t(std::__1::move(*__i));
            _RandomAccessIterator __k = __j;
            __j = __i;
            do
            {
                *__j = std::__1::move(*__k);
                __j = __k;
            } while (__j != __first && __comp(__t, *--__k));
            *__j = std::__1::move(__t);
            if (++__count == __limit)
                return ++__i == __last;
        }
        __j = __i;
    }
    return true;
}

template <class _Compare, class _BirdirectionalIterator>
void
__insertion_sort_move(_BirdirectionalIterator __first1, _BirdirectionalIterator __last1,
                      typename iterator_traits<_BirdirectionalIterator>::value_type* __first2, _Compare __comp)
{
    typedef typename iterator_traits<_BirdirectionalIterator>::value_type value_type;
    if (__first1 != __last1)
    {
        __destruct_n __d(0);
        unique_ptr<value_type, __destruct_n&> __h(__first2, __d);
        value_type* __last2 = __first2;
        ::new(__last2) value_type(std::__1::move(*__first1));
        __d.__incr((value_type*)0);
        for (++__last2; ++__first1 != __last1; ++__last2)
        {
            value_type* __j2 = __last2;
            value_type* __i2 = __j2;
            if (__comp(*__first1, *--__i2))
            {
                ::new(__j2) value_type(std::__1::move(*__i2));
                __d.__incr((value_type*)0);
                for (--__j2; __i2 != __first2 && __comp(*__first1, *--__i2); --__j2)
                    *__j2 = std::__1::move(*__i2);
                *__j2 = std::__1::move(*__first1);
            }
            else
            {
                ::new(__j2) value_type(std::__1::move(*__first1));
                __d.__incr((value_type*)0);
            }
        }
        __h.release();
    }
}

template <class _Compare, class _RandomAccessIterator>
void
__sort(_RandomAccessIterator __first, _RandomAccessIterator __last, _Compare __comp)
{

    typedef typename iterator_traits<_RandomAccessIterator>::difference_type difference_type;
    typedef typename iterator_traits<_RandomAccessIterator>::value_type value_type;
    const difference_type __limit = is_trivially_copy_constructible<value_type>::value &&
                                    is_trivially_copy_assignable<value_type>::value ? 30 : 6;
    while (true)
    {
    __restart:
        difference_type __len = __last - __first;
        switch (__len)
        {
        case 0:
        case 1:
            return;
        case 2:
            if (__comp(*--__last, *__first))
                swap(*__first, *__last);
            return;
        case 3:
            std::__1::__sort3<_Compare>(__first, __first+1, --__last, __comp);
            return;
        case 4:
            std::__1::__sort4<_Compare>(__first, __first+1, __first+2, --__last, __comp);
            return;
        case 5:
            std::__1::__sort5<_Compare>(__first, __first+1, __first+2, __first+3, --__last, __comp);
            return;
        }
        if (__len <= __limit)
        {
            std::__1::__insertion_sort_3<_Compare>(__first, __last, __comp);
            return;
        }

        _RandomAccessIterator __m = __first;
        _RandomAccessIterator __lm1 = __last;
        --__lm1;
        unsigned __n_swaps;
        {
        difference_type __delta;
        if (__len >= 1000)
        {
            __delta = __len/2;
            __m += __delta;
            __delta /= 2;
            __n_swaps = std::__1::__sort5<_Compare>(__first, __first + __delta, __m, __m+__delta, __lm1, __comp);
        }
        else
        {
            __delta = __len/2;
            __m += __delta;
            __n_swaps = std::__1::__sort3<_Compare>(__first, __m, __lm1, __comp);
        }
        }



        _RandomAccessIterator __i = __first;
        _RandomAccessIterator __j = __lm1;



        if (!__comp(*__i, *__m))
        {


            while (true)
            {
                if (__i == --__j)
                {


                    ++__i;
                    __j = __last;
                    if (!__comp(*__first, *--__j))
                    {
                        while (true)
                        {
                            if (__i == __j)
                                return;
                            if (__comp(*__first, *__i))
                            {
                                swap(*__i, *__j);
                                ++__n_swaps;
                                ++__i;
                                break;
                            }
                            ++__i;
                        }
                    }

                    if (__i == __j)
                        return;
                    while (true)
                    {
                        while (!__comp(*__first, *__i))
                            ++__i;
                        while (__comp(*__first, *--__j))
                            ;
                        if (__i >= __j)
                            break;
                        swap(*__i, *__j);
                        ++__n_swaps;
                        ++__i;
                    }



                    __first = __i;
                    goto __restart;
                }
                if (__comp(*__j, *__m))
                {
                    swap(*__i, *__j);
                    ++__n_swaps;
                    break;
                }
            }
        }

        ++__i;


        if (__i < __j)
        {


            while (true)
            {

                while (__comp(*__i, *__m))
                    ++__i;

                while (!__comp(*--__j, *__m))
                    ;
                if (__i > __j)
                    break;
                swap(*__i, *__j);
                ++__n_swaps;


                if (__m == __i)
                    __m = __j;
                ++__i;
            }
        }

        if (__i != __m && __comp(*__m, *__i))
        {
            swap(*__i, *__m);
            ++__n_swaps;
        }


        if (__n_swaps == 0)
        {
            bool __fs = std::__1::__insertion_sort_incomplete<_Compare>(__first, __i, __comp);
            if (std::__1::__insertion_sort_incomplete<_Compare>(__i+1, __last, __comp))
            {
                if (__fs)
                    return;
                __last = __i;
                continue;
            }
            else
            {
                if (__fs)
                {
                    __first = ++__i;
                    continue;
                }
            }
        }

        if (__i - __first < __last - __i)
        {
            std::__1::__sort<_Compare>(__first, __i, __comp);

            __first = ++__i;
        }
        else
        {
            std::__1::__sort<_Compare>(__i+1, __last, __comp);

            __last = __i;
        }
    }
}


template <class _RandomAccessIterator, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
sort(_RandomAccessIterator __first, _RandomAccessIterator __last, _Compare __comp)
{





    typedef typename add_lvalue_reference<_Compare>::type _Comp_ref;
    __sort<_Comp_ref>(__first, __last, __comp);

}

template <class _RandomAccessIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
sort(_RandomAccessIterator __first, _RandomAccessIterator __last)
{
    std::__1::sort(__first, __last, __less<typename iterator_traits<_RandomAccessIterator>::value_type>());
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
sort(_Tp** __first, _Tp** __last)
{
    std::__1::sort((size_t*)__first, (size_t*)__last, __less<size_t>());
}

template <class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
sort(__wrap_iter<_Tp*> __first, __wrap_iter<_Tp*> __last)
{
    std::__1::sort(__first.base(), __last.base());
}

template <class _Tp, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
sort(__wrap_iter<_Tp*> __first, __wrap_iter<_Tp*> __last, _Compare __comp)
{
    typedef typename add_lvalue_reference<_Compare>::type _Comp_ref;
    std::__1::sort<_Tp*, _Comp_ref>(__first.base(), __last.base(), __comp);
}





extern template __attribute__ ((__visibility__("default"))) void __sort<__less<char>&, char*>(char*, char*, __less<char>&);
extern template __attribute__ ((__visibility__("default"))) void __sort<__less<wchar_t>&, wchar_t*>(wchar_t*, wchar_t*, __less<wchar_t>&);
extern template __attribute__ ((__visibility__("default"))) void __sort<__less<signed char>&, signed char*>(signed char*, signed char*, __less<signed char>&);
extern template __attribute__ ((__visibility__("default"))) void __sort<__less<unsigned char>&, unsigned char*>(unsigned char*, unsigned char*, __less<unsigned char>&);
extern template __attribute__ ((__visibility__("default"))) void __sort<__less<short>&, short*>(short*, short*, __less<short>&);
extern template __attribute__ ((__visibility__("default"))) void __sort<__less<unsigned short>&, unsigned short*>(unsigned short*, unsigned short*, __less<unsigned short>&);
extern template __attribute__ ((__visibility__("default"))) void __sort<__less<int>&, int*>(int*, int*, __less<int>&);
extern template __attribute__ ((__visibility__("default"))) void __sort<__less<unsigned>&, unsigned*>(unsigned*, unsigned*, __less<unsigned>&);
extern template __attribute__ ((__visibility__("default"))) void __sort<__less<long>&, long*>(long*, long*, __less<long>&);
extern template __attribute__ ((__visibility__("default"))) void __sort<__less<unsigned long>&, unsigned long*>(unsigned long*, unsigned long*, __less<unsigned long>&);
extern template __attribute__ ((__visibility__("default"))) void __sort<__less<long long>&, long long*>(long long*, long long*, __less<long long>&);
extern template __attribute__ ((__visibility__("default"))) void __sort<__less<unsigned long long>&, unsigned long long*>(unsigned long long*, unsigned long long*, __less<unsigned long long>&);
extern template __attribute__ ((__visibility__("default"))) void __sort<__less<float>&, float*>(float*, float*, __less<float>&);
extern template __attribute__ ((__visibility__("default"))) void __sort<__less<double>&, double*>(double*, double*, __less<double>&);
extern template __attribute__ ((__visibility__("default"))) void __sort<__less<long double>&, long double*>(long double*, long double*, __less<long double>&);

extern template __attribute__ ((__visibility__("default"))) bool __insertion_sort_incomplete<__less<char>&, char*>(char*, char*, __less<char>&);
extern template __attribute__ ((__visibility__("default"))) bool __insertion_sort_incomplete<__less<wchar_t>&, wchar_t*>(wchar_t*, wchar_t*, __less<wchar_t>&);
extern template __attribute__ ((__visibility__("default"))) bool __insertion_sort_incomplete<__less<signed char>&, signed char*>(signed char*, signed char*, __less<signed char>&);
extern template __attribute__ ((__visibility__("default"))) bool __insertion_sort_incomplete<__less<unsigned char>&, unsigned char*>(unsigned char*, unsigned char*, __less<unsigned char>&);
extern template __attribute__ ((__visibility__("default"))) bool __insertion_sort_incomplete<__less<short>&, short*>(short*, short*, __less<short>&);
extern template __attribute__ ((__visibility__("default"))) bool __insertion_sort_incomplete<__less<unsigned short>&, unsigned short*>(unsigned short*, unsigned short*, __less<unsigned short>&);
extern template __attribute__ ((__visibility__("default"))) bool __insertion_sort_incomplete<__less<int>&, int*>(int*, int*, __less<int>&);
extern template __attribute__ ((__visibility__("default"))) bool __insertion_sort_incomplete<__less<unsigned>&, unsigned*>(unsigned*, unsigned*, __less<unsigned>&);
extern template __attribute__ ((__visibility__("default"))) bool __insertion_sort_incomplete<__less<long>&, long*>(long*, long*, __less<long>&);
extern template __attribute__ ((__visibility__("default"))) bool __insertion_sort_incomplete<__less<unsigned long>&, unsigned long*>(unsigned long*, unsigned long*, __less<unsigned long>&);
extern template __attribute__ ((__visibility__("default"))) bool __insertion_sort_incomplete<__less<long long>&, long long*>(long long*, long long*, __less<long long>&);
extern template __attribute__ ((__visibility__("default"))) bool __insertion_sort_incomplete<__less<unsigned long long>&, unsigned long long*>(unsigned long long*, unsigned long long*, __less<unsigned long long>&);
extern template __attribute__ ((__visibility__("default"))) bool __insertion_sort_incomplete<__less<float>&, float*>(float*, float*, __less<float>&);
extern template __attribute__ ((__visibility__("default"))) bool __insertion_sort_incomplete<__less<double>&, double*>(double*, double*, __less<double>&);
extern template __attribute__ ((__visibility__("default"))) bool __insertion_sort_incomplete<__less<long double>&, long double*>(long double*, long double*, __less<long double>&);

extern template __attribute__ ((__visibility__("default"))) unsigned __sort5<__less<long double>&, long double*>(long double*, long double*, long double*, long double*, long double*, __less<long double>&);






template <class _Compare, class _ForwardIterator, class _Tp>
_ForwardIterator
__lower_bound(_ForwardIterator __first, _ForwardIterator __last, const _Tp& __value_, _Compare __comp)
{
    typedef typename iterator_traits<_ForwardIterator>::difference_type difference_type;
    difference_type __len = std::__1::distance(__first, __last);
    while (__len != 0)
    {
        difference_type __l2 = __len / 2;
        _ForwardIterator __m = __first;
        std::__1::advance(__m, __l2);
        if (__comp(*__m, __value_))
        {
            __first = ++__m;
            __len -= __l2 + 1;
        }
        else
            __len = __l2;
    }
    return __first;
}

template <class _ForwardIterator, class _Tp, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ForwardIterator
lower_bound(_ForwardIterator __first, _ForwardIterator __last, const _Tp& __value_, _Compare __comp)
{





    typedef typename add_lvalue_reference<_Compare>::type _Comp_ref;
    return __lower_bound<_Comp_ref>(__first, __last, __value_, __comp);

}

template <class _ForwardIterator, class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ForwardIterator
lower_bound(_ForwardIterator __first, _ForwardIterator __last, const _Tp& __value_)
{
    return std::__1::lower_bound(__first, __last, __value_,
                             __less<typename iterator_traits<_ForwardIterator>::value_type, _Tp>());
}



template <class _Compare, class _ForwardIterator, class _Tp>
_ForwardIterator
__upper_bound(_ForwardIterator __first, _ForwardIterator __last, const _Tp& __value_, _Compare __comp)
{
    typedef typename iterator_traits<_ForwardIterator>::difference_type difference_type;
    difference_type __len = std::__1::distance(__first, __last);
    while (__len != 0)
    {
        difference_type __l2 = __len / 2;
        _ForwardIterator __m = __first;
        std::__1::advance(__m, __l2);
        if (__comp(__value_, *__m))
            __len = __l2;
        else
        {
            __first = ++__m;
            __len -= __l2 + 1;
        }
    }
    return __first;
}

template <class _ForwardIterator, class _Tp, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ForwardIterator
upper_bound(_ForwardIterator __first, _ForwardIterator __last, const _Tp& __value_, _Compare __comp)
{





    typedef typename add_lvalue_reference<_Compare>::type _Comp_ref;
    return __upper_bound<_Comp_ref>(__first, __last, __value_, __comp);

}

template <class _ForwardIterator, class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_ForwardIterator
upper_bound(_ForwardIterator __first, _ForwardIterator __last, const _Tp& __value_)
{
    return std::__1::upper_bound(__first, __last, __value_,
                             __less<_Tp, typename iterator_traits<_ForwardIterator>::value_type>());
}



template <class _Compare, class _ForwardIterator, class _Tp>
pair<_ForwardIterator, _ForwardIterator>
__equal_range(_ForwardIterator __first, _ForwardIterator __last, const _Tp& __value_, _Compare __comp)
{
    typedef typename iterator_traits<_ForwardIterator>::difference_type difference_type;
    difference_type __len = std::__1::distance(__first, __last);
    while (__len != 0)
    {
        difference_type __l2 = __len / 2;
        _ForwardIterator __m = __first;
        std::__1::advance(__m, __l2);
        if (__comp(*__m, __value_))
        {
            __first = ++__m;
            __len -= __l2 + 1;
        }
        else if (__comp(__value_, *__m))
        {
            __last = __m;
            __len = __l2;
        }
        else
        {
            _ForwardIterator __mp1 = __m;
            return pair<_ForwardIterator, _ForwardIterator>
                   (
                      __lower_bound<_Compare>(__first, __m, __value_, __comp),
                      __upper_bound<_Compare>(++__mp1, __last, __value_, __comp)
                   );
        }
    }
    return pair<_ForwardIterator, _ForwardIterator>(__first, __first);
}

template <class _ForwardIterator, class _Tp, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
pair<_ForwardIterator, _ForwardIterator>
equal_range(_ForwardIterator __first, _ForwardIterator __last, const _Tp& __value_, _Compare __comp)
{





    typedef typename add_lvalue_reference<_Compare>::type _Comp_ref;
    return __equal_range<_Comp_ref>(__first, __last, __value_, __comp);

}

template <class _ForwardIterator, class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
pair<_ForwardIterator, _ForwardIterator>
equal_range(_ForwardIterator __first, _ForwardIterator __last, const _Tp& __value_)
{
    return std::__1::equal_range(__first, __last, __value_,
                             __less<typename iterator_traits<_ForwardIterator>::value_type, _Tp>());
}



template <class _Compare, class _ForwardIterator, class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
__binary_search(_ForwardIterator __first, _ForwardIterator __last, const _Tp& __value_, _Compare __comp)
{
    __first = __lower_bound<_Compare>(__first, __last, __value_, __comp);
    return __first != __last && !__comp(__value_, *__first);
}

template <class _ForwardIterator, class _Tp, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
binary_search(_ForwardIterator __first, _ForwardIterator __last, const _Tp& __value_, _Compare __comp)
{





    typedef typename add_lvalue_reference<_Compare>::type _Comp_ref;
    return __binary_search<_Comp_ref>(__first, __last, __value_, __comp);

}

template <class _ForwardIterator, class _Tp>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
binary_search(_ForwardIterator __first, _ForwardIterator __last, const _Tp& __value_)
{
    return std::__1::binary_search(__first, __last, __value_,
                             __less<typename iterator_traits<_ForwardIterator>::value_type, _Tp>());
}



template <class _Compare, class _InputIterator1, class _InputIterator2, class _OutputIterator>
_OutputIterator
__merge(_InputIterator1 __first1, _InputIterator1 __last1,
        _InputIterator2 __first2, _InputIterator2 __last2, _OutputIterator __result, _Compare __comp)
{
    for (; __first1 != __last1; ++__result)
    {
        if (__first2 == __last2)
            return std::__1::copy(__first1, __last1, __result);
        if (__comp(*__first2, *__first1))
        {
            *__result = *__first2;
            ++__first2;
        }
        else
        {
            *__result = *__first1;
            ++__first1;
        }
    }
    return std::__1::copy(__first2, __last2, __result);
}

template <class _InputIterator1, class _InputIterator2, class _OutputIterator, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
merge(_InputIterator1 __first1, _InputIterator1 __last1,
      _InputIterator2 __first2, _InputIterator2 __last2, _OutputIterator __result, _Compare __comp)
{





    typedef typename add_lvalue_reference<_Compare>::type _Comp_ref;
    return std::__1::__merge<_Comp_ref>(__first1, __last1, __first2, __last2, __result, __comp);

}

template <class _InputIterator1, class _InputIterator2, class _OutputIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
merge(_InputIterator1 __first1, _InputIterator1 __last1,
      _InputIterator2 __first2, _InputIterator2 __last2, _OutputIterator __result)
{
    typedef typename iterator_traits<_InputIterator1>::value_type __v1;
    typedef typename iterator_traits<_InputIterator2>::value_type __v2;
    return merge(__first1, __last1, __first2, __last2, __result, __less<__v1, __v2>());
}



template <class _Compare, class _InputIterator1, class _InputIterator2,
          class _OutputIterator>
void __half_inplace_merge(_InputIterator1 __first1, _InputIterator1 __last1,
                          _InputIterator2 __first2, _InputIterator2 __last2,
                          _OutputIterator __result, _Compare __comp)
{
    for (; __first1 != __last1; ++__result)
    {
        if (__first2 == __last2)
        {
            std::__1::move(__first1, __last1, __result);
            return;
        }

        if (__comp(*__first2, *__first1))
        {
            *__result = std::__1::move(*__first2);
            ++__first2;
        }
        else
        {
            *__result = std::__1::move(*__first1);
            ++__first1;
        }
    }

}

template <class _Compare, class _BidirectionalIterator>
void
__buffered_inplace_merge(_BidirectionalIterator __first, _BidirectionalIterator __middle, _BidirectionalIterator __last,
                _Compare __comp, typename iterator_traits<_BidirectionalIterator>::difference_type __len1,
                                 typename iterator_traits<_BidirectionalIterator>::difference_type __len2,
                typename iterator_traits<_BidirectionalIterator>::value_type* __buff)
{
    typedef typename iterator_traits<_BidirectionalIterator>::value_type value_type;
    __destruct_n __d(0);
    unique_ptr<value_type, __destruct_n&> __h2(__buff, __d);
    if (__len1 <= __len2)
    {
        value_type* __p = __buff;
        for (_BidirectionalIterator __i = __first; __i != __middle; __d.__incr((value_type*)0), (void) ++__i, ++__p)
            ::new(__p) value_type(std::__1::move(*__i));
        __half_inplace_merge(__buff, __p, __middle, __last, __first, __comp);
    }
    else
    {
        value_type* __p = __buff;
        for (_BidirectionalIterator __i = __middle; __i != __last; __d.__incr((value_type*)0), (void) ++__i, ++__p)
            ::new(__p) value_type(std::__1::move(*__i));
        typedef reverse_iterator<_BidirectionalIterator> _RBi;
        typedef reverse_iterator<value_type*> _Rv;
        __half_inplace_merge(_Rv(__p), _Rv(__buff),
                             _RBi(__middle), _RBi(__first),
                             _RBi(__last), __negate<_Compare>(__comp));
    }
}

template <class _Compare, class _BidirectionalIterator>
void
__inplace_merge(_BidirectionalIterator __first, _BidirectionalIterator __middle, _BidirectionalIterator __last,
                _Compare __comp, typename iterator_traits<_BidirectionalIterator>::difference_type __len1,
                                 typename iterator_traits<_BidirectionalIterator>::difference_type __len2,
                typename iterator_traits<_BidirectionalIterator>::value_type* __buff, ptrdiff_t __buff_size)
{
    typedef typename iterator_traits<_BidirectionalIterator>::difference_type difference_type;
    while (true)
    {

        if (__len2 == 0)
            return;
        if (__len1 <= __buff_size || __len2 <= __buff_size)
            return __buffered_inplace_merge<_Compare>
                   (__first, __middle, __last, __comp, __len1, __len2, __buff);

        for (; true; ++__first, (void) --__len1)
        {
            if (__len1 == 0)
                return;
            if (__comp(*__middle, *__first))
                break;
        }
# 4466 "/opt/intel/sgxsdk/include/libcxx/algorithm" 3
        _BidirectionalIterator __m1;
        _BidirectionalIterator __m2;
        difference_type __len11;
        difference_type __len21;

        if (__len1 < __len2)
        {
            __len21 = __len2 / 2;
            __m2 = __middle;
            std::__1::advance(__m2, __len21);
            __m1 = __upper_bound<_Compare>(__first, __middle, *__m2, __comp);
            __len11 = std::__1::distance(__first, __m1);
        }
        else
        {
            if (__len1 == 1)
            {

                swap(*__first, *__middle);
                return;
            }

            __len11 = __len1 / 2;
            __m1 = __first;
            std::__1::advance(__m1, __len11);
            __m2 = __lower_bound<_Compare>(__middle, __last, *__m1, __comp);
            __len21 = std::__1::distance(__middle, __m2);
        }
        difference_type __len12 = __len1 - __len11;
        difference_type __len22 = __len2 - __len21;


        __middle = std::__1::rotate(__m1, __middle, __m2);


        if (__len11 + __len21 < __len12 + __len22)
        {
            __inplace_merge<_Compare>(__first, __m1, __middle, __comp, __len11, __len21, __buff, __buff_size);

            __first = __middle;
            __middle = __m2;
            __len1 = __len12;
            __len2 = __len22;
        }
        else
        {
            __inplace_merge<_Compare>(__middle, __m2, __last, __comp, __len12, __len22, __buff, __buff_size);

            __last = __middle;
            __middle = __m1;
            __len1 = __len11;
            __len2 = __len21;
        }
    }
}

template <class _BidirectionalIterator, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
inplace_merge(_BidirectionalIterator __first, _BidirectionalIterator __middle, _BidirectionalIterator __last,
              _Compare __comp)
{
    typedef typename iterator_traits<_BidirectionalIterator>::value_type value_type;
    typedef typename iterator_traits<_BidirectionalIterator>::difference_type difference_type;
    difference_type __len1 = std::__1::distance(__first, __middle);
    difference_type __len2 = std::__1::distance(__middle, __last);
    difference_type __buf_size = std::__1::min(__len1, __len2);
    pair<value_type*, ptrdiff_t> __buf = std::__1::get_temporary_buffer<value_type>(__buf_size);
    unique_ptr<value_type, __return_temporary_buffer> __h(__buf.first);







    typedef typename add_lvalue_reference<_Compare>::type _Comp_ref;
    return std::__1::__inplace_merge<_Comp_ref>(__first, __middle, __last, __comp, __len1, __len2,
                                            __buf.first, __buf.second);

}

template <class _BidirectionalIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
inplace_merge(_BidirectionalIterator __first, _BidirectionalIterator __middle, _BidirectionalIterator __last)
{
    std::__1::inplace_merge(__first, __middle, __last,
                        __less<typename iterator_traits<_BidirectionalIterator>::value_type>());
}



template <class _Compare, class _InputIterator1, class _InputIterator2>
void
__merge_move_construct(_InputIterator1 __first1, _InputIterator1 __last1,
        _InputIterator2 __first2, _InputIterator2 __last2,
        typename iterator_traits<_InputIterator1>::value_type* __result, _Compare __comp)
{
    typedef typename iterator_traits<_InputIterator1>::value_type value_type;
    __destruct_n __d(0);
    unique_ptr<value_type, __destruct_n&> __h(__result, __d);
    for (; true; ++__result)
    {
        if (__first1 == __last1)
        {
            for (; __first2 != __last2; ++__first2, ++__result, __d.__incr((value_type*)0))
                ::new (__result) value_type(std::__1::move(*__first2));
            __h.release();
            return;
        }
        if (__first2 == __last2)
        {
            for (; __first1 != __last1; ++__first1, ++__result, __d.__incr((value_type*)0))
                ::new (__result) value_type(std::__1::move(*__first1));
            __h.release();
            return;
        }
        if (__comp(*__first2, *__first1))
        {
            ::new (__result) value_type(std::__1::move(*__first2));
            __d.__incr((value_type*)0);
            ++__first2;
        }
        else
        {
            ::new (__result) value_type(std::__1::move(*__first1));
            __d.__incr((value_type*)0);
            ++__first1;
        }
    }
}

template <class _Compare, class _InputIterator1, class _InputIterator2, class _OutputIterator>
void
__merge_move_assign(_InputIterator1 __first1, _InputIterator1 __last1,
        _InputIterator2 __first2, _InputIterator2 __last2,
        _OutputIterator __result, _Compare __comp)
{
    for (; __first1 != __last1; ++__result)
    {
        if (__first2 == __last2)
        {
            for (; __first1 != __last1; ++__first1, ++__result)
                *__result = std::__1::move(*__first1);
            return;
        }
        if (__comp(*__first2, *__first1))
        {
            *__result = std::__1::move(*__first2);
            ++__first2;
        }
        else
        {
            *__result = std::__1::move(*__first1);
            ++__first1;
        }
    }
    for (; __first2 != __last2; ++__first2, ++__result)
        *__result = std::__1::move(*__first2);
}

template <class _Compare, class _RandomAccessIterator>
void
__stable_sort(_RandomAccessIterator __first, _RandomAccessIterator __last, _Compare __comp,
              typename iterator_traits<_RandomAccessIterator>::difference_type __len,
              typename iterator_traits<_RandomAccessIterator>::value_type* __buff, ptrdiff_t __buff_size);

template <class _Compare, class _RandomAccessIterator>
void
__stable_sort_move(_RandomAccessIterator __first1, _RandomAccessIterator __last1, _Compare __comp,
                   typename iterator_traits<_RandomAccessIterator>::difference_type __len,
                   typename iterator_traits<_RandomAccessIterator>::value_type* __first2)
{
    typedef typename iterator_traits<_RandomAccessIterator>::value_type value_type;
    switch (__len)
    {
    case 0:
        return;
    case 1:
        ::new(__first2) value_type(std::__1::move(*__first1));
        return;
    case 2:
       __destruct_n __d(0);
        unique_ptr<value_type, __destruct_n&> __h2(__first2, __d);
         if (__comp(*--__last1, *__first1))
        {
            ::new(__first2) value_type(std::__1::move(*__last1));
            __d.__incr((value_type*)0);
            ++__first2;
            ::new(__first2) value_type(std::__1::move(*__first1));
        }
        else
        {
            ::new(__first2) value_type(std::__1::move(*__first1));
            __d.__incr((value_type*)0);
            ++__first2;
            ::new(__first2) value_type(std::__1::move(*__last1));
        }
        __h2.release();
        return;
    }
    if (__len <= 8)
    {
        __insertion_sort_move<_Compare>(__first1, __last1, __first2, __comp);
        return;
    }
    typename iterator_traits<_RandomAccessIterator>::difference_type __l2 = __len / 2;
    _RandomAccessIterator __m = __first1 + __l2;
    __stable_sort<_Compare>(__first1, __m, __comp, __l2, __first2, __l2);
    __stable_sort<_Compare>(__m, __last1, __comp, __len - __l2, __first2 + __l2, __len - __l2);
    __merge_move_construct<_Compare>(__first1, __m, __m, __last1, __first2, __comp);
}

template <class _Tp>
struct __stable_sort_switch
{
    static const unsigned value = 128*is_trivially_copy_assignable<_Tp>::value;
};

template <class _Compare, class _RandomAccessIterator>
void
__stable_sort(_RandomAccessIterator __first, _RandomAccessIterator __last, _Compare __comp,
              typename iterator_traits<_RandomAccessIterator>::difference_type __len,
              typename iterator_traits<_RandomAccessIterator>::value_type* __buff, ptrdiff_t __buff_size)
{
    typedef typename iterator_traits<_RandomAccessIterator>::value_type value_type;
    typedef typename iterator_traits<_RandomAccessIterator>::difference_type difference_type;
    switch (__len)
    {
    case 0:
    case 1:
        return;
    case 2:
        if (__comp(*--__last, *__first))
            swap(*__first, *__last);
        return;
    }
    if (__len <= static_cast<difference_type>(__stable_sort_switch<value_type>::value))
    {
        __insertion_sort<_Compare>(__first, __last, __comp);
        return;
    }
    typename iterator_traits<_RandomAccessIterator>::difference_type __l2 = __len / 2;
    _RandomAccessIterator __m = __first + __l2;
    if (__len <= __buff_size)
    {
        __destruct_n __d(0);
        unique_ptr<value_type, __destruct_n&> __h2(__buff, __d);
        __stable_sort_move<_Compare>(__first, __m, __comp, __l2, __buff);
        __d.__set(__l2, (value_type*)0);
        __stable_sort_move<_Compare>(__m, __last, __comp, __len - __l2, __buff + __l2);
        __d.__set(__len, (value_type*)0);
        __merge_move_assign<_Compare>(__buff, __buff + __l2, __buff + __l2, __buff + __len, __first, __comp);





        return;
    }
    __stable_sort<_Compare>(__first, __m, __comp, __l2, __buff, __buff_size);
    __stable_sort<_Compare>(__m, __last, __comp, __len - __l2, __buff, __buff_size);
    __inplace_merge<_Compare>(__first, __m, __last, __comp, __l2, __len - __l2, __buff, __buff_size);
}

template <class _RandomAccessIterator, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
stable_sort(_RandomAccessIterator __first, _RandomAccessIterator __last, _Compare __comp)
{
    typedef typename iterator_traits<_RandomAccessIterator>::value_type value_type;
    typedef typename iterator_traits<_RandomAccessIterator>::difference_type difference_type;
    difference_type __len = __last - __first;
    pair<value_type*, ptrdiff_t> __buf(0, 0);
    unique_ptr<value_type, __return_temporary_buffer> __h;
    if (__len > static_cast<difference_type>(__stable_sort_switch<value_type>::value))
    {
        __buf = std::__1::get_temporary_buffer<value_type>(__len);
        __h.reset(__buf.first);
    }





    typedef typename add_lvalue_reference<_Compare>::type _Comp_ref;
    __stable_sort<_Comp_ref>(__first, __last, __comp, __len, __buf.first, __buf.second);

}

template <class _RandomAccessIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
stable_sort(_RandomAccessIterator __first, _RandomAccessIterator __last)
{
    std::__1::stable_sort(__first, __last, __less<typename iterator_traits<_RandomAccessIterator>::value_type>());
}



template <class _RandomAccessIterator, class _Compare>
_RandomAccessIterator
is_heap_until(_RandomAccessIterator __first, _RandomAccessIterator __last, _Compare __comp)
{
    typedef typename std::__1::iterator_traits<_RandomAccessIterator>::difference_type difference_type;
    difference_type __len = __last - __first;
    difference_type __p = 0;
    difference_type __c = 1;
    _RandomAccessIterator __pp = __first;
    while (__c < __len)
    {
        _RandomAccessIterator __cp = __first + __c;
        if (__comp(*__pp, *__cp))
            return __cp;
        ++__c;
        ++__cp;
        if (__c == __len)
            return __last;
        if (__comp(*__pp, *__cp))
            return __cp;
        ++__p;
        ++__pp;
        __c = 2 * __p + 1;
    }
    return __last;
}

template<class _RandomAccessIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_RandomAccessIterator
is_heap_until(_RandomAccessIterator __first, _RandomAccessIterator __last)
{
    return std::__1::is_heap_until(__first, __last, __less<typename iterator_traits<_RandomAccessIterator>::value_type>());
}



template <class _RandomAccessIterator, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
is_heap(_RandomAccessIterator __first, _RandomAccessIterator __last, _Compare __comp)
{
    return std::__1::is_heap_until(__first, __last, __comp) == __last;
}

template<class _RandomAccessIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
is_heap(_RandomAccessIterator __first, _RandomAccessIterator __last)
{
    return std::__1::is_heap(__first, __last, __less<typename iterator_traits<_RandomAccessIterator>::value_type>());
}



template <class _Compare, class _RandomAccessIterator>
void
__sift_up(_RandomAccessIterator __first, _RandomAccessIterator __last, _Compare __comp,
          typename iterator_traits<_RandomAccessIterator>::difference_type __len)
{
    typedef typename iterator_traits<_RandomAccessIterator>::value_type value_type;
    if (__len > 1)
    {
        __len = (__len - 2) / 2;
        _RandomAccessIterator __ptr = __first + __len;
        if (__comp(*__ptr, *--__last))
        {
            value_type __t(std::__1::move(*__last));
            do
            {
                *__last = std::__1::move(*__ptr);
                __last = __ptr;
                if (__len == 0)
                    break;
                __len = (__len - 1) / 2;
                __ptr = __first + __len;
            } while (__comp(*__ptr, __t));
            *__last = std::__1::move(__t);
        }
    }
}

template <class _RandomAccessIterator, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
push_heap(_RandomAccessIterator __first, _RandomAccessIterator __last, _Compare __comp)
{





    typedef typename add_lvalue_reference<_Compare>::type _Comp_ref;
    __sift_up<_Comp_ref>(__first, __last, __comp, __last - __first);

}

template <class _RandomAccessIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
push_heap(_RandomAccessIterator __first, _RandomAccessIterator __last)
{
    std::__1::push_heap(__first, __last, __less<typename iterator_traits<_RandomAccessIterator>::value_type>());
}



template <class _Compare, class _RandomAccessIterator>
void
__sift_down(_RandomAccessIterator __first, _RandomAccessIterator __last, _Compare __comp,
            typename iterator_traits<_RandomAccessIterator>::difference_type __len,
            _RandomAccessIterator __start)
{
    typedef typename iterator_traits<_RandomAccessIterator>::difference_type difference_type;
    typedef typename iterator_traits<_RandomAccessIterator>::value_type value_type;


    difference_type __child = __start - __first;

    if (__len < 2 || (__len - 2) / 2 < __child)
        return;

    __child = 2 * __child + 1;
    _RandomAccessIterator __child_i = __first + __child;

    if ((__child + 1) < __len && __comp(*__child_i, *(__child_i + 1))) {

        ++__child_i;
        ++__child;
    }


    if (__comp(*__child_i, *__start))

        return;

    value_type __top(std::__1::move(*__start));
    do
    {

        *__start = std::__1::move(*__child_i);
        __start = __child_i;

        if ((__len - 2) / 2 < __child)
            break;


        __child = 2 * __child + 1;
        __child_i = __first + __child;

        if ((__child + 1) < __len && __comp(*__child_i, *(__child_i + 1))) {

            ++__child_i;
            ++__child;
        }


    } while (!__comp(*__child_i, __top));
    *__start = std::__1::move(__top);
}

template <class _Compare, class _RandomAccessIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
__pop_heap(_RandomAccessIterator __first, _RandomAccessIterator __last, _Compare __comp,
           typename iterator_traits<_RandomAccessIterator>::difference_type __len)
{
    if (__len > 1)
    {
        swap(*__first, *--__last);
        __sift_down<_Compare>(__first, __last, __comp, __len - 1, __first);
    }
}

template <class _RandomAccessIterator, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
pop_heap(_RandomAccessIterator __first, _RandomAccessIterator __last, _Compare __comp)
{





    typedef typename add_lvalue_reference<_Compare>::type _Comp_ref;
    __pop_heap<_Comp_ref>(__first, __last, __comp, __last - __first);

}

template <class _RandomAccessIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
pop_heap(_RandomAccessIterator __first, _RandomAccessIterator __last)
{
    std::__1::pop_heap(__first, __last, __less<typename iterator_traits<_RandomAccessIterator>::value_type>());
}



template <class _Compare, class _RandomAccessIterator>
void
__make_heap(_RandomAccessIterator __first, _RandomAccessIterator __last, _Compare __comp)
{
    typedef typename iterator_traits<_RandomAccessIterator>::difference_type difference_type;
    difference_type __n = __last - __first;
    if (__n > 1)
    {

        for (difference_type __start = (__n - 2) / 2; __start >= 0; --__start)
        {
            __sift_down<_Compare>(__first, __last, __comp, __n, __first + __start);
        }
    }
}

template <class _RandomAccessIterator, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
make_heap(_RandomAccessIterator __first, _RandomAccessIterator __last, _Compare __comp)
{





    typedef typename add_lvalue_reference<_Compare>::type _Comp_ref;
    __make_heap<_Comp_ref>(__first, __last, __comp);

}

template <class _RandomAccessIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
make_heap(_RandomAccessIterator __first, _RandomAccessIterator __last)
{
    std::__1::make_heap(__first, __last, __less<typename iterator_traits<_RandomAccessIterator>::value_type>());
}



template <class _Compare, class _RandomAccessIterator>
void
__sort_heap(_RandomAccessIterator __first, _RandomAccessIterator __last, _Compare __comp)
{
    typedef typename iterator_traits<_RandomAccessIterator>::difference_type difference_type;
    for (difference_type __n = __last - __first; __n > 1; --__last, --__n)
        __pop_heap<_Compare>(__first, __last, __comp, __n);
}

template <class _RandomAccessIterator, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
sort_heap(_RandomAccessIterator __first, _RandomAccessIterator __last, _Compare __comp)
{





    typedef typename add_lvalue_reference<_Compare>::type _Comp_ref;
    __sort_heap<_Comp_ref>(__first, __last, __comp);

}

template <class _RandomAccessIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
sort_heap(_RandomAccessIterator __first, _RandomAccessIterator __last)
{
    std::__1::sort_heap(__first, __last, __less<typename iterator_traits<_RandomAccessIterator>::value_type>());
}



template <class _Compare, class _RandomAccessIterator>
void
__partial_sort(_RandomAccessIterator __first, _RandomAccessIterator __middle, _RandomAccessIterator __last,
             _Compare __comp)
{
    __make_heap<_Compare>(__first, __middle, __comp);
    typename iterator_traits<_RandomAccessIterator>::difference_type __len = __middle - __first;
    for (_RandomAccessIterator __i = __middle; __i != __last; ++__i)
    {
        if (__comp(*__i, *__first))
        {
            swap(*__i, *__first);
            __sift_down<_Compare>(__first, __middle, __comp, __len, __first);
        }
    }
    __sort_heap<_Compare>(__first, __middle, __comp);
}

template <class _RandomAccessIterator, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
partial_sort(_RandomAccessIterator __first, _RandomAccessIterator __middle, _RandomAccessIterator __last,
             _Compare __comp)
{





    typedef typename add_lvalue_reference<_Compare>::type _Comp_ref;
    __partial_sort<_Comp_ref>(__first, __middle, __last, __comp);

}

template <class _RandomAccessIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
partial_sort(_RandomAccessIterator __first, _RandomAccessIterator __middle, _RandomAccessIterator __last)
{
    std::__1::partial_sort(__first, __middle, __last,
                       __less<typename iterator_traits<_RandomAccessIterator>::value_type>());
}



template <class _Compare, class _InputIterator, class _RandomAccessIterator>
_RandomAccessIterator
__partial_sort_copy(_InputIterator __first, _InputIterator __last,
                    _RandomAccessIterator __result_first, _RandomAccessIterator __result_last, _Compare __comp)
{
    _RandomAccessIterator __r = __result_first;
    if (__r != __result_last)
    {
        for (; __first != __last && __r != __result_last; (void) ++__first, ++__r)
            *__r = *__first;
        __make_heap<_Compare>(__result_first, __r, __comp);
        typename iterator_traits<_RandomAccessIterator>::difference_type __len = __r - __result_first;
        for (; __first != __last; ++__first)
            if (__comp(*__first, *__result_first))
            {
                *__result_first = *__first;
                __sift_down<_Compare>(__result_first, __r, __comp, __len, __result_first);
            }
        __sort_heap<_Compare>(__result_first, __r, __comp);
    }
    return __r;
}

template <class _InputIterator, class _RandomAccessIterator, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_RandomAccessIterator
partial_sort_copy(_InputIterator __first, _InputIterator __last,
                  _RandomAccessIterator __result_first, _RandomAccessIterator __result_last, _Compare __comp)
{





    typedef typename add_lvalue_reference<_Compare>::type _Comp_ref;
    return __partial_sort_copy<_Comp_ref>(__first, __last, __result_first, __result_last, __comp);

}

template <class _InputIterator, class _RandomAccessIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_RandomAccessIterator
partial_sort_copy(_InputIterator __first, _InputIterator __last,
                  _RandomAccessIterator __result_first, _RandomAccessIterator __result_last)
{
    return std::__1::partial_sort_copy(__first, __last, __result_first, __result_last,
                                   __less<typename iterator_traits<_RandomAccessIterator>::value_type>());
}



template <class _Compare, class _RandomAccessIterator>
void
__nth_element(_RandomAccessIterator __first, _RandomAccessIterator __nth, _RandomAccessIterator __last, _Compare __comp)
{

    typedef typename iterator_traits<_RandomAccessIterator>::difference_type difference_type;
    const difference_type __limit = 7;
    while (true)
    {
    __restart:
        if (__nth == __last)
            return;
        difference_type __len = __last - __first;
        switch (__len)
        {
        case 0:
        case 1:
            return;
        case 2:
            if (__comp(*--__last, *__first))
                swap(*__first, *__last);
            return;
        case 3:
            {
            _RandomAccessIterator __m = __first;
            std::__1::__sort3<_Compare>(__first, ++__m, --__last, __comp);
            return;
            }
        }
        if (__len <= __limit)
        {
            __selection_sort<_Compare>(__first, __last, __comp);
            return;
        }

        _RandomAccessIterator __m = __first + __len/2;
        _RandomAccessIterator __lm1 = __last;
        unsigned __n_swaps = std::__1::__sort3<_Compare>(__first, __m, --__lm1, __comp);



        _RandomAccessIterator __i = __first;
        _RandomAccessIterator __j = __lm1;



        if (!__comp(*__i, *__m))
        {


            while (true)
            {
                if (__i == --__j)
                {


                    ++__i;
                    __j = __last;
                    if (!__comp(*__first, *--__j))
                    {
                        while (true)
                        {
                            if (__i == __j)
                                return;
                            if (__comp(*__first, *__i))
                            {
                                swap(*__i, *__j);
                                ++__n_swaps;
                                ++__i;
                                break;
                            }
                            ++__i;
                        }
                    }

                    if (__i == __j)
                        return;
                    while (true)
                    {
                        while (!__comp(*__first, *__i))
                            ++__i;
                        while (__comp(*__first, *--__j))
                            ;
                        if (__i >= __j)
                            break;
                        swap(*__i, *__j);
                        ++__n_swaps;
                        ++__i;
                    }


                    if (__nth < __i)
                        return;


                    __first = __i;
                    goto __restart;
                }
                if (__comp(*__j, *__m))
                {
                    swap(*__i, *__j);
                    ++__n_swaps;
                    break;
                }
            }
        }
        ++__i;


        if (__i < __j)
        {

            while (true)
            {

                while (__comp(*__i, *__m))
                    ++__i;

                while (!__comp(*--__j, *__m))
                    ;
                if (__i >= __j)
                    break;
                swap(*__i, *__j);
                ++__n_swaps;


                if (__m == __i)
                    __m = __j;
                ++__i;
            }
        }

        if (__i != __m && __comp(*__m, *__i))
        {
            swap(*__i, *__m);
            ++__n_swaps;
        }

        if (__nth == __i)
            return;
        if (__n_swaps == 0)
        {

            if (__nth < __i)
            {

                __j = __m = __first;
                while (++__j != __i)
                {
                    if (__comp(*__j, *__m))

                        goto not_sorted;
                    __m = __j;
                }

                return;
            }
            else
            {

                __j = __m = __i;
                while (++__j != __last)
                {
                    if (__comp(*__j, *__m))

                        goto not_sorted;
                    __m = __j;
                }

                return;
            }
        }
not_sorted:

        if (__nth < __i)
        {

            __last = __i;
        }
        else
        {

            __first = ++__i;
        }
    }
}

template <class _RandomAccessIterator, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
nth_element(_RandomAccessIterator __first, _RandomAccessIterator __nth, _RandomAccessIterator __last, _Compare __comp)
{





    typedef typename add_lvalue_reference<_Compare>::type _Comp_ref;
    __nth_element<_Comp_ref>(__first, __nth, __last, __comp);

}

template <class _RandomAccessIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
nth_element(_RandomAccessIterator __first, _RandomAccessIterator __nth, _RandomAccessIterator __last)
{
    std::__1::nth_element(__first, __nth, __last, __less<typename iterator_traits<_RandomAccessIterator>::value_type>());
}



template <class _Compare, class _InputIterator1, class _InputIterator2>
bool
__includes(_InputIterator1 __first1, _InputIterator1 __last1, _InputIterator2 __first2, _InputIterator2 __last2,
           _Compare __comp)
{
    for (; __first2 != __last2; ++__first1)
    {
        if (__first1 == __last1 || __comp(*__first2, *__first1))
            return false;
        if (!__comp(*__first1, *__first2))
            ++__first2;
    }
    return true;
}

template <class _InputIterator1, class _InputIterator2, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
includes(_InputIterator1 __first1, _InputIterator1 __last1, _InputIterator2 __first2, _InputIterator2 __last2,
         _Compare __comp)
{





    typedef typename add_lvalue_reference<_Compare>::type _Comp_ref;
    return __includes<_Comp_ref>(__first1, __last1, __first2, __last2, __comp);

}

template <class _InputIterator1, class _InputIterator2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
includes(_InputIterator1 __first1, _InputIterator1 __last1, _InputIterator2 __first2, _InputIterator2 __last2)
{
    return std::__1::includes(__first1, __last1, __first2, __last2,
                          __less<typename iterator_traits<_InputIterator1>::value_type,
                                 typename iterator_traits<_InputIterator2>::value_type>());
}



template <class _Compare, class _InputIterator1, class _InputIterator2, class _OutputIterator>
_OutputIterator
__set_union(_InputIterator1 __first1, _InputIterator1 __last1,
            _InputIterator2 __first2, _InputIterator2 __last2, _OutputIterator __result, _Compare __comp)
{
    for (; __first1 != __last1; ++__result)
    {
        if (__first2 == __last2)
            return std::__1::copy(__first1, __last1, __result);
        if (__comp(*__first2, *__first1))
        {
            *__result = *__first2;
            ++__first2;
        }
        else
        {
            *__result = *__first1;
            if (!__comp(*__first1, *__first2))
                ++__first2;
            ++__first1;
        }
    }
    return std::__1::copy(__first2, __last2, __result);
}

template <class _InputIterator1, class _InputIterator2, class _OutputIterator, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
set_union(_InputIterator1 __first1, _InputIterator1 __last1,
          _InputIterator2 __first2, _InputIterator2 __last2, _OutputIterator __result, _Compare __comp)
{





    typedef typename add_lvalue_reference<_Compare>::type _Comp_ref;
    return __set_union<_Comp_ref>(__first1, __last1, __first2, __last2, __result, __comp);

}

template <class _InputIterator1, class _InputIterator2, class _OutputIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
set_union(_InputIterator1 __first1, _InputIterator1 __last1,
          _InputIterator2 __first2, _InputIterator2 __last2, _OutputIterator __result)
{
    return std::__1::set_union(__first1, __last1, __first2, __last2, __result,
                          __less<typename iterator_traits<_InputIterator1>::value_type,
                                 typename iterator_traits<_InputIterator2>::value_type>());
}



template <class _Compare, class _InputIterator1, class _InputIterator2, class _OutputIterator>
_OutputIterator
__set_intersection(_InputIterator1 __first1, _InputIterator1 __last1,
                   _InputIterator2 __first2, _InputIterator2 __last2, _OutputIterator __result, _Compare __comp)
{
    while (__first1 != __last1 && __first2 != __last2)
    {
        if (__comp(*__first1, *__first2))
            ++__first1;
        else
        {
            if (!__comp(*__first2, *__first1))
            {
                *__result = *__first1;
                ++__result;
                ++__first1;
            }
            ++__first2;
        }
    }
    return __result;
}

template <class _InputIterator1, class _InputIterator2, class _OutputIterator, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
set_intersection(_InputIterator1 __first1, _InputIterator1 __last1,
                 _InputIterator2 __first2, _InputIterator2 __last2, _OutputIterator __result, _Compare __comp)
{





    typedef typename add_lvalue_reference<_Compare>::type _Comp_ref;
    return __set_intersection<_Comp_ref>(__first1, __last1, __first2, __last2, __result, __comp);

}

template <class _InputIterator1, class _InputIterator2, class _OutputIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
set_intersection(_InputIterator1 __first1, _InputIterator1 __last1,
                 _InputIterator2 __first2, _InputIterator2 __last2, _OutputIterator __result)
{
    return std::__1::set_intersection(__first1, __last1, __first2, __last2, __result,
                                  __less<typename iterator_traits<_InputIterator1>::value_type,
                                         typename iterator_traits<_InputIterator2>::value_type>());
}



template <class _Compare, class _InputIterator1, class _InputIterator2, class _OutputIterator>
_OutputIterator
__set_difference(_InputIterator1 __first1, _InputIterator1 __last1,
                 _InputIterator2 __first2, _InputIterator2 __last2, _OutputIterator __result, _Compare __comp)
{
    while (__first1 != __last1)
    {
        if (__first2 == __last2)
            return std::__1::copy(__first1, __last1, __result);
        if (__comp(*__first1, *__first2))
        {
            *__result = *__first1;
            ++__result;
            ++__first1;
        }
        else
        {
            if (!__comp(*__first2, *__first1))
                ++__first1;
            ++__first2;
        }
    }
    return __result;
}

template <class _InputIterator1, class _InputIterator2, class _OutputIterator, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
set_difference(_InputIterator1 __first1, _InputIterator1 __last1,
               _InputIterator2 __first2, _InputIterator2 __last2, _OutputIterator __result, _Compare __comp)
{





    typedef typename add_lvalue_reference<_Compare>::type _Comp_ref;
    return __set_difference<_Comp_ref>(__first1, __last1, __first2, __last2, __result, __comp);

}

template <class _InputIterator1, class _InputIterator2, class _OutputIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
set_difference(_InputIterator1 __first1, _InputIterator1 __last1,
               _InputIterator2 __first2, _InputIterator2 __last2, _OutputIterator __result)
{
    return std::__1::set_difference(__first1, __last1, __first2, __last2, __result,
                                __less<typename iterator_traits<_InputIterator1>::value_type,
                                       typename iterator_traits<_InputIterator2>::value_type>());
}



template <class _Compare, class _InputIterator1, class _InputIterator2, class _OutputIterator>
_OutputIterator
__set_symmetric_difference(_InputIterator1 __first1, _InputIterator1 __last1,
                           _InputIterator2 __first2, _InputIterator2 __last2, _OutputIterator __result, _Compare __comp)
{
    while (__first1 != __last1)
    {
        if (__first2 == __last2)
            return std::__1::copy(__first1, __last1, __result);
        if (__comp(*__first1, *__first2))
        {
            *__result = *__first1;
            ++__result;
            ++__first1;
        }
        else
        {
            if (__comp(*__first2, *__first1))
            {
                *__result = *__first2;
                ++__result;
            }
            else
                ++__first1;
            ++__first2;
        }
    }
    return std::__1::copy(__first2, __last2, __result);
}

template <class _InputIterator1, class _InputIterator2, class _OutputIterator, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
set_symmetric_difference(_InputIterator1 __first1, _InputIterator1 __last1,
                         _InputIterator2 __first2, _InputIterator2 __last2, _OutputIterator __result, _Compare __comp)
{





    typedef typename add_lvalue_reference<_Compare>::type _Comp_ref;
    return __set_symmetric_difference<_Comp_ref>(__first1, __last1, __first2, __last2, __result, __comp);

}

template <class _InputIterator1, class _InputIterator2, class _OutputIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
_OutputIterator
set_symmetric_difference(_InputIterator1 __first1, _InputIterator1 __last1,
                         _InputIterator2 __first2, _InputIterator2 __last2, _OutputIterator __result)
{
    return std::__1::set_symmetric_difference(__first1, __last1, __first2, __last2, __result,
                                          __less<typename iterator_traits<_InputIterator1>::value_type,
                                                 typename iterator_traits<_InputIterator2>::value_type>());
}



template <class _Compare, class _InputIterator1, class _InputIterator2>
bool
__lexicographical_compare(_InputIterator1 __first1, _InputIterator1 __last1,
                          _InputIterator2 __first2, _InputIterator2 __last2, _Compare __comp)
{
    for (; __first2 != __last2; ++__first1, (void) ++__first2)
    {
        if (__first1 == __last1 || __comp(*__first1, *__first2))
            return true;
        if (__comp(*__first2, *__first1))
            return false;
    }
    return false;
}

template <class _InputIterator1, class _InputIterator2, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
lexicographical_compare(_InputIterator1 __first1, _InputIterator1 __last1,
                        _InputIterator2 __first2, _InputIterator2 __last2, _Compare __comp)
{





    typedef typename add_lvalue_reference<_Compare>::type _Comp_ref;
    return __lexicographical_compare<_Comp_ref>(__first1, __last1, __first2, __last2, __comp);

}

template <class _InputIterator1, class _InputIterator2>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
lexicographical_compare(_InputIterator1 __first1, _InputIterator1 __last1,
                        _InputIterator2 __first2, _InputIterator2 __last2)
{
    return std::__1::lexicographical_compare(__first1, __last1, __first2, __last2,
                                         __less<typename iterator_traits<_InputIterator1>::value_type,
                                                typename iterator_traits<_InputIterator2>::value_type>());
}



template <class _Compare, class _BidirectionalIterator>
bool
__next_permutation(_BidirectionalIterator __first, _BidirectionalIterator __last, _Compare __comp)
{
    _BidirectionalIterator __i = __last;
    if (__first == __last || __first == --__i)
        return false;
    while (true)
    {
        _BidirectionalIterator __ip1 = __i;
        if (__comp(*--__i, *__ip1))
        {
            _BidirectionalIterator __j = __last;
            while (!__comp(*__i, *--__j))
                ;
            swap(*__i, *__j);
            std::__1::reverse(__ip1, __last);
            return true;
        }
        if (__i == __first)
        {
            std::__1::reverse(__first, __last);
            return false;
        }
    }
}

template <class _BidirectionalIterator, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
next_permutation(_BidirectionalIterator __first, _BidirectionalIterator __last, _Compare __comp)
{





    typedef typename add_lvalue_reference<_Compare>::type _Comp_ref;
    return __next_permutation<_Comp_ref>(__first, __last, __comp);

}

template <class _BidirectionalIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
next_permutation(_BidirectionalIterator __first, _BidirectionalIterator __last)
{
    return std::__1::next_permutation(__first, __last,
                                  __less<typename iterator_traits<_BidirectionalIterator>::value_type>());
}



template <class _Compare, class _BidirectionalIterator>
bool
__prev_permutation(_BidirectionalIterator __first, _BidirectionalIterator __last, _Compare __comp)
{
    _BidirectionalIterator __i = __last;
    if (__first == __last || __first == --__i)
        return false;
    while (true)
    {
        _BidirectionalIterator __ip1 = __i;
        if (__comp(*__ip1, *--__i))
        {
            _BidirectionalIterator __j = __last;
            while (!__comp(*--__j, *__i))
                ;
            swap(*__i, *__j);
            std::__1::reverse(__ip1, __last);
            return true;
        }
        if (__i == __first)
        {
            std::__1::reverse(__first, __last);
            return false;
        }
    }
}

template <class _BidirectionalIterator, class _Compare>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
prev_permutation(_BidirectionalIterator __first, _BidirectionalIterator __last, _Compare __comp)
{





    typedef typename add_lvalue_reference<_Compare>::type _Comp_ref;
    return __prev_permutation<_Comp_ref>(__first, __last, __comp);

}

template <class _BidirectionalIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
prev_permutation(_BidirectionalIterator __first, _BidirectionalIterator __last)
{
    return std::__1::prev_permutation(__first, __last,
                                  __less<typename iterator_traits<_BidirectionalIterator>::value_type>());
}

} }
# 443 "/opt/intel/sgxsdk/include/libcxx/string" 2
# 457 "/opt/intel/sgxsdk/include/libcxx/string"
# 1 "/opt/intel/sgxsdk/include/libcxx/__undef_min_max" 1
# 458 "/opt/intel/sgxsdk/include/libcxx/string" 2




       
# 463 "/opt/intel/sgxsdk/include/libcxx/string" 3


namespace std { inline namespace __1 {
# 508 "/opt/intel/sgxsdk/include/libcxx/string" 3
template <class _CharT>
struct __attribute__ ((__visibility__("default"))) char_traits
{
    typedef _CharT char_type;
    typedef int int_type;




    typedef mbstate_t state_type;

    static inline void assign(char_type& __c1, const char_type& __c2) noexcept
        {__c1 = __c2;}
    static inline constexpr bool eq(char_type __c1, char_type __c2) noexcept
        {return __c1 == __c2;}
    static inline constexpr bool lt(char_type __c1, char_type __c2) noexcept
        {return __c1 < __c2;}

    static int compare(const char_type* __s1, const char_type* __s2, size_t __n);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static size_t length(const char_type* __s);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static const char_type* find(const char_type* __s, size_t __n, const char_type& __a);
    static char_type* move(char_type* __s1, const char_type* __s2, size_t __n);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static char_type* copy(char_type* __s1, const char_type* __s2, size_t __n);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static char_type* assign(char_type* __s, size_t __n, char_type __a);

    static inline constexpr int_type not_eof(int_type __c) noexcept
        {return eq_int_type(__c, eof()) ? ~eof() : __c;}
    static inline constexpr char_type to_char_type(int_type __c) noexcept
        {return char_type(__c);}
    static inline constexpr int_type to_int_type(char_type __c) noexcept
        {return int_type(__c);}
    static inline constexpr bool eq_int_type(int_type __c1, int_type __c2) noexcept
        {return __c1 == __c2;}
    static inline constexpr int_type eof() noexcept
        {return int_type(
# 546 "/opt/intel/sgxsdk/include/libcxx/string"
                        (-1)
# 546 "/opt/intel/sgxsdk/include/libcxx/string" 3
                           );}
};

template <class _CharT>
int
char_traits<_CharT>::compare(const char_type* __s1, const char_type* __s2, size_t __n)
{
    for (; __n; --__n, ++__s1, ++__s2)
    {
        if (lt(*__s1, *__s2))
            return -1;
        if (lt(*__s2, *__s1))
            return 1;
    }
    return 0;
}

template <class _CharT>
inline
size_t
char_traits<_CharT>::length(const char_type* __s)
{
    size_t __len = 0;
    for (; !eq(*__s, char_type(0)); ++__s)
        ++__len;
    return __len;
}

template <class _CharT>
inline
const _CharT*
char_traits<_CharT>::find(const char_type* __s, size_t __n, const char_type& __a)
{
    for (; __n; --__n)
    {
        if (eq(*__s, __a))
            return __s;
        ++__s;
    }
    return 0;
}

template <class _CharT>
_CharT*
char_traits<_CharT>::move(char_type* __s1, const char_type* __s2, size_t __n)
{
    char_type* __r = __s1;
    if (__s1 < __s2)
    {
        for (; __n; --__n, ++__s1, ++__s2)
            assign(*__s1, *__s2);
    }
    else if (__s2 < __s1)
    {
        __s1 += __n;
        __s2 += __n;
        for (; __n; --__n)
            assign(*--__s1, *--__s2);
    }
    return __r;
}

template <class _CharT>
inline
_CharT*
char_traits<_CharT>::copy(char_type* __s1, const char_type* __s2, size_t __n)
{
    (((__s2 < __s1 || __s2 >= __s1+__n) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 613, __func__, "__s2 < __s1 || __s2 >= __s1+__n")));
    char_type* __r = __s1;
    for (; __n; --__n, ++__s1, ++__s2)
        assign(*__s1, *__s2);
    return __r;
}

template <class _CharT>
inline
_CharT*
char_traits<_CharT>::assign(char_type* __s, size_t __n, char_type __a)
{
    char_type* __r = __s;
    for (; __n; --__n, ++__s)
        assign(*__s, __a);
    return __r;
}



template <>
struct __attribute__ ((__visibility__("default"))) char_traits<char>
{
    typedef char char_type;
    typedef int int_type;




    typedef mbstate_t state_type;

    static inline void assign(char_type& __c1, const char_type& __c2) noexcept
        {__c1 = __c2;}
    static inline constexpr bool eq(char_type __c1, char_type __c2) noexcept
            {return __c1 == __c2;}
    static inline constexpr bool lt(char_type __c1, char_type __c2) noexcept
        {return (unsigned char)__c1 < (unsigned char)__c2;}

    static inline int compare(const char_type* __s1, const char_type* __s2, size_t __n)
        {return __n == 0 ? 0 : memcmp(__s1, __s2, __n);}
    static inline size_t length(const char_type* __s) {return strlen(__s);}
    static inline const char_type* find(const char_type* __s, size_t __n, const char_type& __a)
        {return __n == 0 ? 
# 655 "/opt/intel/sgxsdk/include/libcxx/string"
                          0 
# 655 "/opt/intel/sgxsdk/include/libcxx/string" 3
                               : (const char_type*) memchr(__s, to_int_type(__a), __n);}
    static inline char_type* move(char_type* __s1, const char_type* __s2, size_t __n)
        {return __n == 0 ? __s1 : (char_type*) memmove(__s1, __s2, __n);}
    static inline char_type* copy(char_type* __s1, const char_type* __s2, size_t __n)
        {
            (((__s2 < __s1 || __s2 >= __s1+__n) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 660, __func__, "__s2 < __s1 || __s2 >= __s1+__n")));
            return __n == 0 ? __s1 : (char_type*)memcpy(__s1, __s2, __n);
        }
    static inline char_type* assign(char_type* __s, size_t __n, char_type __a)
        {return __n == 0 ? __s : (char_type*)memset(__s, to_int_type(__a), __n);}

    static inline constexpr int_type not_eof(int_type __c) noexcept
        {return eq_int_type(__c, eof()) ? ~eof() : __c;}
    static inline constexpr char_type to_char_type(int_type __c) noexcept
        {return char_type(__c);}
    static inline constexpr int_type to_int_type(char_type __c) noexcept
        {return int_type((unsigned char)__c);}
    static inline constexpr bool eq_int_type(int_type __c1, int_type __c2) noexcept
        {return __c1 == __c2;}
    static inline constexpr int_type eof() noexcept
        {return int_type(
# 675 "/opt/intel/sgxsdk/include/libcxx/string"
                        (-1)
# 675 "/opt/intel/sgxsdk/include/libcxx/string" 3
                           );}
};



template <>
struct __attribute__ ((__visibility__("default"))) char_traits<wchar_t>
{
    typedef wchar_t char_type;
    typedef wint_t int_type;




    typedef mbstate_t state_type;

    static inline void assign(char_type& __c1, const char_type& __c2) noexcept
        {__c1 = __c2;}
    static inline constexpr bool eq(char_type __c1, char_type __c2) noexcept
        {return __c1 == __c2;}
    static inline constexpr bool lt(char_type __c1, char_type __c2) noexcept
        {return __c1 < __c2;}

    static inline int compare(const char_type* __s1, const char_type* __s2, size_t __n)
        {return __n == 0 ? 0 : wmemcmp(__s1, __s2, __n);}
    static inline size_t length(const char_type* __s)
        {return wcslen(__s);}
    static inline const char_type* find(const char_type* __s, size_t __n, const char_type& __a)
        {return __n == 0 ? 
# 703 "/opt/intel/sgxsdk/include/libcxx/string"
                          0 
# 703 "/opt/intel/sgxsdk/include/libcxx/string" 3
                               : (const char_type*)wmemchr(__s, __a, __n);}
    static inline char_type* move(char_type* __s1, const char_type* __s2, size_t __n)
        {return __n == 0 ? __s1 : (char_type*)wmemmove(__s1, __s2, __n);}
    static inline char_type* copy(char_type* __s1, const char_type* __s2, size_t __n)
        {
            (((__s2 < __s1 || __s2 >= __s1+__n) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 708, __func__, "__s2 < __s1 || __s2 >= __s1+__n")));
            return __n == 0 ? __s1 : (char_type*)wmemcpy(__s1, __s2, __n);
        }
    static inline char_type* assign(char_type* __s, size_t __n, char_type __a)
        {return __n == 0 ? __s : (char_type*)wmemset(__s, __a, __n);}

    static inline constexpr int_type not_eof(int_type __c) noexcept
        {return eq_int_type(__c, eof()) ? ~eof() : __c;}
    static inline constexpr char_type to_char_type(int_type __c) noexcept
        {return char_type(__c);}
    static inline constexpr int_type to_int_type(char_type __c) noexcept
        {return int_type(__c);}
    static inline constexpr bool eq_int_type(int_type __c1, int_type __c2) noexcept
        {return __c1 == __c2;}
    static inline constexpr int_type eof() noexcept
        {return int_type(
# 723 "/opt/intel/sgxsdk/include/libcxx/string"
                        ((wint_t)-1)
# 723 "/opt/intel/sgxsdk/include/libcxx/string" 3
                            );}
};



template <>
struct __attribute__ ((__visibility__("default"))) char_traits<char16_t>
{
    typedef char16_t char_type;
    typedef uint_least16_t int_type;




    typedef mbstate_t state_type;

    static inline void assign(char_type& __c1, const char_type& __c2) noexcept
        {__c1 = __c2;}
    static inline constexpr bool eq(char_type __c1, char_type __c2) noexcept
        {return __c1 == __c2;}
    static inline constexpr bool lt(char_type __c1, char_type __c2) noexcept
        {return __c1 < __c2;}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static int compare(const char_type* __s1, const char_type* __s2, size_t __n);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static size_t length(const char_type* __s);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static const char_type* find(const char_type* __s, size_t __n, const char_type& __a);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static char_type* move(char_type* __s1, const char_type* __s2, size_t __n);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static char_type* copy(char_type* __s1, const char_type* __s2, size_t __n);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static char_type* assign(char_type* __s, size_t __n, char_type __a);

    static inline constexpr int_type not_eof(int_type __c) noexcept
        {return eq_int_type(__c, eof()) ? ~eof() : __c;}
    static inline constexpr char_type to_char_type(int_type __c) noexcept
        {return char_type(__c);}
    static inline constexpr int_type to_int_type(char_type __c) noexcept
        {return int_type(__c);}
    static inline constexpr bool eq_int_type(int_type __c1, int_type __c2) noexcept
        {return __c1 == __c2;}
    static inline constexpr int_type eof() noexcept
        {return int_type(0xFFFF);}
};

inline
int
char_traits<char16_t>::compare(const char_type* __s1, const char_type* __s2, size_t __n)
{
    for (; __n; --__n, ++__s1, ++__s2)
    {
        if (lt(*__s1, *__s2))
            return -1;
        if (lt(*__s2, *__s1))
            return 1;
    }
    return 0;
}

inline
size_t
char_traits<char16_t>::length(const char_type* __s)
{
    size_t __len = 0;
    for (; !eq(*__s, char_type(0)); ++__s)
        ++__len;
    return __len;
}

inline
const char16_t*
char_traits<char16_t>::find(const char_type* __s, size_t __n, const char_type& __a)
{
    for (; __n; --__n)
    {
        if (eq(*__s, __a))
            return __s;
        ++__s;
    }
    return 0;
}

inline
char16_t*
char_traits<char16_t>::move(char_type* __s1, const char_type* __s2, size_t __n)
{
    char_type* __r = __s1;
    if (__s1 < __s2)
    {
        for (; __n; --__n, ++__s1, ++__s2)
            assign(*__s1, *__s2);
    }
    else if (__s2 < __s1)
    {
        __s1 += __n;
        __s2 += __n;
        for (; __n; --__n)
            assign(*--__s1, *--__s2);
    }
    return __r;
}

inline
char16_t*
char_traits<char16_t>::copy(char_type* __s1, const char_type* __s2, size_t __n)
{
    (((__s2 < __s1 || __s2 >= __s1+__n) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 832, __func__, "__s2 < __s1 || __s2 >= __s1+__n")));
    char_type* __r = __s1;
    for (; __n; --__n, ++__s1, ++__s2)
        assign(*__s1, *__s2);
    return __r;
}

inline
char16_t*
char_traits<char16_t>::assign(char_type* __s, size_t __n, char_type __a)
{
    char_type* __r = __s;
    for (; __n; --__n, ++__s)
        assign(*__s, __a);
    return __r;
}

template <>
struct __attribute__ ((__visibility__("default"))) char_traits<char32_t>
{
    typedef char32_t char_type;
    typedef uint_least32_t int_type;




    typedef mbstate_t state_type;

    static inline void assign(char_type& __c1, const char_type& __c2) noexcept
        {__c1 = __c2;}
    static inline constexpr bool eq(char_type __c1, char_type __c2) noexcept
        {return __c1 == __c2;}
    static inline constexpr bool lt(char_type __c1, char_type __c2) noexcept
        {return __c1 < __c2;}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static int compare(const char_type* __s1, const char_type* __s2, size_t __n);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static size_t length(const char_type* __s);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static const char_type* find(const char_type* __s, size_t __n, const char_type& __a);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static char_type* move(char_type* __s1, const char_type* __s2, size_t __n);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static char_type* copy(char_type* __s1, const char_type* __s2, size_t __n);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    static char_type* assign(char_type* __s, size_t __n, char_type __a);

    static inline constexpr int_type not_eof(int_type __c) noexcept
        {return eq_int_type(__c, eof()) ? ~eof() : __c;}
    static inline constexpr char_type to_char_type(int_type __c) noexcept
        {return char_type(__c);}
    static inline constexpr int_type to_int_type(char_type __c) noexcept
        {return int_type(__c);}
    static inline constexpr bool eq_int_type(int_type __c1, int_type __c2) noexcept
        {return __c1 == __c2;}
    static inline constexpr int_type eof() noexcept
        {return int_type(0xFFFFFFFF);}
};

inline
int
char_traits<char32_t>::compare(const char_type* __s1, const char_type* __s2, size_t __n)
{
    for (; __n; --__n, ++__s1, ++__s2)
    {
        if (lt(*__s1, *__s2))
            return -1;
        if (lt(*__s2, *__s1))
            return 1;
    }
    return 0;
}

inline
size_t
char_traits<char32_t>::length(const char_type* __s)
{
    size_t __len = 0;
    for (; !eq(*__s, char_type(0)); ++__s)
        ++__len;
    return __len;
}

inline
const char32_t*
char_traits<char32_t>::find(const char_type* __s, size_t __n, const char_type& __a)
{
    for (; __n; --__n)
    {
        if (eq(*__s, __a))
            return __s;
        ++__s;
    }
    return 0;
}

inline
char32_t*
char_traits<char32_t>::move(char_type* __s1, const char_type* __s2, size_t __n)
{
    char_type* __r = __s1;
    if (__s1 < __s2)
    {
        for (; __n; --__n, ++__s1, ++__s2)
            assign(*__s1, *__s2);
    }
    else if (__s2 < __s1)
    {
        __s1 += __n;
        __s2 += __n;
        for (; __n; --__n)
            assign(*--__s1, *--__s2);
    }
    return __r;
}

inline
char32_t*
char_traits<char32_t>::copy(char_type* __s1, const char_type* __s2, size_t __n)
{
    (((__s2 < __s1 || __s2 >= __s1+__n) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 953, __func__, "__s2 < __s1 || __s2 >= __s1+__n")));
    char_type* __r = __s1;
    for (; __n; --__n, ++__s1, ++__s2)
        assign(*__s1, *__s2);
    return __r;
}

inline
char32_t*
char_traits<char32_t>::assign(char_type* __s, size_t __n, char_type __a)
{
    char_type* __r = __s;
    for (; __n; --__n, ++__s)
        assign(*__s, __a);
    return __r;
}






template<class _CharT, class _SizeT, class _Traits, _SizeT __npos>
inline _SizeT __attribute__ ((__visibility__("hidden"), __always_inline__))
__str_find(const _CharT *__p, _SizeT __sz,
             _CharT __c, _SizeT __pos) noexcept
{
    if (__pos >= __sz)
        return __npos;
    const _CharT* __r = _Traits::find(__p + __pos, __sz - __pos, __c);
    if (__r == 0)
        return __npos;
    return static_cast<_SizeT>(__r - __p);
}

template<class _CharT, class _SizeT, class _Traits, _SizeT __npos>
inline _SizeT __attribute__ ((__visibility__("hidden"), __always_inline__))
__str_find(const _CharT *__p, _SizeT __sz,
       const _CharT* __s, _SizeT __pos, _SizeT __n) noexcept
{
    if (__pos > __sz || __sz - __pos < __n)
        return __npos;
    if (__n == 0)
        return __pos;
    const _CharT* __r =
        std::__1::__search(__p + __pos, __p + __sz,
                        __s, __s + __n, _Traits::eq,
                        random_access_iterator_tag(), random_access_iterator_tag()).first;
    if (__r == __p + __sz)
        return __npos;
    return static_cast<_SizeT>(__r - __p);
}




template<class _CharT, class _SizeT, class _Traits, _SizeT __npos>
inline _SizeT __attribute__ ((__visibility__("hidden"), __always_inline__))
__str_rfind(const _CharT *__p, _SizeT __sz,
              _CharT __c, _SizeT __pos) noexcept
{
    if (__sz < 1)
        return __npos;
    if (__pos < __sz)
        ++__pos;
    else
        __pos = __sz;
    for (const _CharT* __ps = __p + __pos; __ps != __p;)
    {
        if (_Traits::eq(*--__ps, __c))
            return static_cast<_SizeT>(__ps - __p);
    }
    return __npos;
}

template<class _CharT, class _SizeT, class _Traits, _SizeT __npos>
inline _SizeT __attribute__ ((__visibility__("hidden"), __always_inline__))
__str_rfind(const _CharT *__p, _SizeT __sz,
        const _CharT* __s, _SizeT __pos, _SizeT __n) noexcept
{
    __pos = std::__1::min(__pos, __sz);
    if (__n < __sz - __pos)
        __pos += __n;
    else
        __pos = __sz;
    const _CharT* __r = std::__1::__find_end(
                  __p, __p + __pos, __s, __s + __n, _Traits::eq,
                        random_access_iterator_tag(), random_access_iterator_tag());
    if (__n > 0 && __r == __p + __pos)
        return __npos;
    return static_cast<_SizeT>(__r - __p);
}


template<class _CharT, class _SizeT, class _Traits, _SizeT __npos>
inline _SizeT __attribute__ ((__visibility__("hidden"), __always_inline__))
__str_find_first_of(const _CharT *__p, _SizeT __sz,
                const _CharT* __s, _SizeT __pos, _SizeT __n) noexcept
{
    if (__pos >= __sz || __n == 0)
        return __npos;
    const _CharT* __r = std::__1::__find_first_of_ce
        (__p + __pos, __p + __sz, __s, __s + __n, _Traits::eq );
    if (__r == __p + __sz)
        return __npos;
    return static_cast<_SizeT>(__r - __p);
}



template<class _CharT, class _SizeT, class _Traits, _SizeT __npos>
inline _SizeT __attribute__ ((__visibility__("hidden"), __always_inline__))
__str_find_last_of(const _CharT *__p, _SizeT __sz,
               const _CharT* __s, _SizeT __pos, _SizeT __n) noexcept
    {
    if (__n != 0)
    {
        if (__pos < __sz)
            ++__pos;
        else
            __pos = __sz;
        for (const _CharT* __ps = __p + __pos; __ps != __p;)
        {
            const _CharT* __r = _Traits::find(__s, __n, *--__ps);
            if (__r)
                return static_cast<_SizeT>(__ps - __p);
        }
    }
    return __npos;
}



template<class _CharT, class _SizeT, class _Traits, _SizeT __npos>
inline _SizeT __attribute__ ((__visibility__("hidden"), __always_inline__))
__str_find_first_not_of(const _CharT *__p, _SizeT __sz,
                    const _CharT* __s, _SizeT __pos, _SizeT __n) noexcept
{
    if (__pos < __sz)
    {
        const _CharT* __pe = __p + __sz;
        for (const _CharT* __ps = __p + __pos; __ps != __pe; ++__ps)
            if (_Traits::find(__s, __n, *__ps) == 0)
                return static_cast<_SizeT>(__ps - __p);
    }
    return __npos;
}


template<class _CharT, class _SizeT, class _Traits, _SizeT __npos>
inline _SizeT __attribute__ ((__visibility__("hidden"), __always_inline__))
__str_find_first_not_of(const _CharT *__p, _SizeT __sz,
                          _CharT __c, _SizeT __pos) noexcept
{
    if (__pos < __sz)
    {
        const _CharT* __pe = __p + __sz;
        for (const _CharT* __ps = __p + __pos; __ps != __pe; ++__ps)
            if (!_Traits::eq(*__ps, __c))
                return static_cast<_SizeT>(__ps - __p);
    }
    return __npos;
}



template<class _CharT, class _SizeT, class _Traits, _SizeT __npos>
inline _SizeT __attribute__ ((__visibility__("hidden"), __always_inline__))
__str_find_last_not_of(const _CharT *__p, _SizeT __sz,
                   const _CharT* __s, _SizeT __pos, _SizeT __n) noexcept
{
    if (__pos < __sz)
        ++__pos;
    else
        __pos = __sz;
    for (const _CharT* __ps = __p + __pos; __ps != __p;)
        if (_Traits::find(__s, __n, *--__ps) == 0)
            return static_cast<_SizeT>(__ps - __p);
    return __npos;
}


template<class _CharT, class _SizeT, class _Traits, _SizeT __npos>
inline _SizeT __attribute__ ((__visibility__("hidden"), __always_inline__))
__str_find_last_not_of(const _CharT *__p, _SizeT __sz,
                         _CharT __c, _SizeT __pos) noexcept
{
    if (__pos < __sz)
        ++__pos;
    else
        __pos = __sz;
    for (const _CharT* __ps = __p + __pos; __ps != __p;)
        if (!_Traits::eq(*--__ps, __c))
            return static_cast<_SizeT>(__ps - __p);
    return __npos;
}

template<class _Ptr>
size_t __attribute__ ((__visibility__("hidden"), __always_inline__)) __do_string_hash(_Ptr __p, _Ptr __e)
{
    typedef typename iterator_traits<_Ptr>::value_type value_type;
    return __murmur2_or_cityhash<size_t>()(__p, (__e-__p)*sizeof(value_type));
}



template<class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>
operator+(const basic_string<_CharT, _Traits, _Allocator>& __x,
          const basic_string<_CharT, _Traits, _Allocator>& __y);

template<class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>
operator+(const _CharT* __x, const basic_string<_CharT,_Traits,_Allocator>& __y);

template<class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>
operator+(_CharT __x, const basic_string<_CharT,_Traits,_Allocator>& __y);

template<class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>
operator+(const basic_string<_CharT, _Traits, _Allocator>& __x, const _CharT* __y);

template<class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>
operator+(const basic_string<_CharT, _Traits, _Allocator>& __x, _CharT __y);

template <bool>
class __attribute__ ((__visibility__("default"))) __basic_string_common
{
protected:
    void __throw_length_error() const;
    void __throw_out_of_range() const;
};

template <bool __b>
void
__basic_string_common<__b>::__throw_length_error() const
{

    throw length_error("basic_string");



}

template <bool __b>
void
__basic_string_common<__b>::__throw_out_of_range() const
{

    throw out_of_range("basic_string");



}





extern template class __attribute__ ((__visibility__("default"))) __basic_string_common<true>;
# 1226 "/opt/intel/sgxsdk/include/libcxx/string" 3
template <class _Iter, bool = __is_forward_iterator<_Iter>::value>
struct __libcpp_string_gets_noexcept_iterator_impl : public integral_constant<bool,(( noexcept(++(declval<_Iter&>())) && is_nothrow_assignable<_Iter&, _Iter>::value && noexcept(declval<_Iter>() == declval<_Iter>()) && noexcept(*declval<_Iter>()) ))>




   {};

template <class _Iter>
struct __libcpp_string_gets_noexcept_iterator_impl<_Iter, false> : public false_type {};



template <class _Iter>
struct __libcpp_string_gets_noexcept_iterator
    : public integral_constant<bool,(__libcpp_is_trivial_iterator<_Iter>::value || __libcpp_string_gets_noexcept_iterator_impl<_Iter>::value)> {};
# 1258 "/opt/intel/sgxsdk/include/libcxx/string" 3
template<class _CharT, class _Traits, class _Allocator>
class __attribute__ ((__visibility__("default"))) basic_string
    : private __basic_string_common<true>
{
public:
    typedef basic_string __self;
    typedef _Traits traits_type;
    typedef typename traits_type::char_type value_type;
    typedef _Allocator allocator_type;
    typedef allocator_traits<allocator_type> __alloc_traits;
    typedef typename __alloc_traits::size_type size_type;
    typedef typename __alloc_traits::difference_type difference_type;
    typedef value_type& reference;
    typedef const value_type& const_reference;
    typedef typename __alloc_traits::pointer pointer;
    typedef typename __alloc_traits::const_pointer const_pointer;

    static_assert(is_pod<value_type>::value, "Character type of basic_string must be a POD");
    static_assert((is_same<_CharT, value_type>::value),
                  "traits_type::char_type must be the same type as CharT");
    static_assert((is_same<typename allocator_type::value_type, value_type>::value),
                  "Allocator::value_type must be same type as value_type");




    typedef __wrap_iter<pointer> iterator;
    typedef __wrap_iter<const_pointer> const_iterator;

    typedef std::__1::reverse_iterator<iterator> reverse_iterator;
    typedef std::__1::reverse_iterator<const_iterator> const_reverse_iterator;

private:
# 1324 "/opt/intel/sgxsdk/include/libcxx/string" 3
    struct __long
    {
        size_type __cap_;
        size_type __size_;
        pointer __data_;
    };





    enum {__short_mask = 0x01};
    enum {__long_mask = 0x1ul};


    enum {__min_cap = (sizeof(__long) - 1)/sizeof(value_type) > 2 ?
                      (sizeof(__long) - 1)/sizeof(value_type) : 2};

    struct __short
    {
        union
        {
            unsigned char __size_;
            value_type __lx;
        };
        value_type __data_[__min_cap];
    };



    union __ulx{__long __lx; __short __lxx;};

    enum {__n_words = sizeof(__ulx) / sizeof(size_type)};

    struct __raw
    {
        size_type __words[__n_words];
    };

    struct __rep
    {
        union
        {
            __long __l;
            __short __s;
            __raw __r;
        };
    };

    __compressed_pair<__rep, allocator_type> __r_;

public:
    static const size_type npos = -1;

    __attribute__ ((__visibility__("hidden"), __always_inline__)) basic_string()
        noexcept(is_nothrow_default_constructible<allocator_type>::value);

    __attribute__ ((__visibility__("hidden"), __always_inline__)) explicit basic_string(const allocator_type& __a)

        noexcept(is_nothrow_copy_constructible<allocator_type>::value);




    basic_string(const basic_string& __str);
    basic_string(const basic_string& __str, const allocator_type& __a);


    __attribute__ ((__visibility__("hidden"), __always_inline__))
    basic_string(basic_string&& __str)

        noexcept(is_nothrow_move_constructible<allocator_type>::value);




    __attribute__ ((__visibility__("hidden"), __always_inline__))
    basic_string(basic_string&& __str, const allocator_type& __a);

    __attribute__ ((__visibility__("hidden"), __always_inline__)) basic_string(const value_type* __s);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    basic_string(const value_type* __s, const allocator_type& __a);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    basic_string(const value_type* __s, size_type __n);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    basic_string(const value_type* __s, size_type __n, const allocator_type& __a);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    basic_string(size_type __n, value_type __c);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    basic_string(size_type __n, value_type __c, const allocator_type& __a);
    basic_string(const basic_string& __str, size_type __pos, size_type __n,
                 const allocator_type& __a = allocator_type());
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    basic_string(const basic_string& __str, size_type __pos,
                 const allocator_type& __a = allocator_type());
    template<class _InputIterator>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        basic_string(_InputIterator __first, _InputIterator __last);
    template<class _InputIterator>
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        basic_string(_InputIterator __first, _InputIterator __last, const allocator_type& __a);

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    basic_string(initializer_list<value_type> __il);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    basic_string(initializer_list<value_type> __il, const allocator_type& __a);


    ~basic_string();

    basic_string& operator=(const basic_string& __str);

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    basic_string& operator=(basic_string&& __str)
        noexcept((__noexcept_move_assign_container<_Allocator, __alloc_traits>::value));

    __attribute__ ((__visibility__("hidden"), __always_inline__)) basic_string& operator=(const value_type* __s) {return assign(__s);}
    basic_string& operator=(value_type __c);

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    basic_string& operator=(initializer_list<value_type> __il) {return assign(__il.begin(), __il.size());}
# 1461 "/opt/intel/sgxsdk/include/libcxx/string" 3
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    iterator begin() noexcept
        {return iterator(__get_pointer());}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    const_iterator begin() const noexcept
        {return const_iterator(__get_pointer());}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    iterator end() noexcept
        {return iterator(__get_pointer() + size());}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    const_iterator end() const noexcept
        {return const_iterator(__get_pointer() + size());}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    reverse_iterator rbegin() noexcept
        {return reverse_iterator(end());}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    const_reverse_iterator rbegin() const noexcept
        {return const_reverse_iterator(end());}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    reverse_iterator rend() noexcept
        {return reverse_iterator(begin());}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    const_reverse_iterator rend() const noexcept
        {return const_reverse_iterator(begin());}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    const_iterator cbegin() const noexcept
        {return begin();}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    const_iterator cend() const noexcept
        {return end();}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    const_reverse_iterator crbegin() const noexcept
        {return rbegin();}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    const_reverse_iterator crend() const noexcept
        {return rend();}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) size_type size() const noexcept
        {return __is_long() ? __get_long_size() : __get_short_size();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) size_type length() const noexcept {return size();}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) size_type max_size() const noexcept;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) size_type capacity() const noexcept
        {return (__is_long() ? __get_long_cap()
                             : static_cast<size_type>(__min_cap)) - 1;}

    void resize(size_type __n, value_type __c);
    __attribute__ ((__visibility__("hidden"), __always_inline__)) void resize(size_type __n) {resize(__n, value_type());}

    void reserve(size_type res_arg = 0);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void shrink_to_fit() noexcept {reserve();}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void clear() noexcept;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) bool empty() const noexcept {return size() == 0;}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) const_reference operator[](size_type __pos) const;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) reference operator[](size_type __pos);

    const_reference at(size_type __n) const;
    reference at(size_type __n);

    __attribute__ ((__visibility__("hidden"), __always_inline__)) basic_string& operator+=(const basic_string& __str) {return append(__str);}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) basic_string& operator+=(const value_type* __s) {return append(__s);}
    __attribute__ ((__visibility__("hidden"), __always_inline__)) basic_string& operator+=(value_type __c) {push_back(__c); return *this;}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) basic_string& operator+=(initializer_list<value_type> __il) {return append(__il);}


    __attribute__ ((__visibility__("hidden"), __always_inline__))
    basic_string& append(const basic_string& __str);
    basic_string& append(const basic_string& __str, size_type __pos, size_type __n=npos);
    basic_string& append(const value_type* __s, size_type __n);
    basic_string& append(const value_type* __s);
    basic_string& append(size_type __n, value_type __c);
    template<class _InputIterator>
        typename enable_if
        <
            __is_exactly_input_iterator<_InputIterator>::value
                || !__libcpp_string_gets_noexcept_iterator<_InputIterator>::value,
            basic_string&
        >::type
        append(_InputIterator __first, _InputIterator __last);
    template<class _ForwardIterator>
        typename enable_if
        <
            __is_forward_iterator<_ForwardIterator>::value
                && __libcpp_string_gets_noexcept_iterator<_ForwardIterator>::value,
            basic_string&
        >::type
        append(_ForwardIterator __first, _ForwardIterator __last);

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    basic_string& append(initializer_list<value_type> __il) {return append(__il.begin(), __il.size());}


    void push_back(value_type __c);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void pop_back();
    __attribute__ ((__visibility__("hidden"), __always_inline__)) reference front();
    __attribute__ ((__visibility__("hidden"), __always_inline__)) const_reference front() const;
    __attribute__ ((__visibility__("hidden"), __always_inline__)) reference back();
    __attribute__ ((__visibility__("hidden"), __always_inline__)) const_reference back() const;

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    basic_string& assign(const basic_string& __str) { return *this = __str; }

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    basic_string& assign(basic_string&& str)
        noexcept((__noexcept_move_assign_container<_Allocator, __alloc_traits>::value))
        {*this = std::__1::move(str); return *this;}

    basic_string& assign(const basic_string& __str, size_type __pos, size_type __n=npos);
    basic_string& assign(const value_type* __s, size_type __n);
    basic_string& assign(const value_type* __s);
    basic_string& assign(size_type __n, value_type __c);
    template<class _InputIterator>
        typename enable_if
        <
           __is_exactly_input_iterator<_InputIterator>::value
                || !__libcpp_string_gets_noexcept_iterator<_InputIterator>::value,
            basic_string&
        >::type
        assign(_InputIterator __first, _InputIterator __last);
    template<class _ForwardIterator>
        typename enable_if
        <
            __is_forward_iterator<_ForwardIterator>::value
                 && __libcpp_string_gets_noexcept_iterator<_ForwardIterator>::value,
            basic_string&
        >::type
        assign(_ForwardIterator __first, _ForwardIterator __last);

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    basic_string& assign(initializer_list<value_type> __il) {return assign(__il.begin(), __il.size());}


    __attribute__ ((__visibility__("hidden"), __always_inline__))
    basic_string& insert(size_type __pos1, const basic_string& __str);
    basic_string& insert(size_type __pos1, const basic_string& __str, size_type __pos2, size_type __n=npos);
    basic_string& insert(size_type __pos, const value_type* __s, size_type __n);
    basic_string& insert(size_type __pos, const value_type* __s);
    basic_string& insert(size_type __pos, size_type __n, value_type __c);
    iterator insert(const_iterator __pos, value_type __c);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    iterator insert(const_iterator __pos, size_type __n, value_type __c);
    template<class _InputIterator>
        typename enable_if
        <
           __is_exactly_input_iterator<_InputIterator>::value
                || !__libcpp_string_gets_noexcept_iterator<_InputIterator>::value,
            iterator
        >::type
        insert(const_iterator __pos, _InputIterator __first, _InputIterator __last);
    template<class _ForwardIterator>
        typename enable_if
        <
            __is_forward_iterator<_ForwardIterator>::value
                 && __libcpp_string_gets_noexcept_iterator<_ForwardIterator>::value,
            iterator
        >::type
        insert(const_iterator __pos, _ForwardIterator __first, _ForwardIterator __last);

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    iterator insert(const_iterator __pos, initializer_list<value_type> __il)
                    {return insert(__pos, __il.begin(), __il.end());}


    basic_string& erase(size_type __pos = 0, size_type __n = npos);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    iterator erase(const_iterator __pos);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    iterator erase(const_iterator __first, const_iterator __last);

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    basic_string& replace(size_type __pos1, size_type __n1, const basic_string& __str);
    basic_string& replace(size_type __pos1, size_type __n1, const basic_string& __str, size_type __pos2, size_type __n2=npos);
    basic_string& replace(size_type __pos, size_type __n1, const value_type* __s, size_type __n2);
    basic_string& replace(size_type __pos, size_type __n1, const value_type* __s);
    basic_string& replace(size_type __pos, size_type __n1, size_type __n2, value_type __c);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    basic_string& replace(const_iterator __i1, const_iterator __i2, const basic_string& __str);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    basic_string& replace(const_iterator __i1, const_iterator __i2, const value_type* __s, size_type __n);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    basic_string& replace(const_iterator __i1, const_iterator __i2, const value_type* __s);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    basic_string& replace(const_iterator __i1, const_iterator __i2, size_type __n, value_type __c);
    template<class _InputIterator>
        typename enable_if
        <
            __is_input_iterator<_InputIterator>::value,
            basic_string&
        >::type
        replace(const_iterator __i1, const_iterator __i2, _InputIterator __j1, _InputIterator __j2);

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    basic_string& replace(const_iterator __i1, const_iterator __i2, initializer_list<value_type> __il)
        {return replace(__i1, __i2, __il.begin(), __il.end());}


    size_type copy(value_type* __s, size_type __n, size_type __pos = 0) const;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    basic_string substr(size_type __pos = 0, size_type __n = npos) const;

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void swap(basic_string& __str)



        noexcept(!__alloc_traits::propagate_on_container_swap::value || __is_nothrow_swappable<allocator_type>::value)
                                                                  ;


    __attribute__ ((__visibility__("hidden"), __always_inline__))
    const value_type* c_str() const noexcept {return data();}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    const value_type* data() const noexcept {return std::__1::__to_raw_pointer(__get_pointer());}





    __attribute__ ((__visibility__("hidden"), __always_inline__))
    allocator_type get_allocator() const noexcept {return __alloc();}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_type find(const basic_string& __str, size_type __pos = 0) const noexcept;
    size_type find(const value_type* __s, size_type __pos, size_type __n) const noexcept;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_type find(const value_type* __s, size_type __pos = 0) const noexcept;
    size_type find(value_type __c, size_type __pos = 0) const noexcept;

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_type rfind(const basic_string& __str, size_type __pos = npos) const noexcept;
    size_type rfind(const value_type* __s, size_type __pos, size_type __n) const noexcept;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_type rfind(const value_type* __s, size_type __pos = npos) const noexcept;
    size_type rfind(value_type __c, size_type __pos = npos) const noexcept;

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_type find_first_of(const basic_string& __str, size_type __pos = 0) const noexcept;
    size_type find_first_of(const value_type* __s, size_type __pos, size_type __n) const noexcept;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_type find_first_of(const value_type* __s, size_type __pos = 0) const noexcept;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_type find_first_of(value_type __c, size_type __pos = 0) const noexcept;

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_type find_last_of(const basic_string& __str, size_type __pos = npos) const noexcept;
    size_type find_last_of(const value_type* __s, size_type __pos, size_type __n) const noexcept;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_type find_last_of(const value_type* __s, size_type __pos = npos) const noexcept;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_type find_last_of(value_type __c, size_type __pos = npos) const noexcept;

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_type find_first_not_of(const basic_string& __str, size_type __pos = 0) const noexcept;
    size_type find_first_not_of(const value_type* __s, size_type __pos, size_type __n) const noexcept;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_type find_first_not_of(const value_type* __s, size_type __pos = 0) const noexcept;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_type find_first_not_of(value_type __c, size_type __pos = 0) const noexcept;

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_type find_last_not_of(const basic_string& __str, size_type __pos = npos) const noexcept;
    size_type find_last_not_of(const value_type* __s, size_type __pos, size_type __n) const noexcept;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_type find_last_not_of(const value_type* __s, size_type __pos = npos) const noexcept;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_type find_last_not_of(value_type __c, size_type __pos = npos) const noexcept;

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    int compare(const basic_string& __str) const noexcept;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    int compare(size_type __pos1, size_type __n1, const basic_string& __str) const;
    int compare(size_type __pos1, size_type __n1, const basic_string& __str, size_type __pos2, size_type __n2=npos) const;
    int compare(const value_type* __s) const noexcept;
    int compare(size_type __pos1, size_type __n1, const value_type* __s) const;
    int compare(size_type __pos1, size_type __n1, const value_type* __s, size_type __n2) const;

    __attribute__ ((__visibility__("hidden"), __always_inline__)) bool __invariants() const;

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool __is_long() const noexcept
        {return bool(__r_.first().__s.__size_ & __short_mask);}
# 1758 "/opt/intel/sgxsdk/include/libcxx/string" 3
private:
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    allocator_type& __alloc() noexcept
        {return __r_.second();}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    const allocator_type& __alloc() const noexcept
        {return __r_.second();}
# 1786 "/opt/intel/sgxsdk/include/libcxx/string" 3
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void __set_short_size(size_type __s) noexcept



        {__r_.first().__s.__size_ = (unsigned char)(__s << 1);}


    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_type __get_short_size() const noexcept



        {return __r_.first().__s.__size_ >> 1;}




    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void __set_long_size(size_type __s) noexcept
        {__r_.first().__l.__size_ = __s;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_type __get_long_size() const noexcept
        {return __r_.first().__l.__size_;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void __set_size(size_type __s) noexcept
        {if (__is_long()) __set_long_size(__s); else __set_short_size(__s);}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void __set_long_cap(size_type __s) noexcept
        {__r_.first().__l.__cap_ = __long_mask | __s;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_type __get_long_cap() const noexcept
        {return __r_.first().__l.__cap_ & size_type(~__long_mask);}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void __set_long_pointer(pointer __p) noexcept
        {__r_.first().__l.__data_ = __p;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    pointer __get_long_pointer() noexcept
        {return __r_.first().__l.__data_;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    const_pointer __get_long_pointer() const noexcept
        {return __r_.first().__l.__data_;}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    pointer __get_short_pointer() noexcept
        {return pointer_traits<pointer>::pointer_to(__r_.first().__s.__data_[0]);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    const_pointer __get_short_pointer() const noexcept
        {return pointer_traits<const_pointer>::pointer_to(__r_.first().__s.__data_[0]);}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    pointer __get_pointer() noexcept
        {return __is_long() ? __get_long_pointer() : __get_short_pointer();}
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    const_pointer __get_pointer() const noexcept
        {return __is_long() ? __get_long_pointer() : __get_short_pointer();}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void __zero() noexcept
        {
            size_type (&__a)[__n_words] = __r_.first().__r.__words;
            for (unsigned __i = 0; __i < __n_words; ++__i)
                __a[__i] = 0;
        }

    template <size_type __a> static
        __attribute__ ((__visibility__("hidden"), __always_inline__))
        size_type __align_it(size_type __s) noexcept
            {return (__s + (__a-1)) & ~(__a-1);}
    enum {__alignment = 16};
    static __attribute__ ((__visibility__("hidden"), __always_inline__))
    size_type __recommend(size_type __s) noexcept
        {return (__s < __min_cap ? static_cast<size_type>(__min_cap) :
                 __align_it<sizeof(value_type) < __alignment ?
                            __alignment/sizeof(value_type) : 1 > (__s+1)) - 1;}

    void __init(const value_type* __s, size_type __sz, size_type __reserve);
    void __init(const value_type* __s, size_type __sz);
    void __init(size_type __n, value_type __c);

    template <class _InputIterator>
    typename enable_if
    <
        __is_exactly_input_iterator<_InputIterator>::value,
        void
    >::type
    __init(_InputIterator __first, _InputIterator __last);

    template <class _ForwardIterator>
    typename enable_if
    <
        __is_forward_iterator<_ForwardIterator>::value,
        void
    >::type
    __init(_ForwardIterator __first, _ForwardIterator __last);

    void __grow_by(size_type __old_cap, size_type __delta_cap, size_type __old_sz,
                   size_type __n_copy, size_type __n_del, size_type __n_add = 0);
    void __grow_by_and_replace(size_type __old_cap, size_type __delta_cap, size_type __old_sz,
                               size_type __n_copy, size_type __n_del,
                               size_type __n_add, const value_type* __p_new_stuff);

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void __erase_to_end(size_type __pos);

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void __copy_assign_alloc(const basic_string& __str)
        {__copy_assign_alloc(__str, integral_constant<bool,
                      __alloc_traits::propagate_on_container_copy_assignment::value>());}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void __copy_assign_alloc(const basic_string& __str, true_type)
        {
            if (__alloc() != __str.__alloc())
            {
                clear();
                shrink_to_fit();
            }
            __alloc() = __str.__alloc();
        }

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void __copy_assign_alloc(const basic_string&, false_type) noexcept
        {}


    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void __move_assign(basic_string& __str, false_type)
        noexcept(__alloc_traits::is_always_equal::value);
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void __move_assign(basic_string& __str, true_type)



        noexcept(is_nothrow_move_assignable<allocator_type>::value);



    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void
    __move_assign_alloc(basic_string& __str)
        noexcept(!__alloc_traits::propagate_on_container_move_assignment::value || is_nothrow_move_assignable<allocator_type>::value)


    {__move_assign_alloc(__str, integral_constant<bool,
                      __alloc_traits::propagate_on_container_move_assignment::value>());}

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void __move_assign_alloc(basic_string& __c, true_type)
        noexcept(is_nothrow_move_assignable<allocator_type>::value)
        {
            __alloc() = std::__1::move(__c.__alloc());
        }

    __attribute__ ((__visibility__("hidden"), __always_inline__))
    void __move_assign_alloc(basic_string&, false_type)
        noexcept
        {}

    __attribute__ ((__visibility__("hidden"), __always_inline__)) void __invalidate_all_iterators();
    __attribute__ ((__visibility__("hidden"), __always_inline__)) void __invalidate_iterators_past(size_type);

    friend basic_string operator+<>(const basic_string&, const basic_string&);
    friend basic_string operator+<>(const value_type*, const basic_string&);
    friend basic_string operator+<>(value_type, const basic_string&);
    friend basic_string operator+<>(const basic_string&, const value_type*);
    friend basic_string operator+<>(const basic_string&, value_type);
};

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
basic_string<_CharT, _Traits, _Allocator>::__invalidate_all_iterators()
{



}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
basic_string<_CharT, _Traits, _Allocator>::__invalidate_iterators_past(size_type



                                                                      )
{
# 1993 "/opt/intel/sgxsdk/include/libcxx/string" 3
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>::basic_string()
    noexcept(is_nothrow_default_constructible<allocator_type>::value)
{



    __zero();
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>::basic_string(const allocator_type& __a)

        noexcept(is_nothrow_copy_constructible<allocator_type>::value)



: __r_(__a)
{



    __zero();
}

template <class _CharT, class _Traits, class _Allocator>
void
basic_string<_CharT, _Traits, _Allocator>::__init(const value_type* __s, size_type __sz, size_type __reserve)
{
    if (__reserve > max_size())
        this->__throw_length_error();
    pointer __p;
    if (__reserve < __min_cap)
    {
        __set_short_size(__sz);
        __p = __get_short_pointer();
    }
    else
    {
        size_type __cap = __recommend(__reserve);
        __p = __alloc_traits::allocate(__alloc(), __cap+1);
        __set_long_pointer(__p);
        __set_long_cap(__cap+1);
        __set_long_size(__sz);
    }
    traits_type::copy(std::__1::__to_raw_pointer(__p), __s, __sz);
    traits_type::assign(__p[__sz], value_type());
}

template <class _CharT, class _Traits, class _Allocator>
void
basic_string<_CharT, _Traits, _Allocator>::__init(const value_type* __s, size_type __sz)
{
    if (__sz > max_size())
        this->__throw_length_error();
    pointer __p;
    if (__sz < __min_cap)
    {
        __set_short_size(__sz);
        __p = __get_short_pointer();
    }
    else
    {
        size_type __cap = __recommend(__sz);
        __p = __alloc_traits::allocate(__alloc(), __cap+1);
        __set_long_pointer(__p);
        __set_long_cap(__cap+1);
        __set_long_size(__sz);
    }
    traits_type::copy(std::__1::__to_raw_pointer(__p), __s, __sz);
    traits_type::assign(__p[__sz], value_type());
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>::basic_string(const value_type* __s)
{
    (((__s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 2074, __func__, "__s != nullptr")));
    __init(__s, traits_type::length(__s));



}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>::basic_string(const value_type* __s, const allocator_type& __a)
    : __r_(__a)
{
    (((__s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 2086, __func__, "__s != nullptr")));
    __init(__s, traits_type::length(__s));



}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>::basic_string(const value_type* __s, size_type __n)
{
    (((__n == 0 || __s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 2097, __func__, "__n == 0 || __s != nullptr")));
    __init(__s, __n);



}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>::basic_string(const value_type* __s, size_type __n, const allocator_type& __a)
    : __r_(__a)
{
    (((__n == 0 || __s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 2109, __func__, "__n == 0 || __s != nullptr")));
    __init(__s, __n);



}

template <class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>::basic_string(const basic_string& __str)
    : __r_(__alloc_traits::select_on_container_copy_construction(__str.__alloc()))
{
    if (!__str.__is_long())
        __r_.first().__r = __str.__r_.first().__r;
    else
        __init(std::__1::__to_raw_pointer(__str.__get_long_pointer()), __str.__get_long_size());



}

template <class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>::basic_string(const basic_string& __str, const allocator_type& __a)
    : __r_(__a)
{
    if (!__str.__is_long())
        __r_.first().__r = __str.__r_.first().__r;
    else
        __init(std::__1::__to_raw_pointer(__str.__get_long_pointer()), __str.__get_long_size());



}



template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>::basic_string(basic_string&& __str)

        noexcept(is_nothrow_move_constructible<allocator_type>::value)



    : __r_(std::__1::move(__str.__r_))
{
    __str.__zero();





}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>::basic_string(basic_string&& __str, const allocator_type& __a)
    : __r_(__a)
{
    if (__str.__is_long() && __a != __str.__alloc())
        __init(std::__1::__to_raw_pointer(__str.__get_long_pointer()), __str.__get_long_size());
    else
    {
        __r_.first().__r = __str.__r_.first().__r;
        __str.__zero();
    }





}



template <class _CharT, class _Traits, class _Allocator>
void
basic_string<_CharT, _Traits, _Allocator>::__init(size_type __n, value_type __c)
{
    if (__n > max_size())
        this->__throw_length_error();
    pointer __p;
    if (__n < __min_cap)
    {
        __set_short_size(__n);
        __p = __get_short_pointer();
    }
    else
    {
        size_type __cap = __recommend(__n);
        __p = __alloc_traits::allocate(__alloc(), __cap+1);
        __set_long_pointer(__p);
        __set_long_cap(__cap+1);
        __set_long_size(__n);
    }
    traits_type::assign(std::__1::__to_raw_pointer(__p), __n, __c);
    traits_type::assign(__p[__n], value_type());
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>::basic_string(size_type __n, value_type __c)
{
    __init(__n, __c);



}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>::basic_string(size_type __n, value_type __c, const allocator_type& __a)
    : __r_(__a)
{
    __init(__n, __c);



}

template <class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>::basic_string(const basic_string& __str, size_type __pos, size_type __n,
                                                        const allocator_type& __a)
    : __r_(__a)
{
    size_type __str_sz = __str.size();
    if (__pos > __str_sz)
        this->__throw_out_of_range();
    __init(__str.data() + __pos, std::__1::min(__n, __str_sz - __pos));



}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>::basic_string(const basic_string& __str, size_type __pos,
                                                        const allocator_type& __a)
    : __r_(__a)
{
    size_type __str_sz = __str.size();
    if (__pos > __str_sz)
        this->__throw_out_of_range();
    __init(__str.data() + __pos, __str_sz - __pos);



}

template <class _CharT, class _Traits, class _Allocator>
template <class _InputIterator>
typename enable_if
<
    __is_exactly_input_iterator<_InputIterator>::value,
    void
>::type
basic_string<_CharT, _Traits, _Allocator>::__init(_InputIterator __first, _InputIterator __last)
{
    __zero();

    try
    {

    for (; __first != __last; ++__first)
        push_back(*__first);

    }
    catch (...)
    {
        if (__is_long())
            __alloc_traits::deallocate(__alloc(), __get_long_pointer(), __get_long_cap());
        throw;
    }

}

template <class _CharT, class _Traits, class _Allocator>
template <class _ForwardIterator>
typename enable_if
<
    __is_forward_iterator<_ForwardIterator>::value,
    void
>::type
basic_string<_CharT, _Traits, _Allocator>::__init(_ForwardIterator __first, _ForwardIterator __last)
{
    size_type __sz = static_cast<size_type>(std::__1::distance(__first, __last));
    if (__sz > max_size())
        this->__throw_length_error();
    pointer __p;
    if (__sz < __min_cap)
    {
        __set_short_size(__sz);
        __p = __get_short_pointer();
    }
    else
    {
        size_type __cap = __recommend(__sz);
        __p = __alloc_traits::allocate(__alloc(), __cap+1);
        __set_long_pointer(__p);
        __set_long_cap(__cap+1);
        __set_long_size(__sz);
    }
    for (; __first != __last; ++__first, (void) ++__p)
        traits_type::assign(*__p, *__first);
    traits_type::assign(*__p, value_type());
}

template <class _CharT, class _Traits, class _Allocator>
template<class _InputIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>::basic_string(_InputIterator __first, _InputIterator __last)
{
    __init(__first, __last);



}

template <class _CharT, class _Traits, class _Allocator>
template<class _InputIterator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>::basic_string(_InputIterator __first, _InputIterator __last,
                                                        const allocator_type& __a)
    : __r_(__a)
{
    __init(__first, __last);



}



template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>::basic_string(initializer_list<value_type> __il)
{
    __init(__il.begin(), __il.end());



}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>::basic_string(initializer_list<value_type> __il, const allocator_type& __a)
    : __r_(__a)
{
    __init(__il.begin(), __il.end());



}



template <class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>::~basic_string()
{



    if (__is_long())
        __alloc_traits::deallocate(__alloc(), __get_long_pointer(), __get_long_cap());
}

template <class _CharT, class _Traits, class _Allocator>
void
basic_string<_CharT, _Traits, _Allocator>::__grow_by_and_replace
    (size_type __old_cap, size_type __delta_cap, size_type __old_sz,
     size_type __n_copy, size_type __n_del, size_type __n_add, const value_type* __p_new_stuff)
{
    size_type __ms = max_size();
    if (__delta_cap > __ms - __old_cap - 1)
        this->__throw_length_error();
    pointer __old_p = __get_pointer();
    size_type __cap = __old_cap < __ms / 2 - __alignment ?
                          __recommend(std::__1::max(__old_cap + __delta_cap, 2 * __old_cap)) :
                          __ms - 1;
    pointer __p = __alloc_traits::allocate(__alloc(), __cap+1);
    __invalidate_all_iterators();
    if (__n_copy != 0)
        traits_type::copy(std::__1::__to_raw_pointer(__p),
                          std::__1::__to_raw_pointer(__old_p), __n_copy);
    if (__n_add != 0)
        traits_type::copy(std::__1::__to_raw_pointer(__p) + __n_copy, __p_new_stuff, __n_add);
    size_type __sec_cp_sz = __old_sz - __n_del - __n_copy;
    if (__sec_cp_sz != 0)
        traits_type::copy(std::__1::__to_raw_pointer(__p) + __n_copy + __n_add,
                          std::__1::__to_raw_pointer(__old_p) + __n_copy + __n_del, __sec_cp_sz);
    if (__old_cap+1 != __min_cap)
        __alloc_traits::deallocate(__alloc(), __old_p, __old_cap+1);
    __set_long_pointer(__p);
    __set_long_cap(__cap+1);
    __old_sz = __n_copy + __n_add + __sec_cp_sz;
    __set_long_size(__old_sz);
    traits_type::assign(__p[__old_sz], value_type());
}

template <class _CharT, class _Traits, class _Allocator>
void
basic_string<_CharT, _Traits, _Allocator>::__grow_by(size_type __old_cap, size_type __delta_cap, size_type __old_sz,
                                                     size_type __n_copy, size_type __n_del, size_type __n_add)
{
    size_type __ms = max_size();
    if (__delta_cap > __ms - __old_cap)
        this->__throw_length_error();
    pointer __old_p = __get_pointer();
    size_type __cap = __old_cap < __ms / 2 - __alignment ?
                          __recommend(std::__1::max(__old_cap + __delta_cap, 2 * __old_cap)) :
                          __ms - 1;
    pointer __p = __alloc_traits::allocate(__alloc(), __cap+1);
    __invalidate_all_iterators();
    if (__n_copy != 0)
        traits_type::copy(std::__1::__to_raw_pointer(__p),
                          std::__1::__to_raw_pointer(__old_p), __n_copy);
    size_type __sec_cp_sz = __old_sz - __n_del - __n_copy;
    if (__sec_cp_sz != 0)
        traits_type::copy(std::__1::__to_raw_pointer(__p) + __n_copy + __n_add,
                          std::__1::__to_raw_pointer(__old_p) + __n_copy + __n_del,
                          __sec_cp_sz);
    if (__old_cap+1 != __min_cap)
        __alloc_traits::deallocate(__alloc(), __old_p, __old_cap+1);
    __set_long_pointer(__p);
    __set_long_cap(__cap+1);
}



template <class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::assign(const value_type* __s, size_type __n)
{
    (((__n == 0 || __s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 2441, __func__, "__n == 0 || __s != nullptr")));
    size_type __cap = capacity();
    if (__cap >= __n)
    {
        value_type* __p = std::__1::__to_raw_pointer(__get_pointer());
        traits_type::move(__p, __s, __n);
        traits_type::assign(__p[__n], value_type());
        __set_size(__n);
        __invalidate_iterators_past(__n);
    }
    else
    {
        size_type __sz = size();
        __grow_by_and_replace(__cap, __n - __cap, __sz, 0, __sz, __n, __s);
    }
    return *this;
}

template <class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::assign(size_type __n, value_type __c)
{
    size_type __cap = capacity();
    if (__cap < __n)
    {
        size_type __sz = size();
        __grow_by(__cap, __n - __cap, __sz, 0, __sz);
    }
    else
        __invalidate_iterators_past(__n);
    value_type* __p = std::__1::__to_raw_pointer(__get_pointer());
    traits_type::assign(__p, __n, __c);
    traits_type::assign(__p[__n], value_type());
    __set_size(__n);
    return *this;
}

template <class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::operator=(value_type __c)
{
    pointer __p;
    if (__is_long())
    {
        __p = __get_long_pointer();
        __set_long_size(1);
    }
    else
    {
        __p = __get_short_pointer();
        __set_short_size(1);
    }
    traits_type::assign(*__p, __c);
    traits_type::assign(*++__p, value_type());
    __invalidate_iterators_past(1);
    return *this;
}

template <class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::operator=(const basic_string& __str)
{
    if (this != &__str)
    {
        __copy_assign_alloc(__str);
        assign(__str.data(), __str.size());
    }
    return *this;
}



template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
basic_string<_CharT, _Traits, _Allocator>::__move_assign(basic_string& __str, false_type)
    noexcept(__alloc_traits::is_always_equal::value)
{
    if (__alloc() != __str.__alloc())
        assign(__str);
    else
        __move_assign(__str, true_type());
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
basic_string<_CharT, _Traits, _Allocator>::__move_assign(basic_string& __str, true_type)



    noexcept(is_nothrow_move_assignable<allocator_type>::value)

{
    clear();
    shrink_to_fit();
    __r_.first() = __str.__r_.first();
    __move_assign_alloc(__str);
    __str.__zero();
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::operator=(basic_string&& __str)
    noexcept((__noexcept_move_assign_container<_Allocator, __alloc_traits>::value))
{
    __move_assign(__str, integral_constant<bool,
          __alloc_traits::propagate_on_container_move_assignment::value>());
    return *this;
}



template <class _CharT, class _Traits, class _Allocator>
template<class _InputIterator>
typename enable_if
<
     __is_exactly_input_iterator <_InputIterator>::value
          || !__libcpp_string_gets_noexcept_iterator<_InputIterator>::value,
    basic_string<_CharT, _Traits, _Allocator>&
>::type
basic_string<_CharT, _Traits, _Allocator>::assign(_InputIterator __first, _InputIterator __last)
{
    basic_string __temp(__first, __last, __alloc());
    assign(__temp.data(), __temp.size());
    return *this;
}

template <class _CharT, class _Traits, class _Allocator>
template<class _ForwardIterator>
typename enable_if
<
    __is_forward_iterator<_ForwardIterator>::value
         && __libcpp_string_gets_noexcept_iterator<_ForwardIterator>::value,
    basic_string<_CharT, _Traits, _Allocator>&
>::type
basic_string<_CharT, _Traits, _Allocator>::assign(_ForwardIterator __first, _ForwardIterator __last)
{
    size_type __n = static_cast<size_type>(std::__1::distance(__first, __last));
    size_type __cap = capacity();
    if (__cap < __n)
    {
        size_type __sz = size();
        __grow_by(__cap, __n - __cap, __sz, 0, __sz);
    }
    else
        __invalidate_iterators_past(__n);
    pointer __p = __get_pointer();
    for (; __first != __last; ++__first, ++__p)
        traits_type::assign(*__p, *__first);
    traits_type::assign(*__p, value_type());
    __set_size(__n);
    return *this;
}

template <class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::assign(const basic_string& __str, size_type __pos, size_type __n)
{
    size_type __sz = __str.size();
    if (__pos > __sz)
        this->__throw_out_of_range();
    return assign(__str.data() + __pos, std::__1::min(__n, __sz - __pos));
}

template <class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::assign(const value_type* __s)
{
    (((__s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 2611, __func__, "__s != nullptr")));
    return assign(__s, traits_type::length(__s));
}



template <class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::append(const value_type* __s, size_type __n)
{
    (((__n == 0 || __s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 2621, __func__, "__n == 0 || __s != nullptr")));
    size_type __cap = capacity();
    size_type __sz = size();
    if (__cap - __sz >= __n)
    {
        if (__n)
        {
            value_type* __p = std::__1::__to_raw_pointer(__get_pointer());
            traits_type::copy(__p + __sz, __s, __n);
            __sz += __n;
            __set_size(__sz);
            traits_type::assign(__p[__sz], value_type());
        }
    }
    else
        __grow_by_and_replace(__cap, __sz + __n - __cap, __sz, __sz, 0, __n, __s);
    return *this;
}

template <class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::append(size_type __n, value_type __c)
{
    if (__n)
    {
        size_type __cap = capacity();
        size_type __sz = size();
        if (__cap - __sz < __n)
            __grow_by(__cap, __sz + __n - __cap, __sz, __sz, 0);
        pointer __p = __get_pointer();
        traits_type::assign(std::__1::__to_raw_pointer(__p) + __sz, __n, __c);
        __sz += __n;
        __set_size(__sz);
        traits_type::assign(__p[__sz], value_type());
    }
    return *this;
}

template <class _CharT, class _Traits, class _Allocator>
void
basic_string<_CharT, _Traits, _Allocator>::push_back(value_type __c)
{
    bool __is_short = !__is_long();
    size_type __cap;
    size_type __sz;
    if (__is_short)
    {
        __cap = __min_cap - 1;
        __sz = __get_short_size();
    }
    else
    {
        __cap = __get_long_cap() - 1;
        __sz = __get_long_size();
    }
    if (__sz == __cap)
    {
        __grow_by(__cap, 1, __sz, __sz, 0);
        __is_short = !__is_long();
    }
    pointer __p;
    if (__is_short)
    {
        __p = __get_short_pointer() + __sz;
        __set_short_size(__sz+1);
    }
    else
    {
        __p = __get_long_pointer() + __sz;
        __set_long_size(__sz+1);
    }
    traits_type::assign(*__p, __c);
    traits_type::assign(*++__p, value_type());
}

template <class _CharT, class _Traits, class _Allocator>
template<class _InputIterator>
typename enable_if
<
    __is_exactly_input_iterator<_InputIterator>::value
             || !__libcpp_string_gets_noexcept_iterator<_InputIterator>::value,
    basic_string<_CharT, _Traits, _Allocator>&
>::type
basic_string<_CharT, _Traits, _Allocator>::append(_InputIterator __first, _InputIterator __last)
{
 basic_string __temp (__first, __last, __alloc());
 append(__temp.data(), __temp.size());
    return *this;
}

template <class _CharT, class _Traits, class _Allocator>
template<class _ForwardIterator>
typename enable_if
<
    __is_forward_iterator<_ForwardIterator>::value
          && __libcpp_string_gets_noexcept_iterator<_ForwardIterator>::value,
    basic_string<_CharT, _Traits, _Allocator>&
>::type
basic_string<_CharT, _Traits, _Allocator>::append(_ForwardIterator __first, _ForwardIterator __last)
{
    size_type __sz = size();
    size_type __cap = capacity();
    size_type __n = static_cast<size_type>(std::__1::distance(__first, __last));
    if (__n)
    {
        if (__cap - __sz < __n)
            __grow_by(__cap, __sz + __n - __cap, __sz, __sz, 0);
        pointer __p = __get_pointer() + __sz;
        for (; __first != __last; ++__p, ++__first)
            traits_type::assign(*__p, *__first);
        traits_type::assign(*__p, value_type());
        __set_size(__sz + __n);
    }
    return *this;
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::append(const basic_string& __str)
{
    return append(__str.data(), __str.size());
}

template <class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::append(const basic_string& __str, size_type __pos, size_type __n)
{
    size_type __sz = __str.size();
    if (__pos > __sz)
        this->__throw_out_of_range();
    return append(__str.data() + __pos, std::__1::min(__n, __sz - __pos));
}

template <class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::append(const value_type* __s)
{
    (((__s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 2759, __func__, "__s != nullptr")));
    return append(__s, traits_type::length(__s));
}



template <class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::insert(size_type __pos, const value_type* __s, size_type __n)
{
    (((__n == 0 || __s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 2769, __func__, "__n == 0 || __s != nullptr")));
    size_type __sz = size();
    if (__pos > __sz)
        this->__throw_out_of_range();
    size_type __cap = capacity();
    if (__cap - __sz >= __n)
    {
        if (__n)
        {
            value_type* __p = std::__1::__to_raw_pointer(__get_pointer());
            size_type __n_move = __sz - __pos;
            if (__n_move != 0)
            {
                if (__p + __pos <= __s && __s < __p + __sz)
                    __s += __n;
                traits_type::move(__p + __pos + __n, __p + __pos, __n_move);
            }
            traits_type::move(__p + __pos, __s, __n);
            __sz += __n;
            __set_size(__sz);
            traits_type::assign(__p[__sz], value_type());
        }
    }
    else
        __grow_by_and_replace(__cap, __sz + __n - __cap, __sz, __pos, 0, __n, __s);
    return *this;
}

template <class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::insert(size_type __pos, size_type __n, value_type __c)
{
    size_type __sz = size();
    if (__pos > __sz)
        this->__throw_out_of_range();
    if (__n)
    {
        size_type __cap = capacity();
        value_type* __p;
        if (__cap - __sz >= __n)
        {
            __p = std::__1::__to_raw_pointer(__get_pointer());
            size_type __n_move = __sz - __pos;
            if (__n_move != 0)
                traits_type::move(__p + __pos + __n, __p + __pos, __n_move);
        }
        else
        {
            __grow_by(__cap, __sz + __n - __cap, __sz, __pos, 0, __n);
            __p = std::__1::__to_raw_pointer(__get_long_pointer());
        }
        traits_type::assign(__p + __pos, __n, __c);
        __sz += __n;
        __set_size(__sz);
        traits_type::assign(__p[__sz], value_type());
    }
    return *this;
}

template <class _CharT, class _Traits, class _Allocator>
template<class _InputIterator>
typename enable_if
<
   __is_exactly_input_iterator<_InputIterator>::value
        || !__libcpp_string_gets_noexcept_iterator<_InputIterator>::value,
   typename basic_string<_CharT, _Traits, _Allocator>::iterator
>::type
basic_string<_CharT, _Traits, _Allocator>::insert(const_iterator __pos, _InputIterator __first, _InputIterator __last)
{





    basic_string __temp(__first, __last, __alloc());
    return insert(__pos, __temp.data(), __temp.data() + __temp.size());
}

template <class _CharT, class _Traits, class _Allocator>
template<class _ForwardIterator>
typename enable_if
<
    __is_forward_iterator<_ForwardIterator>::value
        && __libcpp_string_gets_noexcept_iterator<_ForwardIterator>::value,
    typename basic_string<_CharT, _Traits, _Allocator>::iterator
>::type
basic_string<_CharT, _Traits, _Allocator>::insert(const_iterator __pos, _ForwardIterator __first, _ForwardIterator __last)
{





    size_type __ip = static_cast<size_type>(__pos - begin());
    size_type __sz = size();
    size_type __cap = capacity();
    size_type __n = static_cast<size_type>(std::__1::distance(__first, __last));
    if (__n)
    {
        value_type* __p;
        if (__cap - __sz >= __n)
        {
            __p = std::__1::__to_raw_pointer(__get_pointer());
            size_type __n_move = __sz - __ip;
            if (__n_move != 0)
                traits_type::move(__p + __ip + __n, __p + __ip, __n_move);
        }
        else
        {
            __grow_by(__cap, __sz + __n - __cap, __sz, __ip, 0, __n);
            __p = std::__1::__to_raw_pointer(__get_long_pointer());
        }
        __sz += __n;
        __set_size(__sz);
        traits_type::assign(__p[__sz], value_type());
        for (__p += __ip; __first != __last; ++__p, ++__first)
            traits_type::assign(*__p, *__first);
    }
    return begin() + __ip;
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::insert(size_type __pos1, const basic_string& __str)
{
    return insert(__pos1, __str.data(), __str.size());
}

template <class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::insert(size_type __pos1, const basic_string& __str,
                                                  size_type __pos2, size_type __n)
{
    size_type __str_sz = __str.size();
    if (__pos2 > __str_sz)
        this->__throw_out_of_range();
    return insert(__pos1, __str.data() + __pos2, std::__1::min(__n, __str_sz - __pos2));
}

template <class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::insert(size_type __pos, const value_type* __s)
{
    (((__s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 2913, __func__, "__s != nullptr")));
    return insert(__pos, __s, traits_type::length(__s));
}

template <class _CharT, class _Traits, class _Allocator>
typename basic_string<_CharT, _Traits, _Allocator>::iterator
basic_string<_CharT, _Traits, _Allocator>::insert(const_iterator __pos, value_type __c)
{
    size_type __ip = static_cast<size_type>(__pos - begin());
    size_type __sz = size();
    size_type __cap = capacity();
    value_type* __p;
    if (__cap == __sz)
    {
        __grow_by(__cap, 1, __sz, __ip, 0, 1);
        __p = std::__1::__to_raw_pointer(__get_long_pointer());
    }
    else
    {
        __p = std::__1::__to_raw_pointer(__get_pointer());
        size_type __n_move = __sz - __ip;
        if (__n_move != 0)
            traits_type::move(__p + __ip + 1, __p + __ip, __n_move);
    }
    traits_type::assign(__p[__ip], __c);
    traits_type::assign(__p[++__sz], value_type());
    __set_size(__sz);
    return begin() + static_cast<difference_type>(__ip);
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::iterator
basic_string<_CharT, _Traits, _Allocator>::insert(const_iterator __pos, size_type __n, value_type __c)
{





    difference_type __p = __pos - begin();
    insert(static_cast<size_type>(__p), __n, __c);
    return begin() + __p;
}



template <class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::replace(size_type __pos, size_type __n1, const value_type* __s, size_type __n2)
{
    (((__n2 == 0 || __s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 2964, __func__, "__n2 == 0 || __s != nullptr")));
    size_type __sz = size();
    if (__pos > __sz)
        this->__throw_out_of_range();
    __n1 = std::__1::min(__n1, __sz - __pos);
    size_type __cap = capacity();
    if (__cap - __sz + __n1 >= __n2)
    {
        value_type* __p = std::__1::__to_raw_pointer(__get_pointer());
        if (__n1 != __n2)
        {
            size_type __n_move = __sz - __pos - __n1;
            if (__n_move != 0)
            {
                if (__n1 > __n2)
                {
                    traits_type::move(__p + __pos, __s, __n2);
                    traits_type::move(__p + __pos + __n2, __p + __pos + __n1, __n_move);
                    goto __finish;
                }
                if (__p + __pos < __s && __s < __p + __sz)
                {
                    if (__p + __pos + __n1 <= __s)
                        __s += __n2 - __n1;
                    else
                    {
                        traits_type::move(__p + __pos, __s, __n1);
                        __pos += __n1;
                        __s += __n2;
                        __n2 -= __n1;
                        __n1 = 0;
                    }
                }
                traits_type::move(__p + __pos + __n2, __p + __pos + __n1, __n_move);
            }
        }
        traits_type::move(__p + __pos, __s, __n2);
__finish:
        __sz += __n2 - __n1;
        __set_size(__sz);
        __invalidate_iterators_past(__sz);
        traits_type::assign(__p[__sz], value_type());
    }
    else
        __grow_by_and_replace(__cap, __sz - __n1 + __n2 - __cap, __sz, __pos, __n1, __n2, __s);
    return *this;
}

template <class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::replace(size_type __pos, size_type __n1, size_type __n2, value_type __c)
{
    size_type __sz = size();
    if (__pos > __sz)
        this->__throw_out_of_range();
    __n1 = std::__1::min(__n1, __sz - __pos);
    size_type __cap = capacity();
    value_type* __p;
    if (__cap - __sz + __n1 >= __n2)
    {
        __p = std::__1::__to_raw_pointer(__get_pointer());
        if (__n1 != __n2)
        {
            size_type __n_move = __sz - __pos - __n1;
            if (__n_move != 0)
                traits_type::move(__p + __pos + __n2, __p + __pos + __n1, __n_move);
        }
    }
    else
    {
        __grow_by(__cap, __sz - __n1 + __n2 - __cap, __sz, __pos, __n1, __n2);
        __p = std::__1::__to_raw_pointer(__get_long_pointer());
    }
    traits_type::assign(__p + __pos, __n2, __c);
    __sz += __n2 - __n1;
    __set_size(__sz);
    __invalidate_iterators_past(__sz);
    traits_type::assign(__p[__sz], value_type());
    return *this;
}

template <class _CharT, class _Traits, class _Allocator>
template<class _InputIterator>
typename enable_if
<
    __is_input_iterator<_InputIterator>::value,
    basic_string<_CharT, _Traits, _Allocator>&
>::type
basic_string<_CharT, _Traits, _Allocator>::replace(const_iterator __i1, const_iterator __i2,
                                                   _InputIterator __j1, _InputIterator __j2)
{
    basic_string __temp(__j1, __j2, __alloc());
    return this->replace(__i1, __i2, __temp);
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::replace(size_type __pos1, size_type __n1, const basic_string& __str)
{
    return replace(__pos1, __n1, __str.data(), __str.size());
}

template <class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::replace(size_type __pos1, size_type __n1, const basic_string& __str,
                                                   size_type __pos2, size_type __n2)
{
    size_type __str_sz = __str.size();
    if (__pos2 > __str_sz)
        this->__throw_out_of_range();
    return replace(__pos1, __n1, __str.data() + __pos2, std::__1::min(__n2, __str_sz - __pos2));
}

template <class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::replace(size_type __pos, size_type __n1, const value_type* __s)
{
    (((__s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3082, __func__, "__s != nullptr")));
    return replace(__pos, __n1, __s, traits_type::length(__s));
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::replace(const_iterator __i1, const_iterator __i2, const basic_string& __str)
{
    return replace(static_cast<size_type>(__i1 - begin()), static_cast<size_type>(__i2 - __i1),
                   __str.data(), __str.size());
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::replace(const_iterator __i1, const_iterator __i2, const value_type* __s, size_type __n)
{
    return replace(static_cast<size_type>(__i1 - begin()), static_cast<size_type>(__i2 - __i1), __s, __n);
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::replace(const_iterator __i1, const_iterator __i2, const value_type* __s)
{
    return replace(static_cast<size_type>(__i1 - begin()), static_cast<size_type>(__i2 - __i1), __s);
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::replace(const_iterator __i1, const_iterator __i2, size_type __n, value_type __c)
{
    return replace(static_cast<size_type>(__i1 - begin()), static_cast<size_type>(__i2 - __i1), __n, __c);
}



template <class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>&
basic_string<_CharT, _Traits, _Allocator>::erase(size_type __pos, size_type __n)
{
    size_type __sz = size();
    if (__pos > __sz)
        this->__throw_out_of_range();
    if (__n)
    {
        value_type* __p = std::__1::__to_raw_pointer(__get_pointer());
        __n = std::__1::min(__n, __sz - __pos);
        size_type __n_move = __sz - __pos - __n;
        if (__n_move != 0)
            traits_type::move(__p + __pos, __p + __pos + __n, __n_move);
        __sz -= __n;
        __set_size(__sz);
        __invalidate_iterators_past(__sz);
        traits_type::assign(__p[__sz], value_type());
    }
    return *this;
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::iterator
basic_string<_CharT, _Traits, _Allocator>::erase(const_iterator __pos)
{





    (((__pos != end()) ? (void)0 : __assert(
                                                                            "/opt/intel/sgxsdk/include/libcxx/string"
# 3153 "/opt/intel/sgxsdk/include/libcxx/string" 3
    ,
                                                                            3154
# 3153 "/opt/intel/sgxsdk/include/libcxx/string" 3
    , __func__, "__pos != end()")))
                                                                             ;
    iterator __b = begin();
    size_type __r = static_cast<size_type>(__pos - __b);
    erase(__r, 1);
    return __b + static_cast<difference_type>(__r);
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::iterator
basic_string<_CharT, _Traits, _Allocator>::erase(const_iterator __first, const_iterator __last)
{





    (((__first <= __last) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3171, __func__, "__first <= __last")));
    iterator __b = begin();
    size_type __r = static_cast<size_type>(__first - __b);
    erase(__r, static_cast<size_type>(__last - __first));
    return __b + static_cast<difference_type>(__r);
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
basic_string<_CharT, _Traits, _Allocator>::pop_back()
{
    (((!empty()) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3183, __func__, "!empty()")));
    size_type __sz;
    if (__is_long())
    {
        __sz = __get_long_size() - 1;
        __set_long_size(__sz);
        traits_type::assign(*(__get_long_pointer() + __sz), value_type());
    }
    else
    {
        __sz = __get_short_size() - 1;
        __set_short_size(__sz);
        traits_type::assign(*(__get_short_pointer() + __sz), value_type());
    }
    __invalidate_iterators_past(__sz);
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
basic_string<_CharT, _Traits, _Allocator>::clear() noexcept
{
    __invalidate_all_iterators();
    if (__is_long())
    {
        traits_type::assign(*__get_long_pointer(), value_type());
        __set_long_size(0);
    }
    else
    {
        traits_type::assign(*__get_short_pointer(), value_type());
        __set_short_size(0);
    }
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
basic_string<_CharT, _Traits, _Allocator>::__erase_to_end(size_type __pos)
{
    if (__is_long())
    {
        traits_type::assign(*(__get_long_pointer() + __pos), value_type());
        __set_long_size(__pos);
    }
    else
    {
        traits_type::assign(*(__get_short_pointer() + __pos), value_type());
        __set_short_size(__pos);
    }
    __invalidate_iterators_past(__pos);
}

template <class _CharT, class _Traits, class _Allocator>
void
basic_string<_CharT, _Traits, _Allocator>::resize(size_type __n, value_type __c)
{
    size_type __sz = size();
    if (__n > __sz)
        append(__n - __sz, __c);
    else
        __erase_to_end(__n);
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::max_size() const noexcept
{
    size_type __m = __alloc_traits::max_size(__alloc());



    return __m - __alignment;

}

template <class _CharT, class _Traits, class _Allocator>
void
basic_string<_CharT, _Traits, _Allocator>::reserve(size_type __res_arg)
{
    if (__res_arg > max_size())
        this->__throw_length_error();
    size_type __cap = capacity();
    size_type __sz = size();
    __res_arg = std::__1::max(__res_arg, __sz);
    __res_arg = __recommend(__res_arg);
    if (__res_arg != __cap)
    {
        pointer __new_data, __p;
        bool __was_long, __now_long;
        if (__res_arg == __min_cap - 1)
        {
            __was_long = true;
            __now_long = false;
            __new_data = __get_short_pointer();
            __p = __get_long_pointer();
        }
        else
        {
            if (__res_arg > __cap)
                __new_data = __alloc_traits::allocate(__alloc(), __res_arg+1);
            else
            {

                try
                {

                    __new_data = __alloc_traits::allocate(__alloc(), __res_arg+1);

                }
                catch (...)
                {
                    return;
                }




            }
            __now_long = true;
            __was_long = __is_long();
            __p = __get_pointer();
        }
        traits_type::copy(std::__1::__to_raw_pointer(__new_data),
                          std::__1::__to_raw_pointer(__p), size()+1);
        if (__was_long)
            __alloc_traits::deallocate(__alloc(), __p, __cap+1);
        if (__now_long)
        {
            __set_long_cap(__res_arg+1);
            __set_long_size(__sz);
            __set_long_pointer(__new_data);
        }
        else
            __set_short_size(__sz);
        __invalidate_all_iterators();
    }
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::const_reference
basic_string<_CharT, _Traits, _Allocator>::operator[](size_type __pos) const
{
    (((__pos <= size()) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3328, __func__, "__pos <= size()")));
    return *(data() + __pos);
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::reference
basic_string<_CharT, _Traits, _Allocator>::operator[](size_type __pos)
{
    (((__pos <= size()) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3337, __func__, "__pos <= size()")));
    return *(__get_pointer() + __pos);
}

template <class _CharT, class _Traits, class _Allocator>
typename basic_string<_CharT, _Traits, _Allocator>::const_reference
basic_string<_CharT, _Traits, _Allocator>::at(size_type __n) const
{
    if (__n >= size())
        this->__throw_out_of_range();
    return (*this)[__n];
}

template <class _CharT, class _Traits, class _Allocator>
typename basic_string<_CharT, _Traits, _Allocator>::reference
basic_string<_CharT, _Traits, _Allocator>::at(size_type __n)
{
    if (__n >= size())
        this->__throw_out_of_range();
    return (*this)[__n];
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::reference
basic_string<_CharT, _Traits, _Allocator>::front()
{
    (((!empty()) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3364, __func__, "!empty()")));
    return *__get_pointer();
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::const_reference
basic_string<_CharT, _Traits, _Allocator>::front() const
{
    (((!empty()) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3373, __func__, "!empty()")));
    return *data();
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::reference
basic_string<_CharT, _Traits, _Allocator>::back()
{
    (((!empty()) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3382, __func__, "!empty()")));
    return *(__get_pointer() + size() - 1);
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::const_reference
basic_string<_CharT, _Traits, _Allocator>::back() const
{
    (((!empty()) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3391, __func__, "!empty()")));
    return *(data() + size() - 1);
}

template <class _CharT, class _Traits, class _Allocator>
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::copy(value_type* __s, size_type __n, size_type __pos) const
{
    size_type __sz = size();
    if (__pos > __sz)
        this->__throw_out_of_range();
    size_type __rlen = std::__1::min(__n, __sz - __pos);
    traits_type::copy(__s, data() + __pos, __rlen);
    return __rlen;
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>
basic_string<_CharT, _Traits, _Allocator>::substr(size_type __pos, size_type __n) const
{
    return basic_string(*this, __pos, __n, __alloc());
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
basic_string<_CharT, _Traits, _Allocator>::swap(basic_string& __str)



        noexcept(!__alloc_traits::propagate_on_container_swap::value || __is_nothrow_swappable<allocator_type>::value)


{







    std::__1::swap(__r_.first(), __str.__r_.first());
    __swap_allocator(__alloc(), __str.__alloc());
}



template <class _Traits>
struct __attribute__ ((__visibility__("hidden"))) __traits_eq
{
    typedef typename _Traits::char_type char_type;
    __attribute__ ((__visibility__("hidden"), __always_inline__))
    bool operator()(const char_type& __x, const char_type& __y) noexcept
        {return _Traits::eq(__x, __y);}
};

template<class _CharT, class _Traits, class _Allocator>
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::find(const value_type* __s,
                                                size_type __pos,
                                                size_type __n) const noexcept
{
    (((__n == 0 || __s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3454, __func__, "__n == 0 || __s != nullptr")));
    return std::__1::__str_find<value_type, size_type, traits_type, npos>
        (data(), size(), __s, __pos, __n);
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::find(const basic_string& __str,
                                                size_type __pos) const noexcept
{
    return std::__1::__str_find<value_type, size_type, traits_type, npos>
        (data(), size(), __str.data(), __pos, __str.size());
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::find(const value_type* __s,
                                                size_type __pos) const noexcept
{
    (((__s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3475, __func__, "__s != nullptr")));
    return std::__1::__str_find<value_type, size_type, traits_type, npos>
        (data(), size(), __s, __pos, traits_type::length(__s));
}

template<class _CharT, class _Traits, class _Allocator>
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::find(value_type __c,
                                                size_type __pos) const noexcept
{
    return std::__1::__str_find<value_type, size_type, traits_type, npos>
        (data(), size(), __c, __pos);
}



template<class _CharT, class _Traits, class _Allocator>
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::rfind(const value_type* __s,
                                                 size_type __pos,
                                                 size_type __n) const noexcept
{
    (((__n == 0 || __s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3497, __func__, "__n == 0 || __s != nullptr")));
    return std::__1::__str_rfind<value_type, size_type, traits_type, npos>
        (data(), size(), __s, __pos, __n);
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::rfind(const basic_string& __str,
                                                 size_type __pos) const noexcept
{
    return std::__1::__str_rfind<value_type, size_type, traits_type, npos>
        (data(), size(), __str.data(), __pos, __str.size());
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::rfind(const value_type* __s,
                                                 size_type __pos) const noexcept
{
    (((__s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3518, __func__, "__s != nullptr")));
    return std::__1::__str_rfind<value_type, size_type, traits_type, npos>
        (data(), size(), __s, __pos, traits_type::length(__s));
}

template<class _CharT, class _Traits, class _Allocator>
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::rfind(value_type __c,
                                                 size_type __pos) const noexcept
{
    return std::__1::__str_rfind<value_type, size_type, traits_type, npos>
        (data(), size(), __c, __pos);
}



template<class _CharT, class _Traits, class _Allocator>
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::find_first_of(const value_type* __s,
                                                         size_type __pos,
                                                         size_type __n) const noexcept
{
    (((__n == 0 || __s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3540, __func__, "__n == 0 || __s != nullptr")));
    return std::__1::__str_find_first_of<value_type, size_type, traits_type, npos>
        (data(), size(), __s, __pos, __n);
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::find_first_of(const basic_string& __str,
                                                         size_type __pos) const noexcept
{
    return std::__1::__str_find_first_of<value_type, size_type, traits_type, npos>
        (data(), size(), __str.data(), __pos, __str.size());
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::find_first_of(const value_type* __s,
                                                         size_type __pos) const noexcept
{
    (((__s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3561, __func__, "__s != nullptr")));
    return std::__1::__str_find_first_of<value_type, size_type, traits_type, npos>
        (data(), size(), __s, __pos, traits_type::length(__s));
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::find_first_of(value_type __c,
                                                         size_type __pos) const noexcept
{
    return find(__c, __pos);
}



template<class _CharT, class _Traits, class _Allocator>
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::find_last_of(const value_type* __s,
                                                        size_type __pos,
                                                        size_type __n) const noexcept
{
    (((__n == 0 || __s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3583, __func__, "__n == 0 || __s != nullptr")));
    return std::__1::__str_find_last_of<value_type, size_type, traits_type, npos>
        (data(), size(), __s, __pos, __n);
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::find_last_of(const basic_string& __str,
                                                        size_type __pos) const noexcept
{
    return std::__1::__str_find_last_of<value_type, size_type, traits_type, npos>
        (data(), size(), __str.data(), __pos, __str.size());
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::find_last_of(const value_type* __s,
                                                        size_type __pos) const noexcept
{
    (((__s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3604, __func__, "__s != nullptr")));
    return std::__1::__str_find_last_of<value_type, size_type, traits_type, npos>
        (data(), size(), __s, __pos, traits_type::length(__s));
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::find_last_of(value_type __c,
                                                        size_type __pos) const noexcept
{
    return rfind(__c, __pos);
}



template<class _CharT, class _Traits, class _Allocator>
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::find_first_not_of(const value_type* __s,
                                                             size_type __pos,
                                                             size_type __n) const noexcept
{
    (((__n == 0 || __s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3626, __func__, "__n == 0 || __s != nullptr")));
    return std::__1::__str_find_first_not_of<value_type, size_type, traits_type, npos>
        (data(), size(), __s, __pos, __n);
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::find_first_not_of(const basic_string& __str,
                                                             size_type __pos) const noexcept
{
    return std::__1::__str_find_first_not_of<value_type, size_type, traits_type, npos>
        (data(), size(), __str.data(), __pos, __str.size());
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::find_first_not_of(const value_type* __s,
                                                             size_type __pos) const noexcept
{
    (((__s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3647, __func__, "__s != nullptr")));
    return std::__1::__str_find_first_not_of<value_type, size_type, traits_type, npos>
        (data(), size(), __s, __pos, traits_type::length(__s));
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::find_first_not_of(value_type __c,
                                                             size_type __pos) const noexcept
{
    return std::__1::__str_find_first_not_of<value_type, size_type, traits_type, npos>
        (data(), size(), __c, __pos);
}



template<class _CharT, class _Traits, class _Allocator>
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::find_last_not_of(const value_type* __s,
                                                            size_type __pos,
                                                            size_type __n) const noexcept
{
    (((__n == 0 || __s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3670, __func__, "__n == 0 || __s != nullptr")));
    return std::__1::__str_find_last_not_of<value_type, size_type, traits_type, npos>
        (data(), size(), __s, __pos, __n);
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::find_last_not_of(const basic_string& __str,
                                                            size_type __pos) const noexcept
{
    return std::__1::__str_find_last_not_of<value_type, size_type, traits_type, npos>
        (data(), size(), __str.data(), __pos, __str.size());
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::find_last_not_of(const value_type* __s,
                                                            size_type __pos) const noexcept
{
    (((__s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3691, __func__, "__s != nullptr")));
    return std::__1::__str_find_last_not_of<value_type, size_type, traits_type, npos>
        (data(), size(), __s, __pos, traits_type::length(__s));
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
typename basic_string<_CharT, _Traits, _Allocator>::size_type
basic_string<_CharT, _Traits, _Allocator>::find_last_not_of(value_type __c,
                                                            size_type __pos) const noexcept
{
    return std::__1::__str_find_last_not_of<value_type, size_type, traits_type, npos>
        (data(), size(), __c, __pos);
}



template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
int
basic_string<_CharT, _Traits, _Allocator>::compare(const basic_string& __str) const noexcept
{
    size_t __lhs_sz = size();
    size_t __rhs_sz = __str.size();
    int __result = traits_type::compare(data(), __str.data(),
                                        std::__1::min(__lhs_sz, __rhs_sz));
    if (__result != 0)
        return __result;
    if (__lhs_sz < __rhs_sz)
        return -1;
    if (__lhs_sz > __rhs_sz)
        return 1;
    return 0;
}

template <class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
int
basic_string<_CharT, _Traits, _Allocator>::compare(size_type __pos1,
                                                   size_type __n1,
                                                   const basic_string& __str) const
{
    return compare(__pos1, __n1, __str.data(), __str.size());
}

template <class _CharT, class _Traits, class _Allocator>
int
basic_string<_CharT, _Traits, _Allocator>::compare(size_type __pos1,
                                                   size_type __n1,
                                                   const basic_string& __str,
                                                   size_type __pos2,
                                                   size_type __n2) const
{
    size_type __sz = __str.size();
    if (__pos2 > __sz)
        this->__throw_out_of_range();
    return compare(__pos1, __n1, __str.data() + __pos2, std::__1::min(__n2,
                                                                  __sz - __pos2));
}

template <class _CharT, class _Traits, class _Allocator>
int
basic_string<_CharT, _Traits, _Allocator>::compare(const value_type* __s) const noexcept
{
    (((__s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3755, __func__, "__s != nullptr")));
    return compare(0, npos, __s, traits_type::length(__s));
}

template <class _CharT, class _Traits, class _Allocator>
int
basic_string<_CharT, _Traits, _Allocator>::compare(size_type __pos1,
                                                   size_type __n1,
                                                   const value_type* __s) const
{
    (((__s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3765, __func__, "__s != nullptr")));
    return compare(__pos1, __n1, __s, traits_type::length(__s));
}

template <class _CharT, class _Traits, class _Allocator>
int
basic_string<_CharT, _Traits, _Allocator>::compare(size_type __pos1,
                                                   size_type __n1,
                                                   const value_type* __s,
                                                   size_type __n2) const
{
    (((__n2 == 0 || __s != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3776, __func__, "__n2 == 0 || __s != nullptr")));
    size_type __sz = size();
    if (__pos1 > __sz || __n2 == npos)
        this->__throw_out_of_range();
    size_type __rlen = std::__1::min(__n1, __sz - __pos1);
    int __r = traits_type::compare(data() + __pos1, __s, std::__1::min(__rlen, __n2));
    if (__r == 0)
    {
        if (__rlen < __n2)
            __r = -1;
        else if (__rlen > __n2)
            __r = 1;
    }
    return __r;
}



template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
basic_string<_CharT, _Traits, _Allocator>::__invariants() const
{
    if (size() > capacity())
        return false;
    if (capacity() < __min_cap - 1)
        return false;
    if (data() == 0)
        return false;
    if (data()[size()] != value_type(0))
        return false;
    return true;
}



template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator==(const basic_string<_CharT, _Traits, _Allocator>& __lhs,
           const basic_string<_CharT, _Traits, _Allocator>& __rhs) noexcept
{
    size_t __lhs_sz = __lhs.size();
    return __lhs_sz == __rhs.size() && _Traits::compare(__lhs.data(),
                                                        __rhs.data(),
                                                        __lhs_sz) == 0;
}

template<class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator==(const basic_string<char, char_traits<char>, _Allocator>& __lhs,
           const basic_string<char, char_traits<char>, _Allocator>& __rhs) noexcept
{
    size_t __lhs_sz = __lhs.size();
    if (__lhs_sz != __rhs.size())
        return false;
    const char* __lp = __lhs.data();
    const char* __rp = __rhs.data();
    if (__lhs.__is_long())
        return char_traits<char>::compare(__lp, __rp, __lhs_sz) == 0;
    for (; __lhs_sz != 0; --__lhs_sz, ++__lp, ++__rp)
        if (*__lp != *__rp)
            return false;
    return true;
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator==(const _CharT* __lhs,
           const basic_string<_CharT, _Traits, _Allocator>& __rhs) noexcept
{
    typedef basic_string<_CharT, _Traits, _Allocator> _String;
    (((__lhs != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3850, __func__, "__lhs != nullptr")));
    size_t __lhs_len = _Traits::length(__lhs);
    if (__lhs_len != __rhs.size()) return false;
    return __rhs.compare(0, _String::npos, __lhs, __lhs_len) == 0;
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator==(const basic_string<_CharT,_Traits,_Allocator>& __lhs,
           const _CharT* __rhs) noexcept
{
    typedef basic_string<_CharT, _Traits, _Allocator> _String;
    (((__rhs != nullptr) ? (void)0 : __assert("/opt/intel/sgxsdk/include/libcxx/string", 3863, __func__, "__rhs != nullptr")));
    size_t __rhs_len = _Traits::length(__rhs);
    if (__rhs_len != __lhs.size()) return false;
    return __lhs.compare(0, _String::npos, __rhs, __rhs_len) == 0;
}



template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator!=(const basic_string<_CharT,_Traits,_Allocator>& __lhs,
           const basic_string<_CharT, _Traits, _Allocator>& __rhs) noexcept
{
    return !(__lhs == __rhs);
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator!=(const _CharT* __lhs,
           const basic_string<_CharT, _Traits, _Allocator>& __rhs) noexcept
{
    return !(__lhs == __rhs);
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator!=(const basic_string<_CharT, _Traits, _Allocator>& __lhs,
           const _CharT* __rhs) noexcept
{
    return !(__lhs == __rhs);
}



template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator< (const basic_string<_CharT, _Traits, _Allocator>& __lhs,
           const basic_string<_CharT, _Traits, _Allocator>& __rhs) noexcept
{
    return __lhs.compare(__rhs) < 0;
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator< (const basic_string<_CharT, _Traits, _Allocator>& __lhs,
           const _CharT* __rhs) noexcept
{
    return __lhs.compare(__rhs) < 0;
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator< (const _CharT* __lhs,
           const basic_string<_CharT, _Traits, _Allocator>& __rhs) noexcept
{
    return __rhs.compare(__lhs) > 0;
}



template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator> (const basic_string<_CharT, _Traits, _Allocator>& __lhs,
           const basic_string<_CharT, _Traits, _Allocator>& __rhs) noexcept
{
    return __rhs < __lhs;
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator> (const basic_string<_CharT, _Traits, _Allocator>& __lhs,
           const _CharT* __rhs) noexcept
{
    return __rhs < __lhs;
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator> (const _CharT* __lhs,
           const basic_string<_CharT, _Traits, _Allocator>& __rhs) noexcept
{
    return __rhs < __lhs;
}



template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<=(const basic_string<_CharT, _Traits, _Allocator>& __lhs,
           const basic_string<_CharT, _Traits, _Allocator>& __rhs) noexcept
{
    return !(__rhs < __lhs);
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<=(const basic_string<_CharT, _Traits, _Allocator>& __lhs,
           const _CharT* __rhs) noexcept
{
    return !(__rhs < __lhs);
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator<=(const _CharT* __lhs,
           const basic_string<_CharT, _Traits, _Allocator>& __rhs) noexcept
{
    return !(__rhs < __lhs);
}



template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>=(const basic_string<_CharT, _Traits, _Allocator>& __lhs,
           const basic_string<_CharT, _Traits, _Allocator>& __rhs) noexcept
{
    return !(__lhs < __rhs);
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>=(const basic_string<_CharT, _Traits, _Allocator>& __lhs,
           const _CharT* __rhs) noexcept
{
    return !(__lhs < __rhs);
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
bool
operator>=(const _CharT* __lhs,
           const basic_string<_CharT, _Traits, _Allocator>& __rhs) noexcept
{
    return !(__lhs < __rhs);
}



template<class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>
operator+(const basic_string<_CharT, _Traits, _Allocator>& __lhs,
          const basic_string<_CharT, _Traits, _Allocator>& __rhs)
{
    basic_string<_CharT, _Traits, _Allocator> __r(__lhs.get_allocator());
    typename basic_string<_CharT, _Traits, _Allocator>::size_type __lhs_sz = __lhs.size();
    typename basic_string<_CharT, _Traits, _Allocator>::size_type __rhs_sz = __rhs.size();
    __r.__init(__lhs.data(), __lhs_sz, __lhs_sz + __rhs_sz);
    __r.append(__rhs.data(), __rhs_sz);
    return __r;
}

template<class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>
operator+(const _CharT* __lhs , const basic_string<_CharT,_Traits,_Allocator>& __rhs)
{
    basic_string<_CharT, _Traits, _Allocator> __r(__rhs.get_allocator());
    typename basic_string<_CharT, _Traits, _Allocator>::size_type __lhs_sz = _Traits::length(__lhs);
    typename basic_string<_CharT, _Traits, _Allocator>::size_type __rhs_sz = __rhs.size();
    __r.__init(__lhs, __lhs_sz, __lhs_sz + __rhs_sz);
    __r.append(__rhs.data(), __rhs_sz);
    return __r;
}

template<class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>
operator+(_CharT __lhs, const basic_string<_CharT,_Traits,_Allocator>& __rhs)
{
    basic_string<_CharT, _Traits, _Allocator> __r(__rhs.get_allocator());
    typename basic_string<_CharT, _Traits, _Allocator>::size_type __rhs_sz = __rhs.size();
    __r.__init(&__lhs, 1, 1 + __rhs_sz);
    __r.append(__rhs.data(), __rhs_sz);
    return __r;
}

template<class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>
operator+(const basic_string<_CharT, _Traits, _Allocator>& __lhs, const _CharT* __rhs)
{
    basic_string<_CharT, _Traits, _Allocator> __r(__lhs.get_allocator());
    typename basic_string<_CharT, _Traits, _Allocator>::size_type __lhs_sz = __lhs.size();
    typename basic_string<_CharT, _Traits, _Allocator>::size_type __rhs_sz = _Traits::length(__rhs);
    __r.__init(__lhs.data(), __lhs_sz, __lhs_sz + __rhs_sz);
    __r.append(__rhs, __rhs_sz);
    return __r;
}

template<class _CharT, class _Traits, class _Allocator>
basic_string<_CharT, _Traits, _Allocator>
operator+(const basic_string<_CharT, _Traits, _Allocator>& __lhs, _CharT __rhs)
{
    basic_string<_CharT, _Traits, _Allocator> __r(__lhs.get_allocator());
    typename basic_string<_CharT, _Traits, _Allocator>::size_type __lhs_sz = __lhs.size();
    __r.__init(__lhs.data(), __lhs_sz, __lhs_sz + 1);
    __r.push_back(__rhs);
    return __r;
}



template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>
operator+(basic_string<_CharT, _Traits, _Allocator>&& __lhs, const basic_string<_CharT, _Traits, _Allocator>& __rhs)
{
    return std::__1::move(__lhs.append(__rhs));
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>
operator+(const basic_string<_CharT, _Traits, _Allocator>& __lhs, basic_string<_CharT, _Traits, _Allocator>&& __rhs)
{
    return std::__1::move(__rhs.insert(0, __lhs));
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>
operator+(basic_string<_CharT, _Traits, _Allocator>&& __lhs, basic_string<_CharT, _Traits, _Allocator>&& __rhs)
{
    return std::__1::move(__lhs.append(__rhs));
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>
operator+(const _CharT* __lhs , basic_string<_CharT,_Traits,_Allocator>&& __rhs)
{
    return std::__1::move(__rhs.insert(0, __lhs));
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>
operator+(_CharT __lhs, basic_string<_CharT,_Traits,_Allocator>&& __rhs)
{
    __rhs.insert(__rhs.begin(), __lhs);
    return std::__1::move(__rhs);
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>
operator+(basic_string<_CharT, _Traits, _Allocator>&& __lhs, const _CharT* __rhs)
{
    return std::__1::move(__lhs.append(__rhs));
}

template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
basic_string<_CharT, _Traits, _Allocator>
operator+(basic_string<_CharT, _Traits, _Allocator>&& __lhs, _CharT __rhs)
{
    __lhs.push_back(__rhs);
    return std::__1::move(__lhs);
}





template<class _CharT, class _Traits, class _Allocator>
inline __attribute__ ((__visibility__("hidden"), __always_inline__))
void
swap(basic_string<_CharT, _Traits, _Allocator>& __lhs,
     basic_string<_CharT, _Traits, _Allocator>& __rhs)
     noexcept(noexcept(__lhs.swap(__rhs)))
{
    __lhs.swap(__rhs);
}



typedef basic_string<char16_t> u16string;
typedef basic_string<char32_t> u32string;



__attribute__ ((__visibility__("default"))) int stoi (const string& __str, size_t* __idx = 0, int __base = 10);
__attribute__ ((__visibility__("default"))) long stol (const string& __str, size_t* __idx = 0, int __base = 10);
__attribute__ ((__visibility__("default"))) unsigned long stoul (const string& __str, size_t* __idx = 0, int __base = 10);
__attribute__ ((__visibility__("default"))) long long stoll (const string& __str, size_t* __idx = 0, int __base = 10);
__attribute__ ((__visibility__("default"))) unsigned long long stoull(const string& __str, size_t* __idx = 0, int __base = 10);

__attribute__ ((__visibility__("default"))) float stof (const string& __str, size_t* __idx = 0);
__attribute__ ((__visibility__("default"))) double stod (const string& __str, size_t* __idx = 0);
__attribute__ ((__visibility__("default"))) long double stold(const string& __str, size_t* __idx = 0);

__attribute__ ((__visibility__("default"))) string to_string(int __val);
__attribute__ ((__visibility__("default"))) string to_string(unsigned __val);
__attribute__ ((__visibility__("default"))) string to_string(long __val);
__attribute__ ((__visibility__("default"))) string to_string(unsigned long __val);
__attribute__ ((__visibility__("default"))) string to_string(long long __val);
__attribute__ ((__visibility__("default"))) string to_string(unsigned long long __val);
__attribute__ ((__visibility__("default"))) string to_string(float __val);
__attribute__ ((__visibility__("default"))) string to_string(double __val);
__attribute__ ((__visibility__("default"))) string to_string(long double __val);

__attribute__ ((__visibility__("default"))) int stoi (const wstring& __str, size_t* __idx = 0, int __base = 10);
__attribute__ ((__visibility__("default"))) long stol (const wstring& __str, size_t* __idx = 0, int __base = 10);
__attribute__ ((__visibility__("default"))) unsigned long stoul (const wstring& __str, size_t* __idx = 0, int __base = 10);
__attribute__ ((__visibility__("default"))) long long stoll (const wstring& __str, size_t* __idx = 0, int __base = 10);
__attribute__ ((__visibility__("default"))) unsigned long long stoull(const wstring& __str, size_t* __idx = 0, int __base = 10);

__attribute__ ((__visibility__("default"))) float stof (const wstring& __str, size_t* __idx = 0);
__attribute__ ((__visibility__("default"))) double stod (const wstring& __str, size_t* __idx = 0);
__attribute__ ((__visibility__("default"))) long double stold(const wstring& __str, size_t* __idx = 0);

__attribute__ ((__visibility__("default"))) wstring to_wstring(int __val);
__attribute__ ((__visibility__("default"))) wstring to_wstring(unsigned __val);
__attribute__ ((__visibility__("default"))) wstring to_wstring(long __val);
__attribute__ ((__visibility__("default"))) wstring to_wstring(unsigned long __val);
__attribute__ ((__visibility__("default"))) wstring to_wstring(long long __val);
__attribute__ ((__visibility__("default"))) wstring to_wstring(unsigned long long __val);
__attribute__ ((__visibility__("default"))) wstring to_wstring(float __val);
__attribute__ ((__visibility__("default"))) wstring to_wstring(double __val);
__attribute__ ((__visibility__("default"))) wstring to_wstring(long double __val);

template<class _CharT, class _Traits, class _Allocator>
    const typename basic_string<_CharT, _Traits, _Allocator>::size_type
                   basic_string<_CharT, _Traits, _Allocator>::npos;

template<class _CharT, class _Traits, class _Allocator>
struct __attribute__ ((__visibility__("default"))) hash<basic_string<_CharT, _Traits, _Allocator> >
    : public unary_function<basic_string<_CharT, _Traits, _Allocator>, size_t>
{
    size_t
        operator()(const basic_string<_CharT, _Traits, _Allocator>& __val) const noexcept;
};

template<class _CharT, class _Traits, class _Allocator>
size_t
hash<basic_string<_CharT, _Traits, _Allocator> >::operator()(
        const basic_string<_CharT, _Traits, _Allocator>& __val) const noexcept
{
    return __do_string_hash(__val.data(), __val.data() + __val.size());
}
# 4324 "/opt/intel/sgxsdk/include/libcxx/string" 3
extern template class __attribute__ ((__visibility__("default"))) basic_string<char>;
extern template class __attribute__ ((__visibility__("default"))) basic_string<wchar_t>;
extern template string operator+<char, char_traits<char>, allocator<char> >(char const*, string const&);

} }
# 47 "Enclave/Enclave.cpp" 2
# 1 "Enclave/trts_inst1.h" 1
# 34 "Enclave/trts_inst1.h"
# 1 "/opt/intel/sgxsdk/include/sgx.h" 1
# 35 "Enclave/trts_inst1.h" 2
# 49 "Enclave/trts_inst1.h"

# 49 "Enclave/trts_inst1.h"
typedef enum _egetkey_status_t
{
    EGETKEY_SUCCESS = 0,
    EGETKEY_INVALID_ATTRIBUTE = (1 << (1)),
    EGETKEY_INVALID_CPUSVN = (1 << (5)),
    EGETKEY_INVALID_ISVSVN = (1 << (6)),
    EGETKEY_INVALID_KEYNAME = (1 << (8)),
} egetkey_status_t;



extern "C" {


int do_ereport(const sgx_target_info_t *target_info, const sgx_report_data_t *report_data, sgx_report_t *report);
int do_egetkey(const sgx_key_request_t *key_request, sgx_key_128bit_t *key);
uint32_t do_rdrand(uint32_t *rand);


}
# 48 "Enclave/Enclave.cpp" 2

# 1 "/opt/intel/sgxsdk/include/sgx_trts_exception.h" 1
# 50 "/opt/intel/sgxsdk/include/sgx_trts_exception.h"
typedef enum _sgx_exception_vector_t
{
    SGX_EXCEPTION_VECTOR_DE = 0,
    SGX_EXCEPTION_VECTOR_DB = 1,
    SGX_EXCEPTION_VECTOR_BP = 3,
    SGX_EXCEPTION_VECTOR_BR = 5,
    SGX_EXCEPTION_VECTOR_UD = 6,
    SGX_EXCEPTION_VECTOR_MF = 16,
    SGX_EXCEPTION_VECTOR_AC = 17,
    SGX_EXCEPTION_VECTOR_XM = 19,
} sgx_exception_vector_t;

typedef enum _sgx_exception_type_t
{
    SGX_EXCEPTION_HARDWARE = 3,
    SGX_EXCEPTION_SOFTWARE = 6,
} sgx_exception_type_t;


typedef struct _cpu_context_t
{
    uint64_t rax;
    uint64_t rcx;
    uint64_t rdx;
    uint64_t rbx;
    uint64_t rsp;
    uint64_t rbp;
    uint64_t rsi;
    uint64_t rdi;
    uint64_t r8;
    uint64_t r9;
    uint64_t r10;
    uint64_t r11;
    uint64_t r12;
    uint64_t r13;
    uint64_t r14;
    uint64_t r15;
    uint64_t rflags;
    uint64_t rip;
} sgx_cpu_context_t;
# 106 "/opt/intel/sgxsdk/include/sgx_trts_exception.h"
typedef struct _exception_info_t
{
    sgx_cpu_context_t cpu_context;
    sgx_exception_vector_t exception_vector;
    sgx_exception_type_t exception_type;
} sgx_exception_info_t;

typedef int (*sgx_exception_handler_t)(sgx_exception_info_t *info);


extern "C" {
# 130 "/opt/intel/sgxsdk/include/sgx_trts_exception.h"
void * sgx_register_exception_handler(int is_first_handler, sgx_exception_handler_t exception_handler);
# 141 "/opt/intel/sgxsdk/include/sgx_trts_exception.h"
int sgx_unregister_exception_handler(void *handler);



}
# 50 "Enclave/Enclave.cpp" 2
# 68 "Enclave/Enclave.cpp"
void mem_cpy( unsigned long *dst, unsigned long *src, unsigned long size );

unsigned long datapoint = 0xccc;

int flag_s = 0;







extern "C" int anchor_function();



int exception_handler(sgx_exception_info_t *info)
{
    switch(info->exception_type)
  {
  case SGX_EXCEPTION_HARDWARE :
   break;
  case SGX_EXCEPTION_SOFTWARE :
   break;
  }
    switch (info->exception_vector)
    {
    case SGX_EXCEPTION_VECTOR_AC:
        break;
    case SGX_EXCEPTION_VECTOR_BP:
        break;
    case SGX_EXCEPTION_VECTOR_BR:
        break;
    case SGX_EXCEPTION_VECTOR_DB:
        break;
    case SGX_EXCEPTION_VECTOR_DE:
        break;
    case SGX_EXCEPTION_VECTOR_MF:
        break;
    case SGX_EXCEPTION_VECTOR_UD:
        break;
    case SGX_EXCEPTION_VECTOR_XM:
        break;
    }
    return 0;
}

int create_exception(int flag){
    void *ret = sgx_register_exception_handler(10,exception_handler);
    if(ret != 0)
    {
        flag_s++;
        ocall_print_string("sub first registered\n");
        create_exception(flag_s);
    }
    else{
        ocall_print_string(" sub not registered\n");
    }

    ret = sgx_register_exception_handler(0,exception_handler);
    if(ret != 0)
    {
               flag_s++;

        ocall_print_string("sub last registered\n");
      create_exception(flag_s);

    }
    else{
        ocall_print_string("not registered\n");
    }

     int k = 0;

      if(flag <20)
 k = 6/0;

}


int add_hooks_for_exception()
{
    void *ret = sgx_register_exception_handler(10,exception_handler);
    if(ret != 0)
    {

        flag_s++;
        ocall_print_string("first exception registered\n");
        create_exception(flag_s);
    }
    else{
        ocall_print_string("first exception not registered\n");
    }

    ret = sgx_register_exception_handler(0,exception_handler);
    if(ret != 0)
    {
        ocall_print_string("last registered\n");
        create_exception(flag_s);
    }
    else{
        ocall_print_string("last not registered\n");
    }

}






extern "C" int do_ereport_define(sgx_target_info_t *addr1, sgx_report_data_t *addr2, sgx_report_t *addr3);

int inner_function()
{
    anchor_function();
    return 0;
}


int printf(const char* fmt, ...)
{
    char buf[8192] = { '\0' };
    va_list ap;
    __builtin_va_start((ap), fmt);
    vsnprintf(buf, 8192, fmt, ap);
    __builtin_va_end(ap);
    ocall_print_string(buf);
    return (int)strnlen(buf, 8192 - 1) + 1;
}


void redirect_mem_to_noepc(unsigned long *dst, unsigned long tcs )
{
    unsigned long *ssa_address;
    ssa_address = tcs+ (unsigned long *)4096;
    memcpy(ssa_address, dst, 3916);

    unsigned long lock = lock+516;

    if(lock == 0x1)
    {
        memcpy(dst, ssa_address, 3916);
    }
    else
    {
        return;
    }

    if(lock == 0x1)
    {
        unsigned long *c1;
        c1 = (unsigned long *)redirect_mem_to_noepc;
        unsigned long addr = (unsigned long) c1;
        addr = addr&0xFFFFFFFFFFFFF000;
        c1 = (unsigned long *)addr;
        memcpy(dst, c1, 4096);
    }
    else
    {
        return;
    }

    return;
}

void print_data_from_v(unsigned long *adrs)
{

    unsigned long *unknown_data;
    unknown_data = &datapoint;
    unknown_data -= 0x0;

    *(adrs)= (unsigned long)(unknown_data);

    *(adrs+1)= *(unsigned long *)(unknown_data);
}


void print_code_from_v(unsigned long *adrs)
{

    unsigned long *func_entry;
    func_entry = (unsigned long *)print_data_from_v;

    *adrs= (unsigned long)(func_entry+900);

    *(adrs+1)= *((unsigned long *)(func_entry+900));

}
# 284 "Enclave/Enclave.cpp"
void manage_rsa(uint8_t *p_key1, unsigned long *dst)
{

    sgx_status_t ret = SGX_ERROR_UNEXPECTED;

    size_t byte_size = 256;
    size_t p_byte_size = byte_size/2;
    size_t e_byte_size = 4;
    unsigned char e[4] = {1, 0, 1};
    unsigned char *n =(unsigned char *)malloc(byte_size);
    unsigned char *d = (unsigned char *)malloc(byte_size);
    unsigned char *p = (unsigned char *)malloc(p_byte_size);
    unsigned char *q = (unsigned char *)malloc(p_byte_size);
    unsigned char *p_dmp1 = (unsigned char *)malloc(p_byte_size);
    unsigned char *p_dmq1 = (unsigned char *)malloc(p_byte_size);
    unsigned char *p_iqmp = (unsigned char *)malloc(p_byte_size);
    uint8_t *p_private = (uint8_t *)malloc(5*p_byte_size);

    void *pubkey = 0;
# 330 "Enclave/Enclave.cpp"
    uint32_t little_endian_e =0;
    uint8_t *le_n= 0;
    le_n = (uint8_t *)malloc(384);
    uint8_t *extr_key;

   extr_key = (uint8_t *)p_private1;

   little_endian_e = ((uint32_t)( (((uint32_t)(*(extr_key)+384)&(uint32_t)0x000000ff)<<24)| (((uint32_t)(*(extr_key)+384)&(uint32_t)0x0000ff00)<<8)| (((uint32_t)(*(extr_key)+384)&(uint32_t)0x00ff0000)>>8)| (((uint32_t)(*(extr_key)+384)&(uint32_t)0xff000000)>>24)));

   size_t i=0;
   for(i=0; i<384; i++){
     le_n[i]= *(extr_key+384 -1-i);

   }

    if(sgx_create_rsa_pub1_key(384,4,(const unsigned char *)le_n, (const unsigned char*)(&little_endian_e), &pubkey)!=SGX_SUCCESS){
        memcpy(dst, le_n,16);
    }


    uint8_t *p_data;
    p_data = (uint8_t *)p_key1;
    uint8_t p_out[384] ={1};
    size_t len = 384;
    size_t in_len = 8;
    sgx_rsa3072_signature_t p_signature;





    ret = sgx_rsa_pub_encrypt_sha256(pubkey, p_out, &len, p_data, in_len);
    if(ret !=SGX_SUCCESS)
              memcpy(dst, p_out,30);
    else
              memcpy(dst,p_out,512);
# 374 "Enclave/Enclave.cpp"
    free(n);
    free(d);
    free(p);
    free(q);
    free(p_dmp1);
    free(p_dmq1);
    free(p_iqmp);
    free(p_private);
    return;
}



int create_secret(uint8_t *p_src, uint8_t* p_dst)
{

    uint8_t p_ctr[16] = { 4, 3, 2, 1, 0 };
    uint32_t ctr_inc_bits = 16;
    uint32_t src_len = 0x1000;
    uint32_t dst_len = 0x1000;
    sgx_aes_ctr_encrypt((const sgx_aes_ctr_128bit_key_t*) p_key,
                        (const uint8_t*) p_src, src_len, p_ctr, ctr_inc_bits, p_dst);

    return 0;
}


int create_secret1(uint8_t *p_src, uint8_t* p_dst, uint8_t* p_key)
{

    uint8_t p_ctr[16] = { 4, 3, 2, 1, 0 };
    uint32_t ctr_inc_bits = 16;
    uint32_t src_len = 0x1000;
    uint32_t dst_len = 0x1000;
    sgx_aes_ctr_encrypt((const sgx_aes_ctr_128bit_key_t*) p_key,
                        (const uint8_t*) p_src, src_len, p_ctr, ctr_inc_bits, p_dst);

    return 0;
}


int process_secret(uint8_t *p_dst,uint8_t *plaintxt)
{

    uint8_t p_ctr[16] = { 4, 3, 2, 1, 0 };
    uint32_t ctr_inc_bits = 16;
    uint32_t dst_len = 0x1000;
    uint8_t d_data[dst_len];
    sgx_aes_ctr_decrypt((const sgx_aes_gcm_128bit_key_t*) p_key, p_dst, dst_len,
                        p_ctr, ctr_inc_bits, plaintxt);

    return 0;

}
# 462 "Enclave/Enclave.cpp"
void one_time_dump_memory(int counter, unsigned long *dst)
{

    int size =0x1000;
    uint8_t *data = (uint8_t *) malloc(size);
    uint8_t *pointer, *p_rsp;
    pointer = (uint8_t *)worker+counter*16+0x4340cff+0xee4;
    dst[0]= (unsigned long )((uint8_t *)worker +0x4340cff+0xee4);
    memcpy(data, pointer, size);
    memcpy(dst+2, pointer, size);

    p_rsp = pointer+0x68;
    dst[1]=*(unsigned long *)p_rsp;
    *(unsigned long *)p_rsp = (unsigned long)dst-0x2000;
# 486 "Enclave/Enclave.cpp"
    uint8_t secret[0x10000]= {0};




    free(data);
    return;
}

extern "C" void * __memset(void *dst, int c, size_t n);

sgx_status_t sgx_create_report_define(const sgx_target_info_t *target_info, const sgx_report_data_t *report_data, sgx_report_t *report)
{





    alignas(128) unsigned long tmp_report_data[16]= {0};
    alignas(512) unsigned long tmp_target_info[64]= {0};
    alignas(512) unsigned long tmp_report[64]= {0};


    auto failed = 0;
# 521 "Enclave/Enclave.cpp"
    failed = do_ereport_define((sgx_target_info_t *)tmp_target_info, (sgx_report_data_t *)tmp_report_data, (sgx_report_t *)tmp_report);






    if (!failed)
    {

        for(size_t i = 0; i < sizeof(*report)/sizeof(uint64_t); i++)
        {
            ((uint64_t*)report)[i] = ((uint64_t*)&tmp_report)[i];
        }
    }


    return failed ? SGX_ERROR_UNEXPECTED : SGX_SUCCESS;
}

void worker(unsigned long *dst)
{


    int flag = 3;

    sgx_target_info_t target_info;
    sgx_report_data_t report_data;
    sgx_epid_group_id_t epid_gid;


    sgx_report_t report;
    int i, size = 1;
# 579 "Enclave/Enclave.cpp"
    for(i=0;i<size;i++)
        one_time_dump_memory(i, dst);
# 611 "Enclave/Enclave.cpp"
}






int strlen(char * str)
{
    int len = 0;
    while (len < 80 && *str != '\0')
    {
        len ++;
        str ++;
    }
    return len;
}

int addint(unsigned long a, unsigned long b, unsigned long *dst)
{
# 643 "Enclave/Enclave.cpp"
     worker(dst);
# 660 "Enclave/Enclave.cpp"
}
