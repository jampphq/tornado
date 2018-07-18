cdef object ReturnTrue
cdef object ReturnFalse
cdef bint PY3

cdef object Future

from tornado.concurrent cimport (future_add_done_callback,
                                 future_set_result_unless_cancelled)

from tornado.escape cimport utf8

from tornado cimport httputil
