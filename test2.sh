#!/bin/bash
set -e

echo "=== TEST 2: Некорректный ввод ==="

############################
# CASE 1: n = 0
############################

INPUT="0
"

EXPECTED="Некорректный размер массива"

OUTPUT=$(echo -e "$INPUT" | ./usr/bin/max_value || true)

echo "$OUTPUT"

if [[ "$OUTPUT" == *"$EXPECTED"* ]]; then
  echo "Test 2.1 passed"
else
  echo "Test 2.1 failed"
  exit 1
fi


############################
# CASE 2: Слишком большое число
############################

INPUT="1
9999999999999999999999
"

EXPECTED="Ошибка ввода элементов массива"

OUTPUT=$(echo -e "$INPUT" | ./usr/bin/max_value || true)

echo "$OUTPUT"

if [[ "$OUTPUT" == *"$EXPECTED"* ]]; then
  echo "Test 2.2 passed"
else
  echo "Test 2.2 failed"
fi


############################
# CASE 3: Буквы вместо чисел
############################

INPUT="3
a b c
"

EXPECTED="Ошибка ввода элементов массива"

OUTPUT=$(echo -e "$INPUT" | ./usr/bin/max_value || true)

echo "$OUTPUT"

if [[ "$OUTPUT" == *"$EXPECTED"* ]]; then
  echo "Test 2.3 passed"
else
  echo "Test 2.3 failed"
fi

echo "Test 2 fully passed"
