$date = ((Get-Date).tostring("dd MMM yyyy"))
$year = ((Get-Date).tostring("yyyy"))
$path1= "E:\DHCP Backup\$year\$date"
$path2= "\\grape\IT\Server\Active Directory\DHCP Backup\DC\$env:COMPUTERNAME\$year\$date\"
New-Item -ItemType Directory -Path "$path1" -force
New-Item -ItemType Directory -Path "$path2" -force
Backup-DhcpServer -Path $path1
Start-Sleep -second 20
copy-item -path "$path1\*" -Destination $path2 -Recurse -Force
Send-MailMessage -from "DHCP_backup@miramedajuba.com" -to "amarnath.kubendiran@miramedajuba.com" -Subject "DHCP backup completed in $env:COMPUTERNAME " -SmtpServer "exchange.miramedajuba.com"
