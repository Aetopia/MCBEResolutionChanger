; Made by MandaTheAnda. Discord: MandaTheAnda#6723
; Application Properties
#NoTrayIcon
#Persistent
#SingleInstance,Force
;Generates the Options.ini if it doesn't exist.
IniRead, MC_W, options.ini, MC_Resolution, MC_Width, Default
IniRead, MC_H, options.ini, MC_Resolution, MC_Height, Default
IniRead, W, options.ini, Screen_Resolution, Width, Default
IniRead, H, options.ini, Screen_Resolution, Height, Default
IniRead, R, options.ini, Screen_Resolution, Refresh_Rate, Default
IniRead, D, options.ini, Debug, Enable_Debugging, Default
If (MC_W = "Default" and MC_H = "Default" and W = "Default" and H = "Default" and R = "Default" and D ="Default"){
	IniWrite, 0, options.ini, MC_Resolution, MC_Width
	IniWrite, 0, options.ini, MC_Resolution, MC_Height
	IniWrite, 0, options.ini, Screen_Resolution, Width
	IniWrite, 0, options.ini, Screen_Resolution, Height 
	IniWrite, 0, options.ini, Screen_Resolution, Refresh_Rate
	IniWrite, 32, options.ini, Screen_Resolution, Color_Depth
	IniWrite, 0, options.ini, Debug, Enable_Debugging
}
;Defines the Function for changing the screen resolution.

If (D = 1)
{
	MsgBox,, Warning!, The Debugger is enabled now you will now see the following message box with the following text whenever you launch MCBE; Color Depth, Screen Width, Screen Height, Refresh Rate
}


ChangeResolution( cD, sW, sH, rR ) { 
	VarSetCapacity(dM,156,0), NumPut(156,2,&dM,36) 
	DllCall( "EnumDisplaySettingsA", UInt,0, UInt,-1, UInt,&dM ), 
	NumPut(0x5c0000,dM,40) NumPut(cD,dM,104), NumPut(sW,dM,108), NumPut(sH,dM,112), NumPut(rR,dM,120) 
	Return DllCall( "ChangeDisplaySettingsA", UInt,&dM, UInt,0 ) 
}

SetTimer, MCActive, On
SetTimer, MCNotActive, Off
return

;Timers for changing the screen resolution.

MCActive:
IfWinActive, Minecraft ahk_exe ApplicationFrameHost.exe
{
	IniRead, MC_W, options.ini, MC_Resolution, MC_Width, Default
	IniRead, MC_H, options.ini, MC_Resolution, MC_Height, Default
	IniRead, R, options.ini, Screen_Resolution, Refresh_Rate, Default
	IniRead, CD, options.ini, Screen_Resolution, Color_Depth, Default
	IniRead, D, options.ini, Debug, Enable_Debugging, Default
	;Debug Check
	If (D = 1)
	{
		MsgBox,, MCBE Resolution, %CD%, %MC_W%, %MC_H%, %R%
	}
	ChangeResolution(CD, MC_W, MC_H, R)
	SetTimer, MCNotActive, On 
	SetTimer, MCActive, Off
}
return

MCNotActive:
IfWinNotActive, Minecraft ahk_exe ApplicationFrameHost.exe
{
	IniRead, W, options.ini, Screen_Resolution, Width, Default
	IniRead, H, options.ini, Screen_Resolution, Height, Default
	IniRead, CD, options.ini, Screen_Resolution, Color_Depth, Default
	IniRead, R, options.ini, Screen_Resolution, Refresh_Rate, Default
	IniRead, D, options.ini, Debug, Enable_Debugging, Default
	;Debug Check
	If (D = 1)
	{
		MsgBox,, Screen Resolution, %CD%, %W%, %H%, %R%
	}
	
	ChangeResolution(CD, W, H, R)
	SetTimer, MCNotActive, Off 
	SetTimer, MCActive, On
}
return