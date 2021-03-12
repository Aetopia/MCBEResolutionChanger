# MCBEResolutionChanger

## Introduction
The MCBE Resolution Changer is a utility that dynamically changes your screen resolution to a low resolution whenever MCBE is launched.
MCBE doesn't allow the ability to be played at low resolutions unless you change your display resolution in windows settings which forces the game to scale down to a lower resolution. The MCBE Resolution Changer automates this process changes your screen resolution whenever MCBE is launched and reverts your screen resolution to its native resolution whenever the game window is inactive or closed.

## How to use the MCBE Resolution Changer?

Its simple and easy to setup.

1. First download the latest executable.
2. Then double click on it to start up the MCBE Resolution Changer.
3. An options.ini file should generate when the application starts.
4. Click on it and open it up with notepad.
5. This is what you should see in the file;
```
[MC_Resolution]
MC_Width=0
MC_Height=0
[Screen_Resolution]
Width=0
Height=0
Refresh_Rate=0
Color_Depth=32
[Debug]
Enable_Debugging=0
```
6. The MC_Width and MC_Height keys stores the height and width of your preferred MCBE Resolution.
You can use any resolution as long as your display supports it.
Recommended Resolutions:
1280x720 and 1600x900
The values you enter should look like this:
```
[MC_Resolution]
MC_Width=1280
MC_Height=720
[Screen_Resolution]
Width=0
Height=0
Refresh_Rate=0
Color_Depth=32
[Debug]
Enable_Debugging=0
```
7. The Height, Width and Refresh Rate keys store the height and width of your screen native resolution and refresh rate.
Just enter the height, width and refresh rate your display into these keys;
 ```
[MC_Resolution]
MC_Width=1280
MC_Height=720
[Screen_Resolution]
Width=1920
Height=1080
Refresh_Rate=60
Color_Depth=32
[Debug]
Enable_Debugging=0
```
8. Now save the file and launch MCBE. The game will scale down to your preferred resolution whenever launched.

### Troubleshooting
If the MCBE Resolution Changer doesn't work then do the following.

1. Verify if all values in the options.ini are correct.
2. Ensure the application "MCBERes64Bit.exe" is running the background.

## Does the application improve performance or FPS?
You can see the attached pdf file for proof.

