@echo off

echo Font Revealer for Adobe Creative Cloud (Windows)
echo.

set fonts_path=%USERPROFILE%\AppData\Roaming\Adobe\CoreSync\plugins\livetype\r
set download_path=%USERPROFILE%\Downloads\FONTS
set otfinfo_path=%~dp0otfinfo.exe

if not exist "%download_path%" mkdir "%download_path%"

pushd "%fonts_path%"

for /f "delims=" %%f in ('dir /b /a-d') do (
	for /f "tokens=*" %%a in ('"%otfinfo_path%" -p %%f') do (
		echo 'F' | xcopy /HY "%%f" "%download_path%\%%a.otf" > nul
		attrib -H "%download_path%\%%a.otf"
		echo %%f	---^>	%%a.otf
	)
)

popd

echo.
echo Done! You can press any key to open the fonts folder...
pause > nul

Explorer.exe "%download_path%"