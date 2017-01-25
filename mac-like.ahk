;Autohotkey script to translate some Mac shortcuts for Windows
;Use Alt key instead of control key (Alt key is at the same place of Cmd on Mac)
;On Mac all hotkeys often used are: cmd+c, cmd+v, ... -> ctrl+c, ctrl+v, ... (on PC)
;Use ScrollLock key to temporary activate / descativate the current script, in case of get some trouble
;Added some Mac specific shortcuts like Alt+Shift+Right, Alt+Shift+Left or Cmd+Shift+L
;Work only with left Alt and left Control keys

#UseHook
#InstallKeybdHook

;Console - ctrl+v : past
;if WinActive("ahk_class ConsoleWindowClass")
;  ^v::SendInput {Raw}%clipboard% return
;
;Desktop or explorer - ctrl+n : new window
;if WinActive("ahk_class Progman") or WinActive("ahk_class ExploreWClass") or WinActive("ahk_class CabinetWClass")
;	^N::Run explorer return

;Desktop or explorer - ctrl+shift+n : new folder
;if WinActive("ahk_class Progman") or WinActive("ahk_class ExploreWClass") or WinActive("ahk_class CabinetWClass")
;	!+n::Send !fwf; English: File > New > Folder
;	!+n::Send !fnd; French: Fichier > Nouveau > Dossier


LAlt & a::Send {LCtrl Down}{a}{LCtrl Up}
LAlt & b::Send {LCtrl Down}{b}{LCtrl Up}
LAlt & c::Send {LCtrl Down}{c}{LCtrl Up}
LAlt & d::Send {LCtrl Down}{d}{LCtrl Up}
LAlt & e::Send {LCtrl Down}{e}{LCtrl Up}
LAlt & f::Send {LCtrl Down}{f}{LCtrl Up}
LAlt & g::Send {LCtrl Down}{g}{LCtrl Up}
LAlt & h::Send {LCtrl Down}{h}{LCtrl Up}
LAlt & i::Send {LCtrl Down}{i}{LCtrl Up}
LAlt & j::Send {LCtrl Down}{j}{LCtrl Up}
LAlt & k::Send {LCtrl Down}{k}{LCtrl Up}
;LAlt & l::Send {LCtrl Down}{l}{LCtrl Up}

; Used to map LAlt+l to Ctrl+l and when Shift is down, send "|" char instead
LAlt & l::
GetKeyState, ShiftState, Shift, P
if ShiftState = D
{
Send |
}
else
{
Send {LCtrl Down}{l}{LCtrl Up}
}
return

LAlt & m::Send {LCtrl Down}{m}{LCtrl Up}
;LAlt & n::Send {LCtrl Down}{n}{LCtrl Up}

;If Desktop or Explorer active, Alt+Shift+n create a new folder and Alt+N open an new window
LAlt & n::
GetKeyState, ShiftState, Shift, P
if (ShiftState == "D") and (WinActive("ahk_class Progman") or WinActive("ahk_class ExploreWClass") or WinActive("ahk_class CabinetWClass"))
Send !fn{enter} ; Folder is in first so send enter directly else other type of document will be selected
else if (ShiftState == "U" and (WinActive("ahk_class Progman") or WinActive("ahk_class ExploreWClass") or WinActive("ahk_class CabinetWClass")))
Run explorer
else
Send {LCtrl Down}{n}{LCtrl Up}
return

LAlt & o::Send {LCtrl Down}{o}{LCtrl Up}
LAlt & p::Send {LCtrl Down}{p}{LCtrl Up}
LAlt & q::Send {LCtrl Down}{q}{LCtrl Up}
LAlt & r::Send {LCtrl Down}{r}{LCtrl Up}
LAlt & s::Send {LCtrl Down}{s}{LCtrl Up}
LAlt & t::Send {LCtrl Down}{t}{LCtrl Up}
LAlt & u::Send {LCtrl Down}{u}{LCtrl Up}
;LAlt & v::Send {LCtrl Down}{v}{LCtrl Up}
LAlt & v::
if WinActive("ahk_class ConsoleWindowClass")
SendInput {Raw}%clipboard% return
else
Send {LCtrl Down}{v}{LCtrl Up}
return
LAlt & w::Send {LCtrl Down}{w}{LCtrl Up}
LAlt & x::Send {LCtrl Down}{x}{LCtrl Up}
LAlt & y::Send {LCtrl Down}{y}{LCtrl Up}
LAlt & z::Send {LCtrl Down}{z}{LCtrl Up}
LAlt & SPACE::Send {LCtrl Down}{SPACE}{LCtrl Up}

LCtrl & a::Send {LAlt Down}{a}{LAlt Up}
LCtrl & b::Send {LAlt Down}{b}{LAlt Up}
LCtrl & c::Send {LAlt Down}{c}{LAlt Up}
LCtrl & d::Send {LAlt Down}{d}{LAlt Up}
LCtrl & e::Send {LAlt Down}{e}{LAlt Up}
LCtrl & f::Send {LAlt Down}{f}{LAlt Up}
LCtrl & g::Send {LAlt Down}{g}{LAlt Up}
LCtrl & h::Send {LAlt Down}{h}{LAlt Up}
LCtrl & i::Send {LAlt Down}{i}{LAlt Up}
LCtrl & j::Send {LAlt Down}{j}{LAlt Up}
LCtrl & k::Send {LAlt Down}{k}{LAlt Up}
LCtrl & l::Send {LAlt Down}{l}{LAlt Up}
LCtrl & m::Send {LAlt Down}{m}{LAlt Up}
LCtrl & n::Send {LAlt Down}{n}{LAlt Up}
LCtrl & o::Send {LAlt Down}{o}{LAlt Up}
LCtrl & p::Send {LAlt Down}{p}{LAlt Up}
LCtrl & q::Send {LAlt Down}{q}{LAlt Up}
LCtrl & r::Send {LAlt Down}{r}{LAlt Up}
LCtrl & s::Send {LAlt Down}{s}{LAlt Up}
LCtrl & t::Send {LAlt Down}{t}{LAlt Up}
LCtrl & u::Send {LAlt Down}{u}{LAlt Up}
LCtrl & v::Send {LAlt Down}{v}{LAlt Up}
LCtrl & w::Send {LAlt Down}{w}{LAlt Up}
LCtrl & x::Send {LAlt Down}{x}{LAlt Up}
LCtrl & y::Send {LAlt Down}{y}{LAlt Up}
LCtrl & z::Send {LAlt Down}{z}{LAlt Up}

LAlt & Up::Send {LCtrl Down}{Home}{LCtrl Up} ; often used to go at the top of current document
LAlt & Down::Send {LCtrl Down}{End}{LCtrl Up} ; often used to go at the bottom of current document

<!<+Right::Send {LCtrl Down}{RShift Down}{Right}{RShift Up}{LCtrl Up} ; Cmd+Shift+Right -> Ctrl+Shift+Right often used for word selection
<!<+Left::Send {LCtrl Down}{RShift Down}{Left}{RShift Up}{LCtrl Up} ; Cmd+Shift+Left -> Ctrl+Shift+Left often used for word selection

<#<+Right::Send {LAlt Down}{RShift Down}{End}{RShift Up}{LAlt Up} ; Alt+Shift+Right -> Alt+Shift+End often used to move at the begin of current line
<#<+Left::Send {LAlt Down}{RShift Down}{Home}{RShift Up}{LAlt Up} ; Alt+Shift+Left -> Alt+Shift+Home often used to move at the end of current line




~ScrollLock::
; Wait for it to be released because otherwise the hook state gets reset
; while the key is down, which causes the up-event to get suppressed,
; which in turn prevents toggling of the ScrollLock state/light:
KeyWait, ScrollLock
GetKeyState, ScrollLockState, ScrollLock, T
If ScrollLockState = D
{
Hotkey, LAlt & a, On
Hotkey, LAlt & b, On
Hotkey, LAlt & c, On
Hotkey, LAlt & d, On
Hotkey, LAlt & e, On
Hotkey, LAlt & f, On
Hotkey, LAlt & g, On
Hotkey, LAlt & h, On
Hotkey, LAlt & i, On
Hotkey, LAlt & j, On
Hotkey, LAlt & k, On
Hotkey, LAlt & l, On
Hotkey, LAlt & m, On
Hotkey, LAlt & n, On
Hotkey, LAlt & o, On
Hotkey, LAlt & p, On
Hotkey, LAlt & q, On
Hotkey, LAlt & r, On
Hotkey, LAlt & s, On
Hotkey, LAlt & t, On
Hotkey, LAlt & u, On
Hotkey, LAlt & v, On
Hotkey, LAlt & w, On
Hotkey, LAlt & x, On
Hotkey, LAlt & y, On
Hotkey, LAlt & z, On

Hotkey, LCtrl & a, On
Hotkey, LCtrl & b, On
Hotkey, LCtrl & c, On
Hotkey, LCtrl & d, On
Hotkey, LCtrl & e, On
Hotkey, LCtrl & f, On
Hotkey, LCtrl & g, On
Hotkey, LCtrl & h, On
Hotkey, LCtrl & i, On
Hotkey, LCtrl & j, On
Hotkey, LCtrl & k, On
Hotkey, LCtrl & l, On
Hotkey, LCtrl & m, On
Hotkey, LCtrl & n, On
Hotkey, LCtrl & o, On
Hotkey, LCtrl & p, On
Hotkey, LCtrl & q, On
Hotkey, LCtrl & r, On
Hotkey, LCtrl & s, On
Hotkey, LCtrl & t, On
Hotkey, LCtrl & u, On
Hotkey, LCtrl & v, On
Hotkey, LCtrl & w, On
Hotkey, LCtrl & x, On
Hotkey, LCtrl & y, On
Hotkey, LCtrl & z, On

Hotkey, LAlt & Up, On
Hotkey, LAlt & Down, On

Hotkey, <!<+Right, On
Hotkey, <!<+Left, On

Hotkey, <#<+Right, On
Hotkey, <#<+Left, On
}
else
{
Hotkey, LAlt & a, Off
Hotkey, LAlt & b, Off
Hotkey, LAlt & c, Off
Hotkey, LAlt & d, Off
Hotkey, LAlt & e, Off
Hotkey, LAlt & f, Off
Hotkey, LAlt & g, Off
Hotkey, LAlt & h, Off
Hotkey, LAlt & i, Off
Hotkey, LAlt & j, Off
Hotkey, LAlt & k, Off
Hotkey, LAlt & l, Off
Hotkey, LAlt & m, Off
Hotkey, LAlt & n, Off
Hotkey, LAlt & o, Off
Hotkey, LAlt & p, Off
Hotkey, LAlt & q, Off
Hotkey, LAlt & r, Off
Hotkey, LAlt & s, Off
Hotkey, LAlt & t, Off
Hotkey, LAlt & u, Off
Hotkey, LAlt & v, Off
Hotkey, LAlt & w, Off
Hotkey, LAlt & x, Off
Hotkey, LAlt & y, Off
Hotkey, LAlt & z, Off

Hotkey, LCtrl & a, Off
Hotkey, LCtrl & b, Off
Hotkey, LCtrl & c, Off
Hotkey, LCtrl & d, Off
Hotkey, LCtrl & e, Off
Hotkey, LCtrl & f, Off
Hotkey, LCtrl & g, Off
Hotkey, LCtrl & h, Off
Hotkey, LCtrl & i, Off
Hotkey, LCtrl & j, Off
Hotkey, LCtrl & k, Off
Hotkey, LCtrl & l, Off
Hotkey, LCtrl & m, Off
Hotkey, LCtrl & n, Off
Hotkey, LCtrl & o, Off
Hotkey, LCtrl & p, Off
Hotkey, LCtrl & q, Off
Hotkey, LCtrl & r, Off
Hotkey, LCtrl & s, Off
Hotkey, LCtrl & t, Off
Hotkey, LCtrl & u, Off
Hotkey, LCtrl & v, Off
Hotkey, LCtrl & w, Off
Hotkey, LCtrl & x, Off
Hotkey, LCtrl & y, Off
Hotkey, LCtrl & z, Off

Hotkey, LAlt & Up, Off
Hotkey, LAlt & Down, Off

Hotkey, <!<+Right, Off
Hotkey, <!<+Left, Off

Hotkey, <#<+Right, Off
Hotkey, <#<+Left, Off
}
return
#MaxHotkeysPerInterval 1000 
$WheelUp::
Send {WheelDown}
Return

$WheelDown::
Send {WheelUp}
Return
