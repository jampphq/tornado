cimport cython as cy

cdef bint PY3

cpdef object parse_response_start_line(line)
cpdef object parse_request_start_line(line)

@cy.locals(uri_arguments=dict)
cpdef parse_body_arguments(content_type, body, dict arguments, files, headers=*)
