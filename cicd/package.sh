#!/bin/bash
set -e

mkdir -p build/max-value_1.0/DEBIAN
mkdir -p build/max-value_1.0/usr/bin

cp DEBIAN/control build/max-value_1.0/DEBIAN/
cp usr/bin/max_value build/max-value_1.0/usr/bin/

dpkg-deb --build build/max-value_1.0
