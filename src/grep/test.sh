#!/bin/bash

SUCCESS=0
FAIL=0
# Test the s21_grep program without flags
grep lok test_1.txt > expected_output1.txt
./s21_grep lok test_1.txt > actual_output1.txt
grep lok test_2.txt > expected_output2.txt
./s21_grep lok test_2.txt > actual_output2.txt
grep lok test_3.txt > expected_output3.txt
./s21_grep lok test_3.txt > actual_output3.txt

if (diff expected_output1.txt actual_output1.txt >/dev/null) && (diff expected_output2.txt actual_output2.txt >/dev/null) && (diff expected_output3.txt actual_output3.txt >/dev/null) 
then
    echo "s21_grep without flags test passed"
    let SUCCESS+=1

else
    echo "s21_grep without flags test failed"
    let FAIL+=1

fi

# Test the s21_grep program with -e flag
grep -e lok -e men test_1.txt > expected_output1.txt
./s21_grep -e lok -e men test_1.txt > actual_output1.txt
grep -e lok -e men test_2.txt > expected_output2.txt
./s21_grep -e lok -e men test_2.txt > actual_output2.txt
grep -e lok -e men test_3.txt > expected_output3.txt
./s21_grep -e lok -e men test_3.txt > actual_output3.txt

if (diff expected_output1.txt actual_output1.txt >/dev/null) && (diff expected_output2.txt actual_output2.txt >/dev/null) && (diff expected_output3.txt actual_output3.txt >/dev/null) 
then
    echo "s21_grep -e test passed"
    let SUCCESS+=1

else
    echo "s21_grep -e test failed"
    let FAIL+=1

fi

# Test the s21_grep program with -i flag
grep -i lok test_1.txt > expected_output1.txt
./s21_grep -i lok test_1.txt > actual_output1.txt
grep -i lok test_2.txt > expected_output2.txt
./s21_grep -i lok test_2.txt > actual_output2.txt
grep -i lok test_3.txt > expected_output3.txt
./s21_grep -i lok test_3.txt > actual_output3.txt

if (diff expected_output1.txt actual_output1.txt >/dev/null) && (diff expected_output2.txt actual_output2.txt >/dev/null) && (diff expected_output3.txt actual_output3.txt >/dev/null) 
then
    echo "s21_grep -i test passed"
    let SUCCESS+=1

else
    echo "s21_grep -i test failed"
    let FAIL+=1

fi

# Test the s21_grep program with -v flag
grep -v lok test_1.txt > expected_output1.txt
./s21_grep -v lok test_1.txt > actual_output1.txt
grep -v lok test_2.txt > expected_output2.txt
./s21_grep -v lok test_2.txt > actual_output2.txt
grep -v lok test_3.txt > expected_output3.txt
./s21_grep -v lok test_3.txt > actual_output3.txt

if (diff expected_output1.txt actual_output1.txt >/dev/null) && (diff expected_output2.txt actual_output2.txt >/dev/null) && (diff expected_output3.txt actual_output3.txt >/dev/null) 
then
    echo "s21_grep -v test passed"
    let SUCCESS+=1

else
    echo "s21_grep -v test failed"
    let FAIL+=1

fi

# Test the s21_grep program with -c flag
grep -c lok test_1.txt > expected_output1.txt
./s21_grep -c lok test_1.txt > actual_output1.txt
grep -c lok test_2.txt > expected_output2.txt
./s21_grep -c lok test_2.txt > actual_output2.txt
grep -c lok test_3.txt > expected_output3.txt
./s21_grep -c lok test_3.txt > actual_output3.txt

if (diff expected_output1.txt actual_output1.txt >/dev/null) && (diff expected_output2.txt actual_output2.txt >/dev/null) && (diff expected_output3.txt actual_output3.txt >/dev/null) 
then
    echo "s21_grep -c test passed"
    let SUCCESS+=1

else
    echo "s21_grep -c test failed"
    let FAIL+=1

fi

# Test the s21_grep program with -l flag
grep -l lok test_1.txt > expected_output1.txt
./s21_grep -l lok test_1.txt > actual_output1.txt
grep -l lok test_2.txt > expected_output2.txt
./s21_grep -l lok test_2.txt > actual_output2.txt
grep -l lok test_3.txt > expected_output3.txt
./s21_grep -l lok test_3.txt > actual_output3.txt

if (diff expected_output1.txt actual_output1.txt >/dev/null) && (diff expected_output2.txt actual_output2.txt >/dev/null) && (diff expected_output3.txt actual_output3.txt >/dev/null) 
then
    echo "s21_grep -l test passed"
    let SUCCESS+=1
else
    echo "s21_grep -l test failed"
    let FAIL+=1

fi


# Test the s21_grep program with -n flag
grep -n lok test_1.txt > expected_output1.txt
./s21_grep -n lok test_1.txt > actual_output1.txt
grep -n lok test_2.txt > expected_output2.txt
./s21_grep -n lok test_2.txt > actual_output2.txt
grep -n lok test_3.txt > expected_output3.txt
./s21_grep -n lok test_3.txt > actual_output3.txt

if (diff expected_output1.txt actual_output1.txt >/dev/null) && (diff expected_output2.txt actual_output2.txt >/dev/null) && (diff expected_output3.txt actual_output3.txt >/dev/null) 
then
    echo "s21_grep -n test passed"
    let SUCCESS+=1
else
    echo "s21_grep -n test failed"
    let FAIL+=1

fi

# Test the s21_grep program with -h flag
grep -h lok test_1.txt > expected_output1.txt
./s21_grep -h lok test_1.txt > actual_output1.txt
grep -h lok test_2.txt > expected_output2.txt
./s21_grep -h lok test_2.txt > actual_output2.txt
grep -h lok test_3.txt > expected_output3.txt
./s21_grep -h lok test_3.txt > actual_output3.txt

if (diff expected_output1.txt actual_output1.txt >/dev/null) && (diff expected_output2.txt actual_output2.txt >/dev/null) && (diff expected_output3.txt actual_output3.txt >/dev/null) 
then
    echo "s21_grep -h test passed"
    let SUCCESS+=1
else
    echo "s21_grep -h test failed"
    let FAIL+=1

fi

# Test the s21_grep program with -s flag
grep -s lok test_1.txt > expected_output1.txt
./s21_grep -s lok test_1.txt > actual_output1.txt
grep -s lok test_2.txt > expected_output2.txt
./s21_grep -s lok test_2.txt > actual_output2.txt
grep -s lok test_3.txt > expected_output3.txt
./s21_grep -s lok test_3.txt > actual_output3.txt

if (diff expected_output1.txt actual_output1.txt >/dev/null) && (diff expected_output2.txt actual_output2.txt >/dev/null) && (diff expected_output3.txt actual_output3.txt >/dev/null) 
then
    echo "s21_grep -s test passed"
    let SUCCESS+=1
else
    echo "s21_grep -s test failed"
    let FAIL+=1

fi

# Test the s21_grep program with -f flag    
grep -f test_1.txt test_2.txt > expected_output1.txt
./s21_grep -f test_1.txt test_2.txt > actual_output1.txt
grep -f test_1.txt test_2.txt test_3.txt > expected_output2.txt
./s21_grep -f test_1.txt test_2.txt test_3.txt > actual_output2.txt
grep -f test_1.txt test_3.txt > expected_output3.txt
./s21_grep -f test_1.txt test_3.txt > actual_output3.txt

if (diff expected_output1.txt actual_output1.txt >/dev/null) && (diff expected_output2.txt actual_output2.txt >/dev/null) && (diff expected_output3.txt actual_output3.txt >/dev/null) 
then
    echo "s21_grep -f test passed"
    let SUCCESS+=1
else
    echo "s21_grep -f test failed"
    let FAIL+=1

fi

# Test the s21_grep program with -o flag    
grep -o lok test_1.txt test_2.txt > expected_output1.txt
./s21_grep -o lok test_1.txt test_2.txt > actual_output1.txt
grep -o lok test_1.txt test_2.txt test_3.txt > expected_output2.txt
./s21_grep -o lok test_1.txt test_2.txt test_3.txt > actual_output2.txt
grep -o lok test_1.txt test_3.txt > expected_output3.txt
./s21_grep -o lok test_1.txt test_3.txt > actual_output3.txt

if (diff expected_output1.txt actual_output1.txt >/dev/null) && (diff expected_output2.txt actual_output2.txt >/dev/null) && (diff expected_output3.txt actual_output3.txt >/dev/null) 
then
    echo "s21_grep -o test passed"
    let SUCCESS+=1
else
    echo "s21_grep -o test failed"
    let FAIL+=1

fi

echo "SUCCESS: $SUCCESS"
echo "FAIL: $FAIL"

# Cleanup
rm expected_output1.txt actual_output1.txt expected_output2.txt actual_output2.txt expected_output3.txt actual_output3.txt 