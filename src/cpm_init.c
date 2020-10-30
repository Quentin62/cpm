#include <stdlib.h> // for NULL
#include <R_ext/Rdynload.h>

/* FIXME: 
 Check these declarations against the C/Fortran source code.
 */

/* .C calls */
extern void cpmDetectChange(void *, void *, void *, void *, void *, void *, void *, void *, void *, void *);
extern void cpmDetectChangeBatch(void *, void *, void *, void *, void *);
extern void cpmMLEBartlett(void *, void *, void *, void *);
extern void cpmMLECVM(void *, void *, void *, void *);
extern void cpmMLEFET(void *, void *, void *, void *, void *, void *, void *);
extern void cpmMLEJoint(void *, void *, void *, void *, void *, void *, void *);
extern void cpmMLEKS(void *, void *, void *, void *, void *, void *);
extern void cpmMLEMood(void *, void *, void *, void *, void *, void *, void *);
extern void cpmMLEMW(void *, void *, void *, void *, void *, void *, void *);
extern void cpmMLEStudent(void *, void *, void *, void *, void *, void *, void *);
extern void cpmProcessStream(void *, void *, void *, void *, void *, void *, void *, void *, void *, void *, void *);

static const R_CMethodDef CEntries[] = {
  {"cpmDetectChange",      (DL_FUNC) &cpmDetectChange,      10},
  {"cpmDetectChangeBatch", (DL_FUNC) &cpmDetectChangeBatch,  5},
  {"cpmMLEBartlett",       (DL_FUNC) &cpmMLEBartlett,        4},
  {"cpmMLECVM",            (DL_FUNC) &cpmMLECVM,             4},
  {"cpmMLEFET",            (DL_FUNC) &cpmMLEFET,             7},
  {"cpmMLEJoint",          (DL_FUNC) &cpmMLEJoint,           7},
  {"cpmMLEKS",             (DL_FUNC) &cpmMLEKS,              6},
  {"cpmMLEMood",           (DL_FUNC) &cpmMLEMood,            7},
  {"cpmMLEMW",             (DL_FUNC) &cpmMLEMW,              7},
  {"cpmMLEStudent",        (DL_FUNC) &cpmMLEStudent,         7},
  {"cpmProcessStream",     (DL_FUNC) &cpmProcessStream,     11},
  {NULL, NULL, 0}
};

void R_init_cpm(DllInfo *dll)
{
  R_registerRoutines(dll, CEntries, NULL, NULL, NULL);
  R_useDynamicSymbols(dll, FALSE);
}