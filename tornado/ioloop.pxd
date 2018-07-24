cdef object partial
cdef object wrap
cdef object Real
cdef object asyncio
cdef object time
cdef object heapq
cdef object get_ident
cdef double _POLL_TIMEOUT

from tornado.concurrent cimport is_future, future_set_exc_info, future_add_done_callback

cdef class _Timeout:
    cdef public double deadline
    cdef public long long seqno
    cdef public object callback
