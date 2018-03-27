@ECHO OFF
SET DOCS=%~dp0\..\docs
IF EXIST %DOCS%\obj ( del /s /q %DOCS%\obj )
IF EXIST %DOCS%\vslivesharedocs ( del /s /q %DOCS%\vslivesharedocs )
docfx %DOCS%\docfx.json
