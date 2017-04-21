@echo off

del /q px.spec
rmdir /s /q build
rmdir /s /q __pycache__

rmdir /s /q dist

rem pyinstaller --clean --noupx -w -i px.ico px.py
rem copy px.ini dist\px\.
rem copy *.txt dist\px\.
rem upx --best dist\px\*.pyd
rem upx --best dist\px\py*.dll

pyinstaller --clean --onefile -w -i px.ico px.py
copy px.ini dist\.
copy *.txt dist\.

del /q px.spec
rmdir /s /q build
rmdir /s /q __pycache__