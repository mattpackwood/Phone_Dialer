#!/bin/bash

#Loop through all numbers in text file and execut the AppleScript I wrote to send the messaged
for phone_number in `cat $1`
  do
    echo $phone_number
    osascript sendMessage.applescript $phone_number "Hello, it has been a while since I caught up with you so I wanted to check in and see how things are going?"
  done
