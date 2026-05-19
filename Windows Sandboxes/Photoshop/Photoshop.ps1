# Install latest VS redist which is requirement for Photoshop
Start-Process -FilePath "C:\Users\WDAGUtilityAccount\Desktop\Required Files\VC_redist.x64.exe" -ArgumentList '/quiet' -Wait

# add Photoshop's shortcut to desktop of Windows Sandbox
$WshShell = New-Object -comObject WScript.Shell

$Shortcut = $WshShell.CreateShortcut("C:\Users\WDAGUtilityAccount\Desktop\Photoshop.lnk")
$Shortcut.TargetPath = "C:\Program Files\Adobe\Adobe Photoshop 2026\Photoshop.exe"
$Shortcut.Save()

& "C:\Program Files\Adobe\Adobe Photoshop 2026\Photoshop.exe"
