#IfWinActive Warcraft III
#SingleInstance force
#HotkeyInterval 0
#InstallKeybdHook
#UseHook On			
#MaxThreads 20		
SetBatchLines, -1		
SetKeyDelay , -1, 0		
Process, Priority, AutoHotkey.exe, High
IniRead, Key1, IniFile.ini, Section, Key1, % A_Space
IniRead, Key2, IniFile.ini, Section, Key2, % A_Space 
IniRead, Key3, IniFile.ini, Section, Key3, % A_Space
IniRead, Key4, IniFile.ini, Section, Key4, % A_Space
IniRead, Key5, IniFile.ini, Section, Key5, % A_Space
IniRead, Key6, IniFile.ini, Section, Key6, % A_Space
Gui, Add, Hotkey, vKey1, % Key1
Gui, Add, Hotkey, vKey2, % Key2
Gui, Add, Hotkey, vKey3, % Key3
Gui, Add, Hotkey, vKey4, % Key4
Gui, Add, Hotkey, vKey5, % Key5
Gui, Add, Hotkey, vKey6, % Key6

Gui, Add, Button, gSave, Save
Gui, Show, w250 h200, SQC
Save:
  Gui, Submit, NoHide
  Hotkey, % PrKey1, off, UseErrorLevel
  Hotkey, % PrKey1 := Key1, Key1, on, UseErrorLevel
  Hotkey, % PrKey2, off, UseErrorLevel
  Hotkey, % PrKey2 := Key2, Key2, on, UseErrorLevel
  Hotkey, % PrKey3, off, UseErrorLevel
  Hotkey, % PrKey3 := Key3, Key3, on, UseErrorLevel
  Hotkey, % PrKey4, off, UseErrorLevel
  Hotkey, % PrKey4 := Key4, Key4, on, UseErrorLevel
  Hotkey, % PrKey5, off, UseErrorLevel
  Hotkey, % PrKey5 := Key5, Key5, on, UseErrorLevel
  Hotkey, % PrKey6, off, UseErrorLevel
  Hotkey, % PrKey6 := Key6, Key6, on, UseErrorLevel
  IniWrite, % Key1, IniFile.ini, Section, Key1
  IniWrite, % Key2, IniFile.ini, Section, Key2
  IniWrite, % Key3, IniFile.ini, Section, Key3
  IniWrite, % Key4, IniFile.ini, Section, Key4
  IniWrite, % Key5, IniFile.ini, Section, Key5
  IniWrite, % Key6, IniFile.ini, Section, Key6
return
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
		Return
	}

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
		Return
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
		Return
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
		Return
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
		Return
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
		Return
	}
Return
;;;;;;;Шифты (ничего тут не делал пока);;;;;;;
; +M:: SendInput, {Shift down}{m}{Lbutton down}{F10}{r}{Lbutton up}{a}{rbutton}{Shift up}
; +A:: SendInput, {Shift down}{a}{Lbutton down}{F10}{r}{Lbutton up}{a}{rbutton}{Shift up}
; +Q:: SendInput, {Shift down}{q}{Lbutton down}{F10}{r}{Lbutton up}{a}{rbutton}{Shift up}
; +W:: SendInput, {Shift down}{w}{Lbutton down}{F10}{r}{Lbutton up}{a}{rbutton}{Shift up}
; +E:: SendInput, {Shift down}{e}{Lbutton down}{F10}{r}{Lbutton up}{a}{rbutton}{Shift up}
; +R:: SendInput, {Shift down}{r}{Lbutton down}{F10}{r}{Lbutton up}{a}{rbutton}{Shift up}
; +D:: SendInput, {Shift down}{d}{Lbutton down}{F10}{r}{Lbutton up}{a}{rbutton}{Shift up}
; +F:: SendInput, {Shift down}{f}{Lbutton down}{F10}{r}{Lbutton up}{a}{rbutton}{Shift up}
; +T:: SendInput, {Shift down}{t}{Lbutton down}{F10}{r}{Lbutton up}{a}{rbutton}{Shift up}
; +G:: SendInput, {Shift down}{g}{Lbutton down}{F10}{r}{Lbutton up}{a}{rbutton}{Shift up}
; +1:: SendInput, {Shift down}{Numpad7}{Lbutton down}{F10}{r}{Lbutton up}{a}{rbutton}{Shift up}
; +2:: SendInput, {Shift down}{Numpad8}{Lbutton down}{F10}{r}{Lbutton up}{a}{rbutton}{Shift up}
; +3:: SendInput, {Shift down}{Numpad4}{Lbutton down}{F10}{r}{Lbutton up}{a}{rbutton}{Shift up}
; +4:: SendInput, {Shift down}{Numpad5}{Lbutton down}{F10}{r}{Lbutton up}{a}{rbutton}{Shift up}
; +5:: SendInput, {Shift down}{Numpad2}{Lbutton down}{F10}{r}{Lbutton up}{a}{rbutton}{Shift up}
; +Space:: SendInput, {Shift down}{Numpad1}{Lbutton down}{F10}{r}{Lbutton up}{a}{rbutton}{Shift up}
