#!/bin/sh

aclocal -I gnulib/m4
autoconf -I gnulib/m4
autoheader
automake --add-missing --foreign
