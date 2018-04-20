$inStr = Read-Host -Prompt 'Hit me with it: '
$SecStr = ConvertTo-SecureString $inStr –asplaintext –force

$userList = Get-LocalUser -Name *
Foreach ($usr in $userList){
    $usr | Set-LocalUser -Password $SecStr
}

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 1 /f

Invoke-Item (start powershell ((Split-Path $MyInvocation.InvocationName) + "\fwall.ps1"))
