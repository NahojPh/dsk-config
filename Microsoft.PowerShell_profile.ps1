#Invoke-expression (starship.exe init powershell)
$env:path += ";C:\Users\0402johphi\cli\helix-22.03-x86_64-windows"
$env:path += ";C:\Users\0402johphi\cli"
$env:path += ";C:\Users\0402johphi\cli\jdk-17.0.2\bin"

function dsk {Set-Location "C:\users\0402johphi\Desktop\"}
Set-Alias -Name hx -Value ha
# Set-Alias -Name lsd -Value "ls | where type == dir"
# Set-Alias -Name lsf -Value "ls | where type == file"
function cr {cargo run}
function ci {cargo init}
function cb {cargo build}
function ca {cargo add}
function pr {Set-Location "C:\Users\0402johphi\projects"}
function .. {Set-Location ..}


