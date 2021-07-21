Set-ExecutionPolicy -ExecutionPolicy Undefined -Scope CurrentUser
$RegKey = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies"
If(Test-Path ($RegKey + "\Explorer"))
{
 $RegKey = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"
  ##Enabled
  New-ItemProperty -path $RegKey -name NoDesktop -value 1 -PropertyType DWord -Force
}
else
{
 New-Item -path $RegKey -name Explorer
 $RegKey = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"
  ##Enabled
  New-ItemProperty -path $RegKey -name NoDesktop -value 1 -PropertyType String
}