# MCBEResolutionChanger

## Introduction
The MCBE Resolution Changer is a utility that dynamically changes your screen resolution to a low resolution whenever MCBE is launched.
MCBE does not allow the ability to be played at low resolutions unless you change your display resolution in windows settings which forces the game to scale down to a lower resolution. The MCBE Resolution Changer automates this process by changing your screen resolution whenever MCBE is launched and reverting your screen resolution to its native resolution whenever the game window is inactive or closed.

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
6. The MC_Width and MC_Height keys store the height and width of your preferred MCBE Resolution.
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
7. The Height, Width and Refresh Rate keys store the height and width of your screen's native resolution and refresh rate.
Just enter the height, width and refresh rate of your display into these keys;
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
2. Ensure the application "MCBERes64Bit.exe" is running in the background.

## Does the application improve performance or FPS?
You can see the attached pdf file for proof.
[Download PDF](https://github.com/MandaTheAnda/MCBEResolutionChanger/raw/main/performance.pdf)

## MCBE Resolution Changer Features

1. Dynamically changes your screen resolution when MCBE is launched.
2. Reverts back to your screen's native resolution if the game is inactive or closed.
3. Works sliently in the background.
4. Works with all Minecraft Bedrock Edition Versions (1.2 and above)

## Download
[Download the latest version of the MCBE Resolution Changer](https://github.com/MandaTheAnda/MCBEResolutionChanger/raw/main/MCBERes64Bit.exe)

## FAQ

1. Will this work on any system? A: Yes, it will work on any Windows 10 device.
2. How to add the application to startup? 
   A: Create a shortcut of the application and then move the file to your account's startup folder. (Enter shell:startup in the file pathbar) 
 
## Can I use this application in my projects?
Yes, feel free to use and edit the source ahk file. You can also integrate it into your projects as long as you credit me for the source ahk file.

