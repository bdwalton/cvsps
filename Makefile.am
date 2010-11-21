# all for gnulib
ACLOCAL_AMFLAGS = -I gnulib/m4
AM_CPPFLAGS = -I$(top_builddir)/gnulib -I$(top_srcdir)/gnulib
LDADD = gnulib/libgnu.a
SUBDIRS = gnulib

bin_PROGRAMS = cvsps
cvsps_SOURCES = cache.c cap.c cvs_direct.c cvsps.c list_sort.c stats.c util.c
cvsps_SOURCES += cbtcommon/debug.c cbtcommon/sio.c cbtcommon/text_util.c
cvsps_SOURCES += cbtcommon/hash.c cbtcommon/tcpsocket.c
