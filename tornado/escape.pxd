cdef bint PY3
cdef tuple _UTF8_TYPES
cdef tuple _BASESTRING_TYPES
cdef object unicode_type
cdef object basestring_type

cpdef recursive_unicode(obj)
cpdef to_basestring(value)
cpdef bytes utf8(value)

