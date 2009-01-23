AC_PREREQ([2.63])
AC_INIT([cvsps], [2.1])
AC_CONFIG_SRCDIR([util.h])
AC_CONFIG_HEADERS([config.h])

# We're using automake too
AM_INIT_AUTOMAKE(cvsps,2.1)

# Checks for programs.
AC_PROG_CC
AC_PROG_INSTALL

# Checks for libraries.
AC_CHECK_LIB([z], [gzputs])
AC_SEARCH_LIBS([gethostbyname], [nsl])
AC_SEARCH_LIBS([bind], [socket])

# Checks for header files.
AC_CHECK_HEADERS([arpa/inet.h fcntl.h limits.h netdb.h netinet/in.h stdlib.h string.h strings.h sys/socket.h sys/time.h unistd.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_TYPE_PID_T
AC_TYPE_SIZE_T
AC_TYPE_SSIZE_T

# Checks for library functions.
AC_FUNC_FORK
AC_FUNC_MALLOC
AC_FUNC_MKTIME
AC_CHECK_FUNCS([gethostbyname gettimeofday memmove memset mkdir regcomp setenv socket strchr strdup strerror strrchr strstr strsep tzset])

AC_CONFIG_FILES([Makefile])
AC_OUTPUT

