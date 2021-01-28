# Adobe Fonts Revealer for Windows (Adapted from https://github.com/Kalaschnik/adobe-fonts-revealer/)

> Copy Adobe Fonts (OTF) to your Downloads directory

**Problem**  
Your licensed and activated Adobe Fonts are not accessible. (1) They are stored (hidden) under (macOS): "C:\Users\$USER\AppData\Roaming\Adobe\CoreSync\plugins\livetype\r". And (2), the filenames are some sort of id, which is good for Adobe managing the files, yet not human-readable.

**Solution**  
This script **copies all activated font files to your Downloads directory** and renames all of them to what they represent.
For example, the file `.17969.otf` becomes `MinionPro-BoldCnItCapt.otf` (which includes all cues for font varition, weight, etc.).

## Demo
<p align="center">
  <img src="adobe-font-revealer.gif" width="450" />
</p>

## Execution
You need to have `lcdf-typetools` installed (< 1mb). If you have `texlive` installed, you might already have that tool available.

1. Install `lcdf-typetools`
  - Enable WSL (Windows Subsystem for Linux) in Windows Settings/Control Panel (Reboot necesary)
  - Open cmd/powershell and run the following commands:
      bash
      sudo apt-get update
      sudo apt-get install -y lcdf-typetools`
2. Go to the folder where the reveal.sh script is located and Shift+right click in empty space, choose "Open Linux shell here" in context menu.
   Then run the script using the following command: 
      bash reveal.sh
3. The script will ask you to choose if you are using a Microsoft account or a Local account for your Windows user.
   In Windows 10, microsoft account will use the first 5 characters of your email address as the name of your "C:\Users\%username%" folder, not matching the real username.
   If using microsoft acc, choose option 1.
   If your user is Local and not connected to microsoft acc, choose option 2.
4. Done! You will find the revealed fonts in "C:\Users\%username%\Downloads\FONTS" folder.

