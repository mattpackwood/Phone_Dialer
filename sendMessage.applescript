(*
    This is a simple applescript, it uses the Messages app to send a defined message to multiple recipients. It does NOT work 
    if the person has not already been contacted (i.e. if there is not a currently open message thread).
*)



on run {targetBuddyPhone, targetMessage}
    tell application "Messages"
        set targetService to 1st service whose service type = iMessage
        set targetBuddy to buddy targetBuddyPhone of targetService
        send targetMessage to targetBuddy
    end tell
end run
