#!/bin/sh

set -e

echo '=== Running meson at the configure stage'
meson build \
	-Dwith_docs=false \
	-Dwith_manpages=disabled \
	-Dpython_name=python3 \
	-Dwith_py2=false \
	-Ddeveloper_build=false \
	-Dtest_installed_lib=true \

echo '=== Changing into the "build" directory'
cd build

echo '=== Running "meson test"'
meson test

echo '=== Seems fine!'
