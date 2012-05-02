#!/bin/bash 
# Get weather information from Yahoo 
# Modified by IOU 
# Feb-10-2007 
# The link is for the city of Beijing 
link=CHXX0008.html 
weather=/tmp/weather.txt 
temporary=/tmp/temporary.txt 
location=http://weather.yahoo.com/forecast/$link
w3m -dump $location > $weather 
begin=`cat -n $weather | grep "How to" | cut -d ' ' -f4` 
end=`expr $begin + 2`
head -n $end $weather > $temporary 
tail -n 2 $temporary > $weather 
cat $weather | cut -d "*" -f2 > $weather 
rm -f $temporary
case $1 in 
Time) 
    head -n 1 $weather | cut -d : -f1 
    ;;  
Sky) 
    head -n 1 $weather | cut -d : -f2 | cut -d . -f1 
    ;;  
Temperature) 
    head -n 1 $weather | cut -d . -f2 
    ;;  
Wind) 
    head -n 1 $weather | cut -d . -f3 
    ;;  
*) 
    exit 
    ;;  
esac
