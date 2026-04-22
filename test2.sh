#!/bin/bash
set -e

echo "================ TEST 2: Некорректный ввод ================"

run_case() {
  NAME=$1
  INPUT=$2
  EXPECTED=$3

  echo ""
  echo "----- $NAME -----"

  OUTPUT=$(echo -e "$INPUT" | ./usr/bin/max_value || true)

  echo "$OUTPUT"

  if [[ "$OUTPUT" == *"$EXPECTED"* ]]; then
    echo "✔️ $NAME PASSED"
  else
    echo "✖️ $NAME FAILED"
    exit 1
  fi
}

############################
# CASE 1
############################
run_case "CASE 1: n = 0" "0" "Некорректный размер массива"

############################
# CASE 2
############################
run_case "CASE 2: большое число" "1
9999999999999999999999" "Ошибка ввода"

############################
# CASE 3
############################
run_case "CASE 3: буквы" "3
a b c" "Ошибка ввода"

echo ""
echo "✔️ TEST 2 ALL CASES PASSED"
