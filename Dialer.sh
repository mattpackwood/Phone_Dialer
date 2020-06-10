#!/bin/bash

#Loop through all numbers in text file and execut the AppleScript I wrote to send the messaged
for phone_number in `cat $1`
  do
    echo $phone_number
    osascript sendMessage.applescript $phone_number "Hello, greetings from Rochester Hills, how are you doing?"
  done
