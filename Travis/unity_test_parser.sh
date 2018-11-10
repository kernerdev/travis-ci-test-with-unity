#!/bin/sh
 
total=$(grep -o -a -m 1 -h -r "total=\"[0-9]*\"" "$1")
passed=$(grep -o -a -m 1 -h -r "passed=\"[0-9]*\"" "$1")
failed=$(grep -o -a -m 1 -h -r "failed=\"[0-9]*\"" "$1")
echo $total
echo $passed
echo $failed
total_count=$(echo $total | grep -o -E "\d"+)
passed_count=$(echo $passed | grep -o -E "\d"+)
failed_count=$(echo $failed | grep -o -E "\d"+)
echo $total_count
echo $passed_count
echo $failed_count
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