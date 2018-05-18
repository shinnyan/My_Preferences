; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one ahk file simultaneously and each will get its own tray icon.

; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
; launches a web site in the default browser.  The second is Control+Alt+N
; and it launches a new Notepad window (or activates an existing one).  To
; try out these hotkeys, run AutoHotkey again, which will load this file.
; http://www.autohotkey.com/docs/Tutorial.htm


;reloads the script when your working on it
#^r::Reload

;Win+ Sh + c loads Clipboard Magic. Doesn't work, illegal character at x86 programfiles
SetTitleMatchMode, 2
DetectHiddenWindows, On
#+c::
IfWinExist, Clipboard Magic
    ;Run %ProgramFiles%\Clipboard Magic\ClipboardMagic.exe
    WinActivate, Clipboard Magic,,,
else
{
    WinWait, Clipboard Magic
    WinMinimize
}
return

^!n::
IfWinExist Untitled - Notepad
    WinActivate
else
    Run Notepad
return


;Win+w loads Communicator R2
#w::
IfWinNotExist, Lync
    Run %ProgramFiles%\Microsoft Office\Office15\lync.exe
{
IfWinNotActive, Lync
    WinActivate , Lync,,,
    
else
{
    WinWait, Lync
    WinMinimize
    return
}
return
}

#Ifwinactive, ;All hotkeys from now on work in any window.
;Ctrl + Sh + c fwd Windows media player
^+c::
;if WinExist("ahk_class ITWindow") or WinExist("ahk_class iTunes")
;{
;   ControlSend, ahk_parent, ^{RIGHT}
;}
IfWinExist, ahk_class WMPlayerApp
{
SetKeyDelay, 0, 1 ;otherwise doesn't work if currently in WMP window
ControlSend, ahk_parent, ^{f}
}
;
;IfWinExist, ahk_class Winamp v1.x
;ControlSend, ahk_parent, b
return

;Ctrl + Sh + z play previous
^+z::
;if WinExist("ahk_class ITWindow") or WinExist("ahk_class iTunes")
;{
;   ControlSend, ahk_parent, ^{LEFT}
;}
IfWinExist, ahk_class WMPlayerApp
{
SetKeyDelay, 0, 1
ControlSend, ahk_parent, ^{b}
}
;IfWinExist, ahk_class Winamp v1.x
;ControlSend, ahk_parent, z
;
return

;Ctrl + Sh + x pause
^+x::
;if WinExist("ahk_class ITWindow") or WinExist("ahk_class iTunes")
;{
;   ControlSend, ahk_parent, ^{SPACE} ;control for better grip, otherwise doesn't work if were filtering songs
;}
IfWinExist, ahk_class WMPlayerApp
{
SetKeyDelay, 0, 1
ControlSend, ahk_parent, ^{p}
}
;IfWinExist, ahk_class Winamp v1.x
;ControlSend, ahk_parent, c
return



;Win+z create new mail
#z::Run "%ProgramFiles%\Microsoft Office\Office15\OUTLOOK.EXE" /c ipm.note


;Win+q loads Outlook
#q::
SetTitleMatchMode, 2
IfWinNotExist, Outlook 
    Run, outlook,,Max
else
IfWinNotActive, Outlook
    WinActivate 
else
{
    WinWait, Outlook
    WinMinimize
}
return

;Win+H loads HeidiSQL
#+h::
SetTitleMatchMode, 2
IfWinNotExist, HeidiSQL
    Run "C:\Program Files\HeidiSQL\heidisql.exe"
else
{
}
return

;Win+a invoke Ashley pgli80713b.png.intel.com:1
#a::
SetTitleMatchMode, 2
IfWinNotExist, Ashley
    Run C:\Users\stan70\Desktop\Ashley.vnc
else
IfWinNotActive, Ashley
    WinActivate 
else
{
    WinWait, Ashley
    WinMinimize
}
return

;Win+c invoke Chloe fmci200255.fm.intel.com:8
#c::Run "C:\Users\stan70\Desktop\Chloe.vnc"

;Win+E invoke Eroica pglnoble05.png.intel.com:1
#+e::
SetTitleMatchMode, 2
IfWinNotExist, Eroica
    Run "C:\Users\stan70\Desktop\Eroica.vnc"
else
IfWinNotActive, Eroica
    WinActivate 
else
{
    WinWait, Eroica
    WinMinimize
}
return

;Win+F invoke Feuer fmci202278.fm.intel.com:9
#+f::
SetTitleMatchMode, 2
IfWinNotExist, Feuer
    Run "C:\Users\stan70\Desktop\Feuer.vnc"
else
IfWinNotActive, Feuer
    WinActivate 
else
{
    WinWait, Feuer
    WinMinimize
}
return

;Win+B invoke Brahms ihdk-nob1-imu.imu.intel.com:1
#+b::
SetTitleMatchMode, 2
IfWinNotExist, Brahms
    Run "C:\Users\stan70\Desktop\Brahms.vnc"
else
IfWinNotActive, Brahms
    WinActivate 
else
{
    WinWait, Brahms
    WinMinimize
}
return
 

;Paste the following into the script (The following emulate middlebutton with LShift + RShift)
LShift & RShift::
    Send {MButton}
    return

;replace yyyy with "Hey, what's up"
:c:yyyy::Hey, what's up

; Project specific key maps
:c:rnhf::$NOBLE_HIP_FLOW_DIR
:c:riphub::$IPHUB
:c:rgrootsie::$CR_HELPER
:c:rconfigulate::$CONFIGULATE
:c:rcfgl::$CONFIGULATE_LOCAL

; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.
