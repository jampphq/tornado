cimport cython as cy

cdef bint PY3
cdef object _normalized_headers
cdef object __marker
cdef object native_str
cdef object deepcopy

cdef object _VERSION_RE, _RESPONSE_LINE_RE

cpdef object parse_response_start_line(line)
cpdef object parse_request_start_line(line)

@cy.locals(uri_arguments=dict, l=list)
cpdef parse_body_arguments(content_type, body, dict arguments, dict files, headers=*)

cdef class HTTPHeaders(object):
    cdef public dict _dict
    cdef public dict _as_list
    cdef object _last_key

    cpdef add(self, name, value)
    cpdef parse_line(self, line)
