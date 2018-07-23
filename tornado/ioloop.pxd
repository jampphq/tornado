cdef object partial
cdef object wrap
cdef object Real
cdef object asyncio
cdef object time
cdef object heapq
cdef object get_ident
cdef double _POLL_TIMEOUT

cdef class _Timeout:
    cdef public double deadline
    cdef public long long seqno
    cdef public object callback
