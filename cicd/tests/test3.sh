#!/bin/bash
set -e

echo "================ TEST 3: Проверка точного значения ================"

INPUT="5
10 20 30 40 50"

EXPECTED="50"

OUTPUT=$(echo -e "$INPUT" | ./usr/bin/max_value)

echo "$OUTPUT"

if [[ "$OUTPUT" == *"$EXPECTED"* ]]; then
  echo "✔️ TEST 3 PASSED"
else
  echo "✖️ TEST 3 FAILED"
  exit 1
fi
