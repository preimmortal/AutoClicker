#SingleInstance force
auto_state := 0
#IfWinActive Guild Wars 2

NumpadDel::preAutoJoin()

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
	MouseMove, 100, 100, 10, R
	Sleep, 100
	MouseClick, Left
	MouseMove, -100, -100, 10, R
	Sleep, 100
	Send, {Escape}
	Return
}