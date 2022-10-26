### Query Password ###
#Connect to the Lenovo_BiosPasswordSettings WMI class
$PasswordSettings = Get-WmiObject -Namespace root\wmi -Class Lenovo_BiosPasswordSettings
 
#Check the current password configuration state
$PasswordSettings.PasswordState


### Set Bios Password ###
#Connect to the Lenovo_SetBiosPassword WMI class
$PasswordSet = Get-WmiObject -Namespace root\wmi -Class Lenovo_SetBiosPassword
 
#Set a BIOS password
$PasswordSet.SetBiosPassword("pap,OldPassword,NewPassword,ascii,us")
