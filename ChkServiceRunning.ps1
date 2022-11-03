$Computer = "localhost"
$Srv = "W32Time"

$Service = Get-Service -Computername $Computer -name $Srv

$log = New-Item -type file -force "D:\#2022\2022_Scripts\PowerShell\ChkServRun\ServStat.txt"
$Logtime = Get-Date -Format " dd-MM-yyyy__hh-mm-ss"

if($Service.name -eq$Srv)
{
if($Service.status -eq"Running")
{
Write-Output "$Srv service is alredy started and running:$Logtime" | Out-File $log -Append
}
elseif($Service.status -eq"Stoped")
{
Write-Output "$Srv service is stoped now:$Logtime" | Out-File $log -append
}
}



