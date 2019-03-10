;
; River Falls, Wisconsin - RFFD I Am Responding Auto Login
; By Greg Dietsche - 3/9/2019
;

#SingleInstance Force
#Warn
#NoEnv

AGENCY=YOUR_AGENCY_HERE
USER=YOUR_USER_HERE
PASS=YOUR_PASSWORD_HERE

SetTitleMatchMode, 1
Loop {
	;Wait for the IAR window to open
	WinWait, IamResponding.com
	WinGet, active_id, ID, IamResponding.com
	Sleep, 4000

	;Login
	WinActivate, ahk_id %active_id%
	SendInput,{Tab}{Enter}%AGENCY%{Tab}%USER%{Tab}%PASS%{Tab}{Tab}{Enter}

	;Toggle Dashboard View
	Sleep, 4000
	WinActivate, ahk_id %active_id%
	SendInput,{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Enter}
	
	;Wait for the IAR window to close
	WinWaitClose, ahk_id %active_id%
}
