#!/bin/bash
set -e

echo "================ TEST 1: Корректный ввод ================"

run_test() {
  INPUT="5
1 7 3 9 2"

  EXPECTED="9"

  OUTPUT=$(echo -e "$INPUT" | ./usr/bin/max_value)

  echo "$OUTPUT"

  if [[ "$OUTPUT" == *"$EXPECTED"* ]]; then
    echo "✔️ TEST 1 PASSED"
  else
    echo "✖️ TEST 1 FAILED"
    exit 1
  fi
}

run_test
