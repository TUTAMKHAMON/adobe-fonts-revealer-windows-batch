# Adobe Fonts Revealer for Windows

> Find and extract Adobe Fonts (OTF) to your Downloads directory

This script copies all Adobe activated font files hidden in `"%AppData%\Adobe\CoreSync\plugins\livetype\r"` to your Downloads directory and renames all of them to what they represent.
For example, the file `40414` becomes `NotoSans-SemiBoldItalic.otf` (which includes all cues for font variation, weight, etc.).

## Demo
<p align="center">
  <img src="adobe-font-revealer.gif" width="600" />
</p>

## How to use

1. Download this repository. (Always keep `reveal.bat` and `otfinfo.exe` together);
2. Run `reveal.bat`;
4. Done! Press any key at the end or go to your downloads directory to find the fonts.

> Script taken and adapted from https://github.com/Anibaaal/adobe-fonts-revealer-windows (WSL version), which in turn was taken and adapted from https://github.com/Kalaschnik/adobe-fonts-revealer (macOS version).
