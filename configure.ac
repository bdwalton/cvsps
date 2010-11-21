AC_PREREQ([2.63])
AC_INIT([cvsps], [2.1])
AC_CONFIG_SRCDIR([util.h])
AC_CONFIG_HEADERS([config.h])


# This is a slightly modified version of CHECK_ZLIB as provided under the GPL
# by Loic Dachary at http://autoconf-archive.cryp.to/check_zlib.html
# The GPL may be found at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt
# I am not included the file with this project since the project is not mine.
# 2009-01-23
# -Ben Walton <bwalton@opencsw.org>

#this should be a safe default for most systems that ship a zlib by default.
ZLIB_HOME=/usr/

AC_DEFUN([CHECK_ZLIB],
#
# Handle user hints
#
[AC_MSG_CHECKING(for zlib)
AC_ARG_WITH(zlib,
[  --with-zlib=DIR	root directory path of zlib installation [defaults to /usr]],
[if test "$withval" != no ; then
  AC_MSG_RESULT($withval)
  if test -d "$withval"
  then
    ZLIB_HOME="$withval"
  else
	AC_MSG_ERROR([$withval is not a valid zlib dir.])
  fi
else
	AC_MSG_ERROR([You can't disable use of zlib])
fi])

# Locate zlib, if wanted
if test -n "${ZLIB_HOME}"
then
        ZLIB_OLD_LDFLAGS=$LDFLAGS
        ZLIB_OLD_CPPFLAGS=$LDFLAGS
        LDFLAGS="$LDFLAGS -L${ZLIB_HOME}/lib"
        CPPFLAGS="$CPPFLAGS -I${ZLIB_HOME}/include"
        AC_LANG_SAVE
        AC_LANG_C
        AC_CHECK_LIB(z, inflateEnd, [zlib_cv_libz=yes], [zlib_cv_libz=no])
        AC_CHECK_HEADER(zlib.h, [zlib_cv_zlib_h=yes], [zlib_cv_zlib_h=no])
        AC_LANG_RESTORE
        if test "$zlib_cv_libz" = "yes" -a "$zlib_cv_zlib_h" = "yes"
        then
                #
                # If both library and header were found, use them
                #
                AC_CHECK_LIB(z, inflateEnd)
                AC_MSG_CHECKING(zlib in ${ZLIB_HOME})
                AC_MSG_RESULT(ok)
        else
                #
                # If either header or library was not found, revert and bomb
                #
                AC_MSG_CHECKING(zlib in ${ZLIB_HOME})
                LDFLAGS="$ZLIB_OLD_LDFLAGS"
                CPPFLAGS="$ZLIB_OLD_CPPFLAGS"
                AC_MSG_RESULT(failed)
                AC_MSG_ERROR(specify a valid zlib installation with --with-zlib=DIR)
        fi
fi

])

# We're using automake too
AM_INIT_AUTOMAKE(cvsps,2.1)

# Checks for programs.
AC_PROG_CC
gl_EARLY
AC_PROG_RANLIB
AC_PROG_INSTALL

gl_INIT

# Checks for libraries.
CHECK_ZLIB()
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

AC_CONFIG_FILES([Makefile gnulib/Makefile])
AC_OUTPUT

