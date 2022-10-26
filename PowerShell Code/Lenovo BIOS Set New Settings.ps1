#Connect to the Lenovo_SetBiosSetting WMI class
$Interface = Get-WmiObject -Namespace root\wmi -Class Lenovo_SetBiosSetting
 
#Set a specific BIOS setting when a BIOS password is not set
$Interface.SetBiosSetting("BluetoothAccess,Enable")
 
#Set a specific BIOS setting when a BIOS password is set
$Interface.SetBiosSetting("SettingName,SettingValue,Password,ascii,us")
