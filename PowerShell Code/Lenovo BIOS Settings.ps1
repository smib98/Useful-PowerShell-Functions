#Connect to the Lenovo_BiosSetting WMI class
$SettingList = Get-WmiObject -Namespace root\wmi -Class Lenovo_BiosSetting

#Return a list of all configurable settings
$SettingList | Select-Object CurrentSetting
 
#Return a specific setting and value
$SettingList | Where-Object CurrentSetting -Like "BluetoothAccess*" | Select-Object -ExpandProperty CurrentSetting
