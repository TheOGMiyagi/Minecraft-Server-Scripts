#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#MaxThreadsPerHotkey 3

;This script is for making hotkeyed commands on the Minecraft Victorville Server.
;IP: victorville.wtf

/*TO-DO List:
- Make Script close with Minecraft
- Open Private GitHub Repository
*/

*F4:: ;Killswitch
	ExitApp
return

*F3:: ;Suspend Hotkeys
	Suspend, Toggle
return

;MsgBox, Key Binds:`nNumpad0 = "Good Game"`nNumpad2 = "Enemies Behind Us"`nNumpad4 = "Enemies On Our Left"`nNumpad5 = "Enemies On The Objective"`nNumpad6 = "Enemies On The Right"

#IfWinActive ahk_exe javaw.exe ;Ensures your keyboard functions normally outside of Minecraft.
	
	;NOTICE: Do not use these hotkeys while moving, or the string injection will NOT work!
	;NOTICE (CONT.): As the script is not aware of the game states your client (nor the server) is in, pressing these keys at anytime 
	
	;Symbol & Special Key Hoykeys
	NumpadDot::	;TP Plot Home
		Send, {/} ;Opens Chat
		Sleep 150
		SendInput, p home! ;Desired Message goes here.
		Sleep 150
		Send, {Enter} ;Automatically Sends to Game Chat
	return
	
	NumpadEnter::	;Open Shop
		Send, {/} ;Opens Chat
		Sleep 150
		SendInput, shop! ;Desired Message goes here.
		Sleep 150
		Send, {Enter} ;Automatically Sends to Game Chat
	return
	
	NumpadAdd::	;TPA Accept
		Send, {/} ;Opens Chat
		Sleep 150
		SendInput, tpaccept! ;Desired Message goes here.
		Sleep 150
		Send, {Enter} ;Automatically Sends to Game Chat
	return
	
	NumpadSub::	;TPA Ignore
		Send, {/} ;Opens Chat
		Sleep 150
		SendInput, tpno ;Desired Message goes here.
		Sleep 150
		Send, {Enter} ;Automatically Sends to Game Chat
	return
	
	NumpadMult::	;TPA Here
		Send, {/} ;Opens Chat
		Sleep 150
		SendInput, tpahere! ;Desired Message goes here.
		Sleep 100
	return
	
	NumpadDiv::	;TPA
		Send, {/} ;Opens Chat
		Sleep 150
		SendInput, tpa ;Desired Message goes here.
		Sleep 100
	return
	
	
	;Number Hotkeys
	Numpad0:: ;TP Faction Home
		Send, {/} ;Opens Chat
		Sleep 150
		SendInput, f home! ;Desired Message goes here.
		Sleep 150
		Send, {Enter} ;Automatically Sends to Game Chat
		Sleep 100
	return
	
	;Edit the first "Send," command to determine your chat message's functionality.
	;Edit the <text> with the string you want to inject into the chat.
	/* Numpad1::
		Send, {/} ;Use "{/}" for commands and "{t}" for messages
		Sleep 150
		SendInput, {Numpad1}! ;Desired Message goes here.
		Sleep 150
		Send, {Enter} ;Automatically Sends to Game Chat
		Sleep 100
	return */
	
	/*Numpad2::
		Send, {/} ;Opens Chat
		Sleep 150
		SendInput, {Numpad2} ;Desired Message goes here.
		Sleep 150
		Send, {Enter} ;Automatically Sends to Game Chat
		Sleep 100
	return */
	
	/* Numpad3::
		Send, {/} ;Opens Chat
		Sleep 150
		SendInput, {Numpad3} ;Desired Message goes here.
		Sleep 150
		Send, {Enter} ;Automatically Sends to Game Chat
		Sleep 100
	return  */
	
	/*Numpad4::
		Send, {/} ;Opens Chat
		Sleep 150
		SendInput, {Numpad4} ;Desired Message goes here.
		Sleep 150
		Send, {Enter} ;Automatically Sends to Game Chat
		Sleep 100
	return */
	
	/*Numpad5::
		Send, {/} ;Opens Chat
		Sleep 150
		SendInput, {Numpad5} ;Desired Message goes here.
		Sleep 150
		Send, {Enter} ;Automatically Sends to Game Chat
		Sleep 100
	return */
	
	/*Numpad6::
		Send, {/} ;Opens Chat
		Sleep 150
		SendInput, {Numpad6} ;Desired Message goes here.
		Sleep 150
		Send, {Enter} ;Automatically Sends to Game Chat
		Sleep 100
	return */
	
	Numpad7::;Claim Chunk For Faction
		Send, {/} ;Opens Chat
		Sleep 150
		Send, {Text}f claim;Desired Message goes here.
		Sleep 150
		Send, {Enter} ;Automatically Sends to Game Chat
		Sleep 100
	return 
	
	Numpad8::
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