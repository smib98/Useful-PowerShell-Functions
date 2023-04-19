#Connect to the Lenovo_LoadDefaultSettings WMI class
$DefaultSettings = Get-WmiObject -Namespace root\wmi -Class Lenovo_LoadDefaultSettings
 
#Load default settings (no password set)
$DefaultSettings.LoadDefaultSettings()
 
#Load default settings (password set)
$DefaultSettings.LoadDefaultSettings("Password,ascii,us")
