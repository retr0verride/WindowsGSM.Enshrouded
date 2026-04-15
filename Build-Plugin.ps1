# Build-Plugin.ps1
# Produces WindowsGSM.Enshrouded.zip with the correct structure for
# WindowsGSM puzzle-button import (plugin folder at zip root).

$outDir  = "dist"
$zipPath = "$outDir\WindowsGSM.Enshrouded.zip"

if (-not (Test-Path $outDir)) { New-Item -ItemType Directory $outDir | Out-Null }
if (Test-Path $zipPath) { Remove-Item $zipPath }

# Zip only the Enshrouded.cs folder so the root of the zip IS Enshrouded.cs/
Compress-Archive -Path "Enshrouded.cs" -DestinationPath $zipPath

Write-Host "Created: $zipPath"
