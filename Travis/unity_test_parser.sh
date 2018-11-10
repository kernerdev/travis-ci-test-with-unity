#! /bin/sh

total=$(grep -o -a -m 1 -P -h -r 'total="\d"' "$1")
passed=$(grep -o -a -m 1 -P -h -r 'passed="\d"' "$1")
failed=$(grep -o -a -m 1 -P -h -r 'failed="\d"' "$1")
total_count=$(echo $total | grep -oP '\d')
passed_count=$(echo $passed | grep -oP '\d')
failed_count=$(echo $failed | grep -oP '\d')
echo "\n\n\n\n"
echo "--------------------------------------"
if [ "$total_count" -eq "$passed_count" ] || [ "$failed_count" -eq "0" ]; then
    echo "TEST PASSED"
    echo "There are $total_count test."
    echo "There are $passed_count passed test."
else
    echo "TEST FAILED"
    echo "There are $total_count test."
    echo "There are $passed_count passed test."
    echo "There are $failed_count failed test."
fi
echo "--------------------------------------"
echo "\n\n\n\n"