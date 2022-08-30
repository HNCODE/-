macro := false

return

F6::
ImageSearch, kx, ky, 0, 0, A_ScreenWidth, A_ScreenHeight, *60 K-009.bmp
if (ErrorLevel=0)
{
MsgBox, 찾음
}
else
{
MsgBox, 못찾음
}
return


F1::
loop
{
macro := true
loop
{
IfWinExist, 학습하기 - 개인
{
WinActivate, 학습하기 - 개인
break
}
WinActivate, 연구실안전교육시스템 - 개인
Sleep, 2000
send, {f5}
loop, 5
{
Sleep,300
ImageSearch, 3x, 3y, 0, 0, A_ScreenWidth, A_ScreenHeight, *60 K-007.bmp
if (ErrorLevel=0)
{
MouseClick, Left, %3x%,%3y%
}
else
{
break
}
}
Sleep, 2000
WinActivate, 연구실안전교육시스템 - 개인
Sleep, 1000
MouseClick, WheelDown,1109,596, 6
Sleep, 1000
WinActivate, 연구실안전교육시스템 - 개인
loop, 5
{
Sleep, 1000
ImageSearch, kx, ky, 0, 0, A_ScreenWidth, A_ScreenHeight, *60 K-006.bmp
if (ErrorLevel=0)
{
MouseClick, Left, %kx%,%ky%
}
else
{
IfWinExist, 학습하기 - 개인
{
WinActivate, 학습하기 - 개인
break
}
}
Sleep, 2500
IfWinExist, 학습하기 - 개인
{
Sleep, 2500
WinActivate, 학습하기 - 개인
loop, 4
{
Sleep, 300
ImageSearch, dx, dy, 0, 0, A_ScreenWidth, A_ScreenHeight, *60 K-008.bmp
if (ErrorLevel=0)
{
MouseClick, Left, %dx%,%dy%
break
}
else
{
break
}
}
}
IfWinExist, 학습하기 - 개인
{
WinActivate, 학습하기 - 개인
break
}
}
Sleep, 3000
}

Loop
{
IfWinNotExist, 학습하기 - 개인
{
break
}
Sleep, 100
WinActivate, 학습하기 - 개인
Sleep, 100
ImageSearch, wx, wy, 0, 0, A_ScreenWidth, A_ScreenHeight, *60 K-004.bmp
if (ErrorLevel=0)
{
	ImageSearch, 1x, 1y, 0, 0, A_ScreenWidth, A_ScreenHeight, *60 K-005.bmp
	if (ErrorLevel=0)
{
MouseClick, Left, %1x%,%1y%
}
}
Sleep, 100
WinActivate, 학습하기 - 개인
Sleep, 100

ImageSearch, vx, vy, 0, 0, A_ScreenWidth, A_ScreenHeight, *60 K-001.bmp
if (ErrorLevel=0)
{
	MouseClick, Left, %vx%,%vy%
}
Sleep, 100
WinActivate, 학습하기 - 개인
Sleep, 100

ImageSearch, zx, zy, 0, 0, A_ScreenWidth, A_ScreenHeight, *60 K-002.bmp
if (ErrorLevel=0)
{
	macro := false
	ImageSearch, qx, qy, 0, 0, A_ScreenWidth, A_ScreenHeight, *60 K-003.bmp
	if (ErrorLevel=0)
{
MouseClick, Left, %qx%,%qy%
}
}
Sleep, 100
WinActivate, 학습하기 - 개인
Sleep, 100

ImageSearch, gx, gy, 0, 0, A_ScreenWidth, A_ScreenHeight, *60 K-009.bmp
if (ErrorLevel=0)
{
	macro := false
	ImageSearch, qx, qy, 0, 0, A_ScreenWidth, A_ScreenHeight, *60 K-003.bmp
	if (ErrorLevel=0)
{
MouseClick, Left, %qx%,%qy%
}
}
Sleep, 100
WinActivate, 학습하기 - 개인
Sleep, 100

if (macro = false)
{
break
}
}
}
return




F2::Pause
F3::ExitApp