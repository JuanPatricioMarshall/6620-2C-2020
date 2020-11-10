#! /bin/bash

FAILED_TESTS=0
TOTAL_TESTS=0

test_file() {
	let TOTAL_TESTS=$TOTAL_TESTS+1
	if [ ! -f "$1" ]
	then
		echo -e "\e[31mNo file $1\e[0m"
	fi
	if [ ! -f "$2" ]
	then
		echo -e "\e[31mNo file $2\e[0m"	
	fi
	
	DIFF=$(diff $1 $2)
	if [ "$DIFF" != "" ]
	then
			let FAILED_TESTS=$FAILED_TESTS+1
			echo -e "\e[1;31mTest failed!\e[0m"
	else
			echo -e "\e[1;32mTest passed\e[0m"
	fi
	
}

execute_program() {
	./tp1 -i $1 -o $2
}

make_test() {
	echo "Test: $1"

	> "./tests/test-${1}_in"
	> "./tests/test-${1}_out"
	> "./tests/test-${1}_expected"

	printf "$2" >> "./tests/test-${1}_in"
	printf "$3" >> "./tests/test-${1}_expected"
	
	execute_program "./tests/test-${1}_in" "./tests/test-${1}_out"
	test_file "./tests/test-${1}_out" "./tests/test-${1}_expected"
	echo
}

if [ ! -d tests ]
then
	mkdir tests
fi

rm -r ./tests/*

if [ ! -f ./tests/log_test ]
then
	touch ./tests/log_test
fi

echo Compiling Source
if ! gcc -Wall -o tp1 tp1.c hash.c hash.S; then
  echo Compilation Failed
  exit 1
fi
echo Compilation Success

echo "Starting Tests"
echo


# ------------- Sector de PRUEBAS----------------------------------------------

make_test one_letter_a "a" "a\n"
make_test empty_file "" ""
make_test test1 "" ""
make_test test2 "Orga de compu" "hash"
make_test varias_lineas "Orga de compu" "hash"
make_test all_letters "a b c d e f g h i" "hash"
make_test numbers_and_letters "969420a6 528dsa 528 ab" "hash"
make_test long_text "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" "hash\n"
# Agregar pruebas aca

# -----------------------------------------------------------------------------

echo --------------------

if [ $FAILED_TESTS == 0 ]
then
	echo -e "\e[92mAll $TOTAL_TESTS tests passed!!!\e[0m"
else
	echo -e "\e[91m Failed tests: $FAILED_TESTS from $TOTAL_TESTS\e[0m"
fi

echo --------------------
