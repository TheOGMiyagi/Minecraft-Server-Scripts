#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#MaxThreadsPerHotkey 3
#SingleInstance Force

;This script is for making hotkeyed commands on the Minecraft Victorville Server.
;IP: victorville.wtf

/*TO-DO List:
- Add "/f tnt" commands
*/

If (!WinExist("ahk_exe javaw.exe"))
{
	MsgBox,,Slow Down There!!!, Please launch Minecraft before running this script!,3
	ExitApp
}
Else
{
	MsgBox,,Victorville Server Keybinds - Legend, Key Binds:`n`nNumpad0 = "/f home"`nNumpadDot = "/p home"`nNumpadEnter = "/shop"`n`nNumpadDiv = "/tpa "`nNumpadMult = "/tpahere "`nNumpadAdd = "/tpaccept"`nNumpadSub = "/tpno"`n`nNumpad7 = "/f claim"`nNumpad8 = "/f fly"`nNumpad9 = "/f unclaim",10
}

!F4:: ExitApp ;Killswitch
!F3:: Suspend, Toggle ;Suspend Hotkeys

#IfWinActive ahk_exe javaw.exe ;Ensures your keyboard functions normally outside of Minecraft.
	
	;NOTICE: Do not use these hotkeys while moving, or the string injection will NOT work!
	;NOTICE (CONT.): As the script is not aware of the game states your client (nor the server) is in, pressing these keys at anytime 
	
	;Symbol & Special Key Hoykeys
	NumpadDot::	;TP Plot Home
		Send, {/} ;Opens Chat
		Sleep 150
		Send, {Text}p home! ;Desired Message goes here.
		Sleep 150
		Send, {Enter} ;Automatically Sends to Game Chat
	return
	
	NumpadEnter::	;Open Shop
		Send, {/} ;Opens Chat
		Sleep 150
		Send, {Text}shop! ;Desired Message goes here.
		Sleep 150
		Send, {Enter} ;Automatically Sends to Game Chat
	return
	
	NumpadAdd::	;TPA Accept
		Send, {/} ;Opens Chat
		Sleep 150
		Send, {Text}tpaccept! ;Desired Message goes here.
		Sleep 150
		Send, {Enter} ;Automatically Sends to Game Chat
	return
	
	NumpadSub::	;TPA Ignore
		Send, {/} ;Opens Chat
		Sleep 150
		Send, {Text}tpno ;Desired Message goes here.
		Sleep 150
		Send, {Enter} ;Automatically Sends to Game Chat
	return
	
	NumpadMult::	;TPA Here
		Send, {/} ;Opens Chat
		Sleep 150
		Send, {Text}tpahere ! ;Desired Message goes here.
		Sleep 100
	return
	
	NumpadDiv::	;TPA
		Send, {/} ;Opens Chat
		Sleep 150
		Send, {Text}tpa ! ;Desired Message goes here.
		Sleep 100
	return
	
	
	;Number Hotkeys
	Numpad0:: ;TP Faction Home
		Send, {/} ;Opens Chat
		Sleep 150
		Send, {Text}f home! ;Desired Message goes here.
		Sleep 150
		Send, {Enter} ;Automatically Sends to Game Chat
		Sleep 100
	return
	
	
	;Edit the first "Send," command to determine your chat message's functionality.
	;Edit the <text> with the string you want to inject into the chat.
	
	;Numpad1::
		Send, {/} ;Use "{/}" for commands and "{t}" for messages
		Sleep 150
		SendInput, {Numpad1}! ;Desired Key goes here.
		Sleep 150
		Send, {Enter} ;Automatically Sends to Game Chat
		Sleep 100
	return 
	
	;Numpad2::
		Send, {/} ;Opens Chat
		Sleep 150
		SendInput, {Numpad2} ;Desired Message goes here.
		Sleep 150
		Send, {Enter} ;Automatically Sends to Game Chat
		Sleep 100
	return
	
	;Numpad3::
		Send, {/} ;Opens Chat
		Sleep 150
		SendInput, {Numpad3} ;Desired Message goes here.
		Sleep 150
		Send, {Enter} ;Automatically Sends to Game Chat
		Sleep 100
	return  
	
	;Numpad4::
		Send, {/} ;Opens Chat
		Sleep 150
		SendInput, {Numpad4} ;Desired Message goes here.
		Sleep 150
		Send, {Enter} ;Automatically Sends to Game Chat
		Sleep 100
	return 
	
	;Numpad5::
		Send, {/} ;Opens Chat
		Sleep 150
		SendInput, {Numpad5} ;Desired Message goes here.
		Sleep 150
		Send, {Enter} ;Automatically Sends to Game Chat
		Sleep 100
	return
	
	;Numpad6::
		Send, {/} ;Opens Chat
		Sleep 150
		SendInput, {Numpad6} ;Desired Message goes here.
		Sleep 150
		Send, {Enter} ;Automatically Sends to Game Chat
		Sleep 100
	return
	
	Numpad7:: ;Claim Chunk For Faction
		Send, {/} ;Opens Chat
		Sleep 150
		Send, {Text}f claim;Desired Message goes here.
		Sleep 150
		Send, {Enter} ;Automatically Sends to Game Chat
		Sleep 100
	return 
	
	Numpad8:: ;Faction Fly
	Send, {/} ;Opens Chat
	Sleep 150
	Send, {Text}f fly ;Desired Message goes here.
	Sleep 150
	Send, {Enter} ;Automatically Sends to Game Chat
	Sleep 100
	return 
	
	Numpad9::
	Send, {/} ;Opens Chat
	Sleep 150
	Send {Text}f unclaim ;Desired Message goes here.
	Sleep 150
	Send, {Enter} ;Automatically Sends to Game Chat
	Sleep 100
	return