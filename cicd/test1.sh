#!/bin/bash
set -e

echo "=== TEST 1: Корректный ввод ==="

INPUT="5
1 7 3 9 2
"

EXPECTED="9"

OUTPUT=$(echo -e "$INPUT" | ./usr/bin/max_value)

echo "$OUTPUT"

if [[ "$OUTPUT" == *"$EXPECTED"* ]]; then
  echo "Test 1 passed"
else
  echo "Test 1 failed"
  exit 1
fi

