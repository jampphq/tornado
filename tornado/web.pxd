cimport cython as cy

cdef class RequestHandler(object):
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

    cpdef compute_etag(self)
    cpdef set_etag_header(self)
    cpdef check_etag_header(self)
    cpdef require_setting(self, name, feature=*)

    cpdef _get_argument(self, name, default, source, bint strip=*)
    cpdef _get_arguments(self, name, source, bint strip=*)
    cpdef decode_argument(self, value, name=*)

    cpdef _convert_header_value(self, value)
