Set-PSDebug -Trace 1
Set-ExecutionPolicy -ExecutionPolicy Undefined -Scope CurrentUser
$RegKey = "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies"
If(Test-Path ($RegKey + "\Explorer"))
{
 $RegKey = "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"
  ##Enabled
  New-ItemProperty -path $RegKey -name NoDesktop -value 1 -PropertyType DWord -Force
}
else
{
 New-Item -path $RegKey -name Explorer
 $RegKey = "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"
  ##Enabled
  New-ItemProperty -path $RegKey -name NoDesktop -value 1 -PropertyType String
}
