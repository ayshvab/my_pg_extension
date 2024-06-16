#include "postgres.h"
#include "fmgr.h"
#include "access/tableam.h"

PG_MODULE_MAGIC;

const TableAmRoutine memam_methods = {
  .type = T_TableAmRoutine,
};

PG_FUNCTION_INFO_V1(mem_tableam_handler);
Datum mem_tableam_handler(PG_FUNCTION_ARGS) {
  PG_RETURN_POINTER(&memam_methods);
}

