# Set screen lock timeout in 5 minutes(300Seconds)
$timeoutInSeconds = 300

# Define the  registry key path 
$registryPath = "HKCU:\Control Panel\Desktop"

# Set the value of registry=ScreenSaveTimeOut
Set-ItemProperty -Path $registryPath -Name ScreenSaveTimeOut -Value $timeoutInSeconds

# ( Your going to have to set up a password if you want to log back in (once))
Set-ItemProperty -Path $registryPath -Name ScreenSaverIsSecure -Value 1

# Display a message when the screen is locked
Write-Host " You have been a naughty boy. Your screen lock timeout set to $($timeoutInSeconds) seconds. Screensaver password protection enabled."