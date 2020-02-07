#!/bin/bash
for phone_number in `cat $1`
do
echo $phone_number
osascript sendMessage.applescript $phone_number "Hello, just checking in to say Hi, hope your day is going well"
done
