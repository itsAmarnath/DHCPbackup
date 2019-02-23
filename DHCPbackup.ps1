$date = ((Get-Date).tostring("dd MMM yyyy"))
$path = "D:\Backup\DHCP"
New-Item -ItemType Directory -Path "$path1" -force
Backup-DhcpServer -Path $path1

