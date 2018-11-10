#!/bin/sh
 
total=$(grep -o -a -m 1 -h -r "total=\"[0-9]*\"" "$1")
passed=$(grep -o -a -m 1 -h -r "passed=\"[0-9]*\"" "$1")
failed=$(grep -o -a -m 1 -h -r "failed=\"[0-9]*\"" "$1")
total_count=$(echo $total | grep -o "[0-9]*")
passed_count=$(echo $passed | grep -o "[0-9]*")
failed_count=$(echo $failed | grep -o "[0-9]*")
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