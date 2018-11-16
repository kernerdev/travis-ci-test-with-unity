#!/bin/sh
 
if [ -f $2 ]; then
    xunitversion=$(grep "$1-v" $2)
    #echo $xunitversion
    firstnumbertext=$(echo $xunitversion | grep -o -E "v[0-9]+" )
    firstnumber=$(echo $firstnumbertext | grep -o -E "\d+" )
 
    centernumbertext=$(echo $xunitversion | grep -o -E "\-[0-9]+\-" )
    centernumber=$(echo $centernumbertext | grep -o -E "\d+" )
 
    lastnumber=$(echo $xunitversion | grep -o -E "\d+$" )
 
    #echo $firstnumber
    #echo $centernumber
    #echo $lastnumber
 
    #lastnumber=$((lastnumber + 1))
    #echo $lastnumber
    echo "$1-v$firstnumber-$centernumber-$lastnumber"
 
    if [ "$3" = "MAYOR" ]; then
        firstnumber=$((firstnumber + 1))
        centernumber=0
        lastnumber=0
    elif [ "$3" = "MINOR" ]; then
        centernumber=$((centernumber + 1))
        lastnumber=0
    else
        lastnumber=$((lastnumber + 1))
    fi
 
    echo "$1-v$firstnumber-$centernumber-$lastnumber"
    echo "$1-v$firstnumber-$centernumber-$lastnumber" > $2
else
    echo "$2 file doesn't exists"
fi