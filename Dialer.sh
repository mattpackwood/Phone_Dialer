#!/bin/bash
for phone_number in `cat $1`
do
echo $phone_number
osascript sendMessage.applescript $phone_number "Hello there, just checking in how you are doing in the current unpleasantness?"
done
