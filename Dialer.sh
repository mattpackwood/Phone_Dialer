#!/bin/bash
for phone_number in `cat $1`
do
echo $phone_number
osascript sendMessage.applescript $phone_number "Hello and good morning, week three of my new job and I have now spent more time working from home than I did in the office"
done
