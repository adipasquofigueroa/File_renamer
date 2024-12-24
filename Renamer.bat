@echo off
setlocal enabledelayedexpansion

:: Open a folder selection dialog using PowerShell
for /f "usebackq tokens=*" %%i in (`powershell -command "Add-Type -AssemblyName System.Windows.Forms; $fbd = New-Object System.Windows.Forms.FolderBrowserDialog; $fbd.ShowDialog() | Out-Null; $fbd.SelectedPath"`) do (
    set folder=%%i
)

:: Check if a folder was selected
if "%folder%"=="" (
    echo No folder selected. Exiting...
    exit /b
)

echo Selected folder: %folder%

:: Change to the directory selected by the user
cd /d "%folder%"

:: Use PowerShell to rename files based on patterns
powershell -command "Get-ChildItem '*75684*' | Rename-Item -NewName {$_.Name -replace '75684', 'MI536'}"
powershell -command "Get-ChildItem '*12772*' | Rename-Item -NewName {$_.Name -replace '12772', 'MD277'}"
powershell -command "Get-ChildItem '*77624*' | Rename-Item -NewName {$_.Name -replace '77624', 'FLH04'}"
powershell -command "Get-ChildItem '*51985*' | Rename-Item -NewName {$_.Name -replace '51985', 'CA712'}"
powershell -command "Get-ChildItem '*80205*' | Rename-Item -NewName {$_.Name -replace '80205', 'NJ341'}"
powershell -command "Get-ChildItem '*21938*' | Rename-Item -NewName {$_.Name -replace '21938', 'PA913'}"
powershell -command "Get-ChildItem '*6002*'  | Rename-Item -NewName {$_.Name -replace '6002', 'NC458'}"
powershell -command "Get-ChildItem '*13137*' | Rename-Item -NewName {$_.Name -replace '13137', 'PA524'}"
powershell -command "Get-ChildItem '*32597*' | Rename-Item -NewName {$_.Name -replace '32597', 'TN363'}"
powershell -command "Get-ChildItem '*54341*' | Rename-Item -NewName {$_.Name -replace '54341', 'IL244'}"
powershell -command "Get-ChildItem '*30245*' | Rename-Item -NewName {$_.Name -replace '30245', 'IN412'}"
powershell -command "Get-ChildItem '*38826*' | Rename-Item -NewName {$_.Name -replace '38826', 'OH878'}"
powershell -command "Get-ChildItem '*6603*'  | Rename-Item -NewName {$_.Name -replace '6603', 'UT325'}"
powershell -command "Get-ChildItem '*6351*'  | Rename-Item -NewName {$_.Name -replace '6351', 'CAL19'}"
powershell -command "Get-ChildItem '*5911*'  | Rename-Item -NewName {$_.Name -replace '5911', 'CAL20'}"
powershell -command "Get-ChildItem '*40042*' | Rename-Item -NewName {$_.Name -replace '40042', 'CO244'}"
powershell -command "Get-ChildItem '*41046*' | Rename-Item -NewName {$_.Name -replace '41046', 'NY055'}"

echo All files processed:)
pause
