#!/bin/sh

echo "Font Revealer for Adobe Creative Cloud (Windows Version)"

cd /mnt/c/Users/$USER/AppData/Roaming/Adobe/CoreSync/plugins/livetype/r/

for file in *

do  

  # the "Postscript name:" does not contain spaces. good for file names.
  fontName=`otfinfo --info ${file} | fgrep "PostScript name:" | grep -oE "[^ ]+$"`
  
  # create a FONT dir within downloads, if there is none
  mkdir -p /mnt/c/Users/$USER/Downloads/FONTS/
  
  # copy files
  cp $file "/mnt/c/Users/$USER/Downloads/FONTS/$fontName.otf"
  
  # echo changes:
  echo "$file\t⮕\t$fontName.otf"
  
done

echo "DONE! All fonts downloaded to C:/User/$USER/Downloads/FONTS".

