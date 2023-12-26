#!/bin/sh

make clean

rm -r dist_Saeb

rm configure


bash autogen.sh

./configure --with-netcdf=/usr/lib/x86_64-linux-gnu --prefix=$(pwd)/dist_Saeb

make FCFLAGS="-I/usr/include -ffree-line-length-none"

make install

