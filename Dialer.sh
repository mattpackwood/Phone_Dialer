#!/bin/bash
for phone_number in `cat $1`
do
echo $phone_number
osascript sendMessage.applescript $phone_number "This is a much longer message"
done
