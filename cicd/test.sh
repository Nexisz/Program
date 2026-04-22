#!/bin/bash
set -e

echo "=== RUNNING ALL TESTS ==="

bash cicd/tests/test1.sh
bash cicd/tests/test2.sh
bash cicd/tests/test3.sh

echo "All tests passed"
