#IfWinActive Warcraft III
#SingleInstance force
#HotkeyInterval 0
#InstallKeybdHook
#UseHook On			
#MaxThreads 20		
SetBatchLines, -1		
SetKeyDelay , -1, 0		
Process, Priority, AutoHotkey.exe, High

; Начало GUI
Loop, 6
{
	IniRead, Key%A_Index%, IniFile.ini, Section, Key%A_Index%, % A_Space
	Gui, Add, Hotkey, vKey%A_Index%, % Key%A_Index%
}

Gui, Add, Button, gSave, Save
Gui, Show, w250 h200, SQC

Save:
  Gui, Submit, NoHide
  Loop, 6
  {
		Hotkey, % PrKey%A_Index%, off, UseErrorLevel
		Hotkey, % PrKey%A_Index% := Key%A_Index%, Key%A_Index%, on, UseErrorLevel
		IniWrite, % Key%A_Index%, IniFile.ini, Section, Key%A_Index%
  }
Return
; Конец GUI



lobby := 1
F12::

WinGet, WindowID, ID, A
WinSet, Style, -0xC40000, ahk_id %WindowID%
WinMove, ahk_id %WindowID%, , 0, 0, A_ScreenWidth, A_ScreenHeight

Return

~enter:: suspend 
+enter::
suspend, permit
{
SendInput, +{enter}
Suspend, on
}
return
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
	}
Return
;;;;; Скиллы/Инвентарь ;;;;;
XButton1:: F1
Return
XButton2:: F2
Return

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
		SendInput, {%A_ThisHotkey%}n
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
Return

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

Key1:
if lobby != 1
	{
	SendInput, {Numpad7}{Lbutton down}
	SendInput, !g{esc}
	SendInput, {Lbutton up}
	}
	Else
	{
		SendInput, {%A_ThisHotkey%}
	}
Return

Key2:
if lobby != 1
	{
	SendInput, {Numpad8}{Lbutton down}
	SendInput, !g{esc}
	SendInput, {Lbutton up}
	}
	Else
	{
		SendInput, {%A_ThisHotkey%}
	}
Return

Key3:
if lobby != 1
	{
		SendInput, {Numpad4}{Lbutton down}
		SendInput, !g{esc}
		SendInput, {Lbutton up}
	}
	Else
	{
		SendInput, {%A_ThisHotkey%}
	}
Return

Key4:
if lobby != 1
	{
	SendInput, {Numpad5}{Lbutton down}
	SendInput, !g{esc}
	SendInput, {Lbutton up}
	}
	Else
	{
		SendInput, {%A_ThisHotkey%}
	}
Return

Key5:
if lobby != 1
	{
	SendInput, {Numpad1}{Lbutton down}
	SendInput, !g{esc}
	SendInput, {Lbutton up}
	}
	Else
	{
		SendInput, {%A_ThisHotkey%}
	}
Return

Key6:
if lobby != 1
	{
	SendInput, {Numpad2}{Lbutton down}
	SendInput, !g{esc}
	SendInput, {Lbutton up}
	}
	Else
	{
		SendInput, {%A_ThisHotkey%}
	}
Return

