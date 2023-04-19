#Connect to the Lenovo_SaveBiosSetting WMI class
$SaveSettings = Get-WmiObject -Namespace root\wmi -Class Lenovo_SaveBiosSettings
 
#Save any outstanding BIOS configuration changes (no password set)
$SaveSettings.SaveBiosSettings()
 
#Save any outstanding BIOS configuration changes (password set)
$SaveSettings.SaveBiosSettings("Password,ascii,us")
