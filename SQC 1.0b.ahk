#IfWinActive Warcraft III
#SingleInstance force
#HotkeyInterval 0
#InstallKeybdHook
#UseHook On			
#MaxThreads 20		
SetBatchLines, -1		
SetKeyDelay , -1, 0		
Process, Priority, AutoHotkey.exe, High
lobby := 1
F12::

WinGet, WindowID, ID, A
WinSet, Style, -0xC40000, ahk_id %WindowID%
WinMove, ahk_id %WindowID%, , 0, 0, A_ScreenWidth, A_ScreenHeight

Return

~enter:: suspend

~*esc::
~*F1::
~*lbutton::
Suspend, Permit
	PixelGetColor, colorDetected, 0, 0, RGB
	If (colorDetected = 0x1C1B18)
	{
	lobby := 1
	}
	Else
	{
	lobby := 0
	Suspend, off
	Return
	}
;;;;; Скиллы/Инвентарь ;;;;;
vk0xC0::
{
	PixelGetColor, t, 0, 0, rgb
	Clipboard = %t%
}
Return
a:: 
if lobby != 1
	{
		SendInput, {%A_ThisHotkey%}{Lbutton down}
		SendInput, !g{esc}
		SendInput, {Lbutton up}
	}
Else
	{
		SendInput, {%A_ThisHotkey%}
	}
Return
q:: 
if lobby != 1
	{
		SendInput, {q}{Lbutton down}
		SendInput, !g{esc}
		SendInput, {Lbutton up}
	}
Else
	{
		SendInput, {%A_ThisHotkey%}
	}	
Return
w::
if lobby != 1
	{
		SendInput, {%A_ThisHotkey%}{Lbutton down}
		SendInput, !g{esc}
		SendInput, {Lbutton up}
	}
Else
	{
		SendInput, {%A_ThisHotkey%}
	}
Return
e::
if lobby != 1
	{
		SendInput,{%A_ThisHotkey%}{Lbutton down}
		SendInput, !g{esc}
		SendInput, {Lbutton up}
	}
Else
	{
		SendInput, {%A_ThisHotkey%}
	}
Return
r::
if lobby != 1
	{
		SendInput, {%A_ThisHotkey%}{Lbutton down}
		SendInput, !g{esc}
		SendInput, {Lbutton up}
	}
Else
	{
		SendInput, %A_ThisHotkey%
	}
Return
d::
if lobby != 1
	{
		SendInput, {%A_ThisHotkey%}{Lbutton down}
		SendInput, !g{esc}
		SendInput, {Lbutton up}
	}
Else
	{
		SendInput, {%A_ThisHotkey%}
	}
return
f::
if lobby != 1
	{
		SendInput, {%A_ThisHotkey%}{Lbutton down}
		SendInput, !g{esc}
		SendInput, {Lbutton up}
	}
Else
	{
		SendInput, {%A_ThisHotkey%}
	}
Return
t::
if lobby != 1
	{
		SendInput, {%A_ThisHotkey%}{Lbutton down}
		SendInput, !g{esc}
		SendInput, {Lbutton up}
	}
Else
	{
		SendInput, {%A_ThisHotkey%}
	}
Return
g::
if lobby != 1
	{
		SendInput, {%A_ThisHotkey%}{Lbutton down}
		SendInput, !g{esc}
		SendInput, {Lbutton up}
	}
Else
	{
		SendInput, {%A_ThisHotkey%}
	}
Return
