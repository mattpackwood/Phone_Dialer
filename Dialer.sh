#!/bin/bash
for phone_number in `cat $1`
do
echo $phone_number
osascript sendMessage.applescript $phone_number "Hi, still working from the home office in Rochester Hills, how are you doing?"
done
