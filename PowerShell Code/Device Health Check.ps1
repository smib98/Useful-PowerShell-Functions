#Check Camera Status
Get-CimInstance Win32_PnPEntity | where caption -match 'integrated camera' | Select Status -expandProperty Status | Out-File -FilePath ($env:TEMP + '\HealthCheck.txt')

#Check Microphone Status
Get-CimInstance Win32_PnPEntity | where caption -match 'Microphone' | Select Status -expandProperty Status | Out-File -FilePath ($env:TEMP + '\HealthCheck.txt') -Append

#Check Speaker Status
Get-CimInstance Win32_PnPEntity | where caption -match 'Speakers' | Select Status -expandProperty Status | Out-File -FilePath ($env:TEMP + '\HealthCheck.txt') -Append

#Get and open Battery Health Report
powercfg /batteryreport /output ($env:TEMP + "\BatteryReport.html");Invoke-Expression ($env:TEMP + "\BatteryReport.html")
