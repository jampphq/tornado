cdef class Runner:
    cdef object __weakref__
    cdef dict __dict__

    cdef public object gen
    cdef public object result_future
    cdef public object future
    cdef public object yield_point
    cdef public set pending_callbacks
    cdef public dict results
    cdef public bint running
    cdef public bint finished
    cdef public bint had_exception
    cdef public object io_loop
    cdef public object stack_context_deactivate

cpdef convert_yielded(yielded)
cpdef _contains_yieldpoint(children)

from tornado.concurrent cimport (is_future, future_set_exc_info,
                                 future_add_done_callback, future_set_result_unless_cancelled)
