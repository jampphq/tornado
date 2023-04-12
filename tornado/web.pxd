cimport cython as cy

cdef class _RequestHandler(object):
    cdef dict __dict__

    cdef public bint _headers_written
    cdef public bint _finished
    cdef public bint _auto_finish

    cdef public int _status_code
    cdef public object _reason
    cdef public list _write_buffer

    cdef public object application
    cdef public object request
    cdef object _ui
    cdef public list _transforms
    cdef public object _prepared_future
    cdef public object _headers
    cdef public list path_args
    cdef public dict path_kwargs

    @cy.locals(content_length=cy.Py_ssize_t)
    cpdef finish(self, chunk=*)

    cdef _get_argument(self, name, default, source, bint strip=*)
    cdef _get_arguments(self, name, source, bint strip=*)
    cdef _convert_header_value(self, value)