#!/bin/bash

# Script Name:                  Powershell.sh
# Author:                       Scotty Jokon        
# Date of latest revision:      10/27/2023
# Purpose:                      bash loops
# Sources:                      https://chat.openai.com

# Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.

Get-WinEvent -LogName System -StartTime (Get-Date).AddDays(-1) | Out-File -FilePath "$env:USERPROFILE\Desktop\last_24.txt"

# Output all "error" type events from the System event log to a file on your desktop named errors.txt

Get-WinEvent -LogName System -FilterHashTable @{LogName='System'; Level=2} | Out-File -FilePath "$env:USERPROFILE\Desktop\errors.txt"

# Print to the screen all events with ID of 16 from the System event log

Get-WinEvent -LogName System | Where-Object { $_.Id -eq 16 }

# Print to the screen the most recent 20 entries in the System event log. 

Get-WinEvent -LogName System -MaxEvents 20 | Format-Table -AutoSize

# Print to the screen all the sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the ..... that shows in the text)
Get-WinEvent -LogName System -MaxEvents 500 | Select-Object -ExpandProperty ProviderName | Format-Table -Wrap -AutoSize

# Done














# End