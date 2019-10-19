@echo OFF
 
SETLOCAL
 
REM The installation directory where SSDT tools
SET SQLDIR=C:\Program Files (x86)\Microsoft SQL Server\140\DAC\bin\
SET SQLPACKAGE="%SQLDIR%SqlPackage.exe"

REM C:\Program Files (x86)\Microsoft SQL Server\140\DAC\bin>SqlPackage.exe /a:Publish  /sf:"C:\SQLShackDemo\SQLShackDemo_1.dacpac" /tcs:"Data Source=hqdbt01;Initial Catalog=SQLShackDemo;Integrated Security=SSPI;Persist Security Info=False;"

REM Specify the path of the dacpac files
SET DATABASEDIR=C:\Git\Development\
 
REM The database for export and import
SET SRCDATABASENAME=dacpac_db_dev
SET TGTDATABASENAME=dacpac_db_qa
 
REM The SQL Server Source instance
SET SOURCESERVERNAME=192.168.1.101
 
REM The SQL Server target instance
SET TARGETSERVERNAME=192.168.1.102


REM Get the datetime in a format that can go in a filename.
For /f "tokens=2-4 delims=/ " %%a in ("%date%") do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ("%TIME%") do (set mytime=%%a%%b)
echo %mydate%_%mytime%

REM ****** EXTRACT dacpac File *******
%SQLPACKAGE% /a:Extract /of:False /tf:%DATABASEDIR%%SRCDATABASENAME%_%mydate%_%mytime%.DacPac /scs:"Data Source=%SOURCESERVERNAME%;Initial Catalog=%SRCDATABASENAME%;Integrated Security=SSPI;Persist Security Info=False;"


REM Find the latest DACPAC file using the pattern matching technique
FOR /F "tokens=*" %%d IN ('DIR %DATABASEDIR%%SRCDATABASENAME%*.DacPac /B /OD /A-D') DO SET DACPACNAME=%%d
IF "%DACPACNAME%"=="" GOTO :DacPacfilenotfound

SET DATABASEFILE=%DATABASEDIR%%DACPACNAME%
 

REM Publish DacPac
%SQLPACKAGE% /a:Publish /sf:%DATABASEDIR%%SRCDATABASENAME%_%mydate%_%mytime%.DacPac /tcs:"Data Source=%TARGETSERVERNAME%;Initial Catalog=%TGTDATABASENAME%;Integrated Security=SSPI;Persist Security Info=False;"
IF %ERRORLEVEL% NEQ 0 GOTO :ERRORBLOCK
 
GOTO :complete
 
:DacPacfilenotfound
ECHO dacpac file doesn't exists
EXIT /B 1
 
:ERRORBLOCK
ECHO dacpac Publish failure
EXIT /B 1
 
:complete
ENDLOCAL