# Adobe Fonts Revealer for Windows 10

> Find and extract Adobe Fonts (OTF) to your Downloads directory

This script copies all activated font files hidden in "%AppData%\Adobe\CoreSync\plugins\livetype\r" to your Downloads directory and renames all of them to what they represent.
For example, the file `17969` becomes `MinionPro-BoldCnItCapt.otf` (which includes all cues for font varition, weight, etc.).

## Demo
<p align="center">
  <img src="https://i.imgur.com/A0q01oT.gif" height="400" />
</p>

## How to use

1. Install `lcdf-typetools` (prerequisite)
  - Enable WSL (Windows Subsystem for Linux) and install a Linux distro. Here's a quick and easy [guide](https://www.windowscentral.com/install-windows-subsystem-linux-windows-10).
  - Open cmd/powershell and run the following commands:
    ```
    bash
    sudo apt-get update
    sudo apt-get install -y lcdf-typetools
    ```
2. Go to the folder where the reveal.sh script is located and Shift+right click in empty space, choose "Open Linux shell here" in context menu.Run the script using the following command: 
       bash reveal.sh
3. The script will ask you to choose if you are using a Microsoft account or a Local account for your Windows user, in order to determine the right path to the Adobe Fonts folder, since folder name will not always match actual username.
   In Windows 10, microsoft account will use the first 5 characters of your email address as the name for your "C:\Users\%username%" folder, making it one of those situations.
   If using microsoft account, choose option 1.
   If your user is Local and not connected to microsoft account, choose option 2.
4. Done! You will find the revealed fonts in "C:\Users\%username%\Downloads\FONTS" folder.

(Script taken and adapted from https://github.com/Kalaschnik/adobe-fonts-revealer/ macOS)
