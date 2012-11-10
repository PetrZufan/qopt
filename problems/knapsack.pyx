
from Problem cimport *

# ctypedef float (*evaluator_t) (char*,int)
# ctypedef void (*repairer_t) (char*,int)


# cdef class Problem:
#     cdef evaluator_t evaluator
#     cdef repairer_t repairer

cdef extern from "knapsack.h":
    void c_repairKnapsack "repairKnapsack" (char *x, int)
    float c_fknapsack "fknapsack" (char *, int)

cdef class KnapsackProblem(Problem):
    def __cinit__(self):
        self.evaluator = c_fknapsack
        self.repairer = c_repairKnapsack

