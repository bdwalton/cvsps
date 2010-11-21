#!/bin/sh

aclocal -I gnulib/m4
autoconf -I gnulib/m4
autoheader
automake --add-missing --foreign
git submodule update --init $dir
.gnulib/gnulib-tool --update
