$date = ((Get-Date).tostring("dd MMM yyyy"))   \\Gets current date
$path = "D:\Backup\DHCP\"                       \\Path for Backup location       
New-Item -ItemType Directory -Path "$path1" -force \\Creates new folder in current date
Backup-DhcpServer -Path $path 

