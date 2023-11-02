#!/bin/bash

# Script Name:                  bash conditionals
# Author:                       Scotty Jokon
# Date of latest revision:      10/30/2023
# Purpose:                      RobyCopy
# Additional Resources:         Chat.openaAI.com

@echo off = Turning off echo so it doesn't spit any commands out
setlocal enabledelayedexpansion = This is used to enable the variable expanstion,It allways you to get the updated value of the variable you wish

set /p sourcePath=Enter the source folder path: = This command you are telling the user set path and enter the folder path.

set /p destinationPath=Enter the destination folder path: = Telling the user where they want to store the folder path

if not exist "!sourcePath!\" ( = If the path does not exist
    echo Error: Source folder does not exist. = give them an error stating that folder does not exist
    goto :eof = got to a lable call end of file.
)

if not exist "!destinationPath!\" ( = If there is no distination path
    echo Error: Destination folder does not exist. = then it tells user that the desitation folder does not exist
    goto :eof =  tells user there want be anything exacuted.
)

robocopy "!sourcePath!" "!destinationPath!" /E = Its telling to copy source directory to its distination directory

if errorlevel 8 ( = If therre is an error
    echo Error: ROBOCOPY encountered errors during the copy operation. = tells the user that robocopy was an error during the process
) else ( = OR
    echo Copy operation completed successfully. = tells it that there was no error and everything was suceessful
) = closed function

:end = the end
endlocal = end the local function