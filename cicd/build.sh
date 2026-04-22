#!/bin/bash
set -e
cd src
make clean
make build
mkdir -p ../usr/bin
cp max_value ../usr/bin/
