#!/bin/bash

cd hwloc
./autogen.sh
./configure --enable-static --disable-shared LDFLAGS="--static"
make LDFLAGS=-all-static -j`nproc`
mv hwloc/.libs/* ../lib
cd ..
