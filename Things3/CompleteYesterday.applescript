on run
tell application "Things3"
	repeat with todo in selected to dos
		set completion date of todo to (current date) - 1 * days
		set theNotes to notes of todo

		repeat with todoParagraph in paragraphs of theNotes
			if todoParagraph contains "://" then
				do shell script "open " & quoted form of todoParagraph
			end if
		end repeat


	end repeat
end tell
end run
