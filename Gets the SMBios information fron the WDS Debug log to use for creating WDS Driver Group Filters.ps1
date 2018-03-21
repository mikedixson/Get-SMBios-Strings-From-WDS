<#
.Synopsis
   Gets the SMBios information fron the WDS Debug log to use for creating WDS Driver Group Filters
.DESCRIPTION
   Please ensure that you have created the empty registry key
   HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\EventLog\Microsoft-Windows-Deployment-Services-Diagnostics/Debug
   before running this script
.EXAMPLE
   ./Get-SMBios-Strings-From-WDS.ps1
.LINK
    http://mikedixson.com
#>
Get-WinEvent -Logname Microsoft-Windows-Deployment-Services-Diagnostics/Debug | Where-Object {$_.Message -like '*Client SMBios*'} | FL
