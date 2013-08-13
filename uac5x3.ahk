; Source https://gist.github.com/ShaneIsrael/6218165#file-mwo-3-uac5-macro-ahk

#InstallMouseHook ;This line is needed for the script to get input from the mouse
#InstallKeyBDHook ;This line is needed for the script to get keyboard input
 
;These next 2 lines make it so the script is only active within the mechlab and match window
#IfWinActive, ahk_class CryENGINE
#IfWinActive MechWarrior Online
 
F12::Suspend ;This makes the "F12" key turn the script on and off as needed. 
 
IfWinActive MechWarrior Online ;The actual "macro" is below and only works when our MWO window is active
{  
  LButton:: ;LButton means "Left mouse button" basically, whenever the left mouse button is pressed it will run the script
	while GetKeyState("LButton","P") ;while left mouse button is pressed, do whats within the opening and closing brackets
	{
		send {4 down} ;press the '4' key on the keyboard firing our weapon group 4
		sleep 370 ;wait 370 milliseconds 
		send {4 up} ;release the '4' key and then do the same for the '5' and '6' keys
		send {5 down}
		sleep 370
		send {5 up}
		send {6 down}
		sleep 370
		send {6 up}
	}
	Return ;make sure to always have this Return line at the end of your script
}
