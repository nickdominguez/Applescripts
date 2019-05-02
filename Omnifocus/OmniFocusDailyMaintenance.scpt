on run
	tell application "OmniFocus"
		set todayDate to current date
		set todayDate's hours to 0
		set todayDate's minutes to 0
		set todayDate's seconds to 0
		
		set tomorrowDate to todayDate + 1 * days
		
		tell default document
			set todayTasks to (flattened tasks where (defer date ≥ todayDate and defer date < tomorrowDate))
			repeat with t in todayTasks
				set t's flagged to true
			end repeat
		end tell
	end tell
end run
