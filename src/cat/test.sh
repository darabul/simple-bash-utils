#!/bin/bash

SUCCESS=0
FAIL=0
# Test the s21_cat program without flags
cat test_1.txt > expected_output1.txt
./s21_cat test_1.txt > actual_output1.txt
cat test_2.txt > expected_output2.txt
./s21_cat test_2.txt > actual_output2.txt
cat test_3.txt > expected_output3.txt
./s21_cat test_3.txt > actual_output3.txt
cat test_4.txt > expected_output4.txt
./s21_cat test_4.txt > actual_output4.txt
if (diff expected_output1.txt actual_output1.txt >/dev/null) && (diff expected_output2.txt actual_output2.txt >/dev/null) && (diff expected_output3.txt actual_output3.txt >/dev/null) && (diff expected_output4.txt actual_output4.txt >/dev/null)
then
    echo "s21_cat test passed"
    let SUCCESS++

else
    echo "s21_cat test failed"
    let FAIL++

fi

# Test the s21_cat program with -n flag
cat -n test_1.txt > expected_output1.txt
./s21_cat -n test_1.txt > actual_output1.txt
cat -n test_2.txt > expected_output2.txt
./s21_cat -n test_2.txt > actual_output2.txt
cat -n test_3.txt > expected_output3.txt
./s21_cat -n test_3.txt > actual_output3.txt
cat test_4.txt > expected_output4.txt
./s21_cat test_4.txt > actual_output4.txt
if (diff expected_output1.txt actual_output1.txt >/dev/null) && (diff expected_output2.txt actual_output2.txt >/dev/null) && (diff expected_output3.txt actual_output3.txt >/dev/null) && (diff expected_output4.txt actual_output4.txt >/dev/null)
then
    echo "s21_cat -n test passed"
    let SUCCESS+=1

else
    echo "s21_cat -n test failed"
    let FAIL+=1

fi

# Test the s21_cat program with -b flag
cat -b test_1.txt > expected_output1.txt
./s21_cat -b test_1.txt > actual_output1.txt
cat -b test_2.txt > expected_output2.txt
./s21_cat -b test_2.txt > actual_output2.txt
cat -b test_3.txt > expected_output3.txt
./s21_cat -b test_3.txt > actual_output3.txt
cat test_4.txt > expected_output4.txt
./s21_cat test_4.txt > actual_output4.txt
if (diff expected_output1.txt actual_output1.txt >/dev/null) && (diff expected_output2.txt actual_output2.txt >/dev/null) && (diff expected_output3.txt actual_output3.txt >/dev/null) && (diff expected_output4.txt actual_output4.txt >/dev/null)
then
    echo "s21_cat -b test passed"
    let SUCCESS+=1

else
    echo "s21_cat -b test failed"
    let FAIL+=1

fi

# Test the s21_cat program with -e flag
cat -e test_1.txt > expected_output1.txt
./s21_cat -e test_1.txt > actual_output1.txt
cat -e test_2.txt > expected_output2.txt
./s21_cat -e test_2.txt > actual_output2.txt
cat -e test_3.txt > expected_output3.txt
./s21_cat -e test_3.txt > actual_output3.txt
cat test_4.txt > expected_output4.txt
./s21_cat test_4.txt > actual_output4.txt
if (diff expected_output1.txt actual_output1.txt >/dev/null) && (diff expected_output2.txt actual_output2.txt >/dev/null) && (diff expected_output3.txt actual_output3.txt >/dev/null) && (diff expected_output4.txt actual_output4.txt >/dev/null)
then
    echo "s21_cat -e test passed"
    let SUCCESS+=1

else
    echo "s21_cat -e test failed"
    let FAIL+=1

fi

# Test the s21_cat program with -s flag
cat -s test_1.txt > expected_output1.txt
./s21_cat -s test_1.txt > actual_output1.txt
cat -s test_2.txt > expected_output2.txt
./s21_cat -s test_2.txt > actual_output2.txt
cat -s test_3.txt > expected_output3.txt
./s21_cat -s test_3.txt > actual_output3.txt
cat test_4.txt > expected_output4.txt
./s21_cat test_4.txt > actual_output4.txt
cat test_4.txt > expected_output4.txt
./s21_cat test_4.txt > actual_output4.txt
if (diff expected_output1.txt actual_output1.txt >/dev/null) && (diff expected_output2.txt actual_output2.txt >/dev/null) && (diff expected_output3.txt actual_output3.txt >/dev/null) && (diff expected_output4.txt actual_output4.txt >/dev/null)
then
    echo "s21_cat -s test passed"
    let SUCCESS+=1

else
    echo "s21_cat -s test failed"
    let FAIL+=1

fi

# Test the s21_cat program with -t flag
cat -t test_1.txt > expected_output1.txt
./s21_cat -t test_1.txt > actual_output1.txt
cat -t test_2.txt > expected_output2.txt
./s21_cat -t test_2.txt > actual_output2.txt
cat -t test_3.txt > expected_output3.txt
./s21_cat -t test_3.txt > actual_output3.txt
cat test_4.txt > expected_output4.txt
./s21_cat test_4.txt > actual_output4.txt
if (diff expected_output1.txt actual_output1.txt >/dev/null) && (diff expected_output2.txt actual_output2.txt >/dev/null) && (diff expected_output3.txt actual_output3.txt >/dev/null) && (diff expected_output4.txt actual_output4.txt >/dev/null)
then
    echo "s21_cat -t test passed"
    let SUCCESS+=1
else
    echo "s21_cat -t test failed"
    let FAIL+=1

fi

echo "SUCCESS: $SUCCESS"
echo "FAIL: $FAIL"

# Cleanup
rm expected_output1.txt actual_output1.txt expected_output2.txt actual_output2.txt expected_output3.txt actual_output3.txt expected_output4.txt actual_output4.txt