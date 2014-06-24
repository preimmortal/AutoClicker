#SingleInstance force
auto_state := 0
#IfWinActive Guild Wars 2


NumpadEnter::preAutoClick()
NumpadDel::preAutoJoin()

preAutoClick(Speed=10)
{
	static Toggle
	Toggle := !Toggle
	Period := Toggle ? Speed : "off"
	
	SetTimer, ClickClick, %Period%
	Return
	
	ClickClick:
	Click
	Return
}

preAutoJoin(Speed=1000)
{
	BlockInput, MouseMove
	static Toggle
	Toggle := !Toggle
	Period := Toggle ? Speed : "off"
	
	SetTimer, ClickJoin, %Period%
	BlockInput, MouseMoveOff
	Return
	
	ClickJoin:
	MouseClick, Right
	MouseMove, 100, 120, 10, R
	Sleep, 100
	MouseClick, Left
	MouseMove, -100, -120, 10, R
	Sleep, 100
	Send, {Escape}
	Return
}