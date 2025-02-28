#include "Enclave_u.h"
#include <errno.h>

typedef struct ms_addint_t {
	int ms_retval;
	unsigned long int ms_a;
	unsigned long int ms_b;
	unsigned long int* ms_outaddr;
} ms_addint_t;

typedef struct ms_ocall_print_string_t {
	const char* ms_str;
} ms_ocall_print_string_t;

static sgx_status_t SGX_CDECL Enclave_ocall_print_string(void* pms)
{
	ms_ocall_print_string_t* ms = SGX_CAST(ms_ocall_print_string_t*, pms);
	ocall_print_string(ms->ms_str);

	return SGX_SUCCESS;
}

static const struct {
	size_t nr_ocall;
	void * table[1];
} ocall_table_Enclave = {
	1,
	{
		(void*)Enclave_ocall_print_string,
	}
};
sgx_status_t addint(sgx_enclave_id_t eid, int* retval, unsigned long int a, unsigned long int b, unsigned long int* outaddr)
{
	sgx_status_t status;
	ms_addint_t ms;
	ms.ms_a = a;
	ms.ms_b = b;
	ms.ms_outaddr = outaddr;
	status = sgx_ecall(eid, 0, &ocall_table_Enclave, &ms);
	if (status == SGX_SUCCESS && retval) *retval = ms.ms_retval;
	return status;
}

