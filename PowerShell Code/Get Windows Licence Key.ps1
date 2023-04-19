#Return Windows Licence Key
(Get-WmiObject -query 'select * from SoftwareLicensingService'). OA3xOriginalProductKey
