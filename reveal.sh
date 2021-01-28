#!/bin/bash

username=$USER
microsoftusername=${username:0:5}

printf  "\nFont Revealer for Adobe Creative Cloud (Windows)\n\nSelect your user type and username to find the path to Adobe Fonts folder.\nYou can check C:/Users folder to see your actual username.\nMicrosoft account username takes the first 5 chars from email\n\nPlease choose your username:\n\n  1) Microsoft account user (Username: $microsoftusername)\n  2) Local user (Username: $username)\n\nYour choice (1/2): "
read account

if [ "$account" != "${account#[1]}" ] ;then
	accounttype=$microsoftusername
    printf "\nSelected Microsoft user account.\n\n"
else
	accounttype=$username
    printf "\nSelected Local user account.\n\n"
fi


cd /mnt/c/Users/$accounttype/AppData/Roaming/Adobe/CoreSync/plugins/livetype/r/

for file in *

do  

  # the "Postscript name:" does not contain spaces. good for file names.
  fontName=`otfinfo --info ${file} | fgrep "PostScript name:" | grep -oE "[^ ]+$"`
  
  # create a FONT dir within downloads, if there is none
  mkdir -p /mnt/c/Users/$accounttype/Downloads/FONTS/
  
  # copy files (if no dry-run)
  cp $file "/mnt/c/Users/$accounttype/Downloads/FONTS/$fontName.otf"
  
# print changes:
  printf "$file\t--->\t$fontName.otf\n"
  
done

printf "\nDONE!\nAll fonts downloaded to C:/User/$accounttype/Downloads/FONTS".
