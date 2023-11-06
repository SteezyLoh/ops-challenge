#!/bin/bash

# Script Name:                  Powershell.sh
# Author:                       Scotty Jokon        
# Date of latest revision:      10/27/2023
# Purpose:                      bash loops
# Sources:                      https://chat.openai.com COHORT Rodolfo Gonzalez

# Print all active processes ordered by highest CPU time consumption at the top
Get-Process | Sort-Object -Property CPU -Descending | Format-Table -AutoSize

# Print all active processes ordered by highest Process Identification Number at the top
Get-Process | Sort-Object -Property Id -Descending | Format-Table -AutoSize

# Print the top five active processes ordered by highest Working Set (WS(K)) at the top
Get-Process | Sort-Object -Property WS -Descending | Select-Object -First 5 | Format-Table -AutoSize

# Start a browser process (Google Chrome, msedge) and open https://owasp.org/www-project-top-ten/
Start-Process "chrome" "https://owasp.org/www-project-top-ten/"
Start-Process "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" "https://owasp.org/www-project-top-ten/"
Stop-Process -Name msedge



# Start the process Notepad ten times using a for loop
for ($i = 1; $i -le 10; $i++) {
    Start-Process "notepad"
}

# Close all instances of Notepad (both of this commands work but I preffer the short one.
Get-Process | Where-Object { $_.ProcessName -eq "notepad" } | ForEach-Object { Stop-Process -Id $_.Id }
Get-Process -Name notepad | Stop-Process


# Kill a process by its Process Identification Number (e.g., Google Chromem, msedge)

$processPid = (Get-Process -Name "msedge").Id
