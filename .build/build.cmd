@ECHO OFF
SET CURDIR=%CD%
SET DOCS=%~dp0\..\docs
CD %~dp0
IF NOT EXIST node_modules ( npm install )
CD %DOCS%
IF EXIST obj ( del /s /q obj )
IF EXIST vslivesharedocs ( del /s /q vslivesharedocs )
CALL ..\.build\node_modules\.bin\markdownlint .
CALL docfx docfx.json
CD %CURDIR%