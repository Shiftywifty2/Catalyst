cls
set-location C:\Temp
$Host.UI.RawUI.BackgroundColor = 'Black'
$Host.UI.RawUI.ForegroundColor = 'White'
cls
$Host.UI.RawUI.WindowSize = [System.Management.Automation.Host.Size]::new(70, 30)
$Host.UI.RawUI.BufferSize = [System.Management.Automation.Host.Size]::new(70, 30)

$Host.UI.RawUI.WindowTitle = "Catalyst 1.0"

if (-not (Test-Path "C:\ProgramData\chocolatey")) {
	write-host "Chocolatey is not installed! Please install chocolatey." -ForegroundColor red
	write-host "Starting Automatic Download...." -ForegroundColor Yellow
	write-host "If you get an error, elevate this script and rerun..." -ForegroundColor red
    "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"
} else {
	do {
		cls
	write-host "Chocolately is installed" -Foregroundcolor Yellow
	write-host "Catalyst V1.0" -ForegroundColor Yellow
	write-host "Windows 10/11 IoT Enterprise LTSC Kickstarter" -ForegroundColor Yellow
	write-host "Press enter after selecting an option to continue" -ForegroundColor Yellow
	write-host "[1] Open MAS"
	write-host "[2] Open CTT"
	$input = read-host "$"
	switch ($input) {
	'1' {
		Write-host "Opening MAS..."
		Start-Sleep -Seconds 1
		irm "https://get.activated.win" | iex
	}
	'2' {
		irm "https://christitus.com/win" | iex
	}
	'Q' {
		Write-Host "Exiting.." -ForegroundColor Red
		Start-Sleep -Seconds 2
		exit
	}
	Default {
		Write-Host "Invalid command!" -ForegroundColor Red
		Start-Sleep -Seconds 2

	}
}
} while ($input -ne 'Q')
}


