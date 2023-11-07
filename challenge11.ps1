
# Enable File and Printer Sharing
Did your script enable File and Printer Sharing?YES
What did you do to test before/after? Try to look at
Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True
(setting a new rule)(Show group)(The group selected)(Enables it to run)

# Allow ICMP traffic
Did your script allow ICMP traffic?Yes
What did you do to test before/after? I ran it right after i ran the script to enable file and printer sharing
netsh advfirewall firewall add rule name="Allow incoming ping requests IPv4" dir=in action=allow protocol=icmpv4 
(telling the firewall too add a new rule)(Allow incoming the ip to ping with the firewall)(Allow new directory)(tells what protocol follow)

# Enable Remote management
Did your script enable Remote management?Yes
What did you do to test before/after? I couldt get it to run so  went on ChatGPT to use another command and it worked. I believe it was a shorter version
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
(enables RDD) ( i use Enable-PSRemoting -Force)

#Remove bloatware
Did your script remove bloatware?Yes. But after it got stuck so i rebooted VS code after it failed to load up again,
What did you do to test before/after? Before i was getting an error to find out that i could just copy and paste the command. Before this i was writting the commands by myself. Going back and forth with opening different windows.
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))
(Tells the computer that it want to open a new web)(The link it wants you to join)

# Enable Hyper-V
Did your script enable Hyper-V?Yes But i said no i did not want it to reboot and potentially loose all data saved in powershell
What did you do to test before/after?I copied and paste and and it work but i chosed no
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
(telling the computer wheat option you want it to enable)( telling it online.)(feature to restart)

# Disable SMBv1, an insecure protocol
Did your script disable SMBv1?Not that i know of
What did you do to test before/after? I ran hyper V but said no because i did not want it it restart and when i ran this it did not do anything
Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force
On this i did not know what i meant and when i ran it, it did not do anything

Additional Resources: https://chat.openai.com/share/abe6bae2-f8b1-4f07-9be0-b27f79b9d4e8     https://github.com/superswan/Powershell-SysAdmin/tree/5cef76f9666e351ae6eff107c607483f2e643e13#remote-manage

Google doc with pictures: https://docs.google.com/document/d/1Iqi2FEJDEByOUupwjTo0tU8xXczt255y015AioBPA48/edit?usp=sharing