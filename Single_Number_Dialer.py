import applescript

scpt = applescript.AppleScript('''
    on run {arg1, arg2}
        say arg1 & " " & arg2
    end run
    on foo()
        return "bar"
    end foo
    on dial {arg1, arg2}
	say "Dialing triggered"
        tell application "System Events" to tell process "Messages"
	key code 45 using command down -- press Command + N to start a new window
	keystroke "+17345856169" -- input the phone number
	key code 36 -- press Enter to focus on the message area 
	keystroke "This is a test message" -- type some message
	key code 36 -- press Enter to send
	end tell
    end dial
    on Baz(x, y)
        return x * y
    end bar
''')

print(scpt.run('Test', 'Phrase')) #-> None
print(scpt.call('foo')) #-> "bar"
print(scpt.call('Baz', 3, 5)) #-> 15
print(scpt.call("dial", 5551212, "Test"))
