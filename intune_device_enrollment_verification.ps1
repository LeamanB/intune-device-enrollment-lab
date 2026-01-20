# Purpose: Verify Windows device enrollment into Microsoft Intune (MDM)
# Scope: Local device inspection only

Write-Host "Checking MDM enrollment status..."
dsregcmd /status

Write-Host "Checking Intune enrollment registry keys..."
Get-ChildItem "HKLM:\SOFTWARE\Microsoft\Enrollments" |
Select-Object PSChildName

Write-Host "Checking MDM certificates..."
Get-ChildItem Cert:\LocalMachine\My |
Where-Object { $_.Issuer -like "*Microsoft*" } |
Select Subject, Issuer, NotAfter

Write-Host "Checking MDM scheduled tasks..."
Get-ScheduledTask |
Where-Object { $_.TaskName -like "*MDM*" } |
Select TaskName, State
