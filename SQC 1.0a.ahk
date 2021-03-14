#IfWinActive Warcraft III
#SingleInstance force
#HotkeyInterval 0
#InstallKeybdHook
#UseHook On			
#MaxThreads 20		
SetBatchLines, -1		
SetKeyDelay , -1, 0		
Process, Priority, AutoHotkey.exe, High
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
Return
}

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
		Return
	}
	
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
		Return
	}	
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
		Return
	}

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
		Return
	}

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
		Return
	}

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
		Return
	}

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
		Return
	}

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
		Return
	}

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
		Return
	}

; 1::
; {
; 	SendInput, {Numpad7}{Lbutton down}
; 	SendInput, !g{esc}
; 	SendInput, {Lbutton up}
; Return
; }

; 2::
; {
; 	SendInput, {Numpad8}{Lbutton down}
; 	SendInput, !g{esc}
; 	SendInput, {Lbutton up}
; Return
; }

; 3::
; {
; 	SendInput, {Numpad4}{Lbutton down}
; 	SendInput, !g{esc}
; 	SendInput, {Lbutton up}
; Return
; }

; 4::
; {
; 	SendInput, {Numpad5}{Lbutton down}
; 	SendInput, !g{esc}
; 	SendInput, {Lbutton up}
; Return
; }

; 5::
; {
; 	SendInput, {Numpad2}{Lbutton down}
; 	SendInput, !g{esc}
; 	SendInput, {Lbutton up}
; }

; Space::
; {
; 	SendInput, {Numpad1}{Lbutton down}
; 	SendInput, !g{esc}
; 	SendInput, {Lbutton up}
; Return
; }

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