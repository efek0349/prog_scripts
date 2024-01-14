#!/bin/sh
git clone https://github.com/openboardview/openboardview.git

cd openboardview

cmake -B build -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr -D CMAKE_CXX_FLAGS="-L/usr/X11R6/lib -I/usr/X11R6/include"

make -C build

#run
./build/src/openboardview/openboardview 
