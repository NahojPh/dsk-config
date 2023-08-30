#Invoke-expression (starship.exe init powershell)

# $env:path += ";C:\Users\0402johphi\cli\helix-22.03-x86_64-windows"
# $env:path += ";C:\Users\0402johphi\cli"
# $env:path += ";C:\Users\0402johphi\cli\jdk-17.0.2\bin"
# $env:PICO_SDK_PATH = "C:\Users\johan\libraries\pico-sdk"

function dsk {Set-Location "C:\users\johan\Desktop\"}
# Set-Alias -Name hx -Value ha
# Set-Alias -Name lsd -Value "ls | where type == dir"
# Set-Alias -Name lsf -Value "ls | where type == file"
Set-Alias -Name c -Value cargo

function touch {
	param(
		[String] $name
	)
	echo "" > $name
}

function rcm {
	param(
		[String] $out
	)
	cd $out
	cmake ../
	cd ..
}

function cmb {
	param(
		[String] $d
	)
	cmake --build ./$d
}


function cmr {
	param(
		[String] $d
	)
	cmake --build ./$d
	Invoke-Expression ./$d/Debug/*.exe
}


function cr {cargo run}
function ci {cargo init}
function cb {cargo build}
function ca {cargo add}
function cbr {cargo build --release}
function pr {Set-Location "C:\Users\johan\projects"}
function le {Set-Location "C:\Users\johan\latex"}
function .. {Set-Location ..}
function q {exit}
function cwd {echo $pwd | grep -i \\ | clip}
Set-Alias -Name s -Value scoop
Set-Alias -Name e -Value explorer


