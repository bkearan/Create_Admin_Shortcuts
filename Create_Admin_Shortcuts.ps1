# Define paths
$Shortcuts = @(
    [pscustomobject]@{ExePath = $env:windir + '\system32\WindowsPowerShell\v1.0\PowerShell_ISE.exe'; Args = ""; LinkName = 'Powershell ISE as Admin'; IconPath = $env:windir + '\system32\WindowsPowerShell\v1.0\PowerShell_ISE.exe,0'; Admin = $true},
    [pscustomobject]@{ExePath = $env:windir + '\system32\WindowsPowerShell\v1.0\PowerShell_ISE.exe'; Args = ""; LinkName = 'Powershell ISE'; IconPath = $env:windir + '\system32\WindowsPowerShell\v1.0\PowerShell_ISE.exe,0'; Admin = $false},
    [pscustomobject]@{ExePath = $env:windir + '\System32\SystemPropertiesRemote.exe'; Args = ""; LinkName = 'Allow Remote Access'; IconPath = $env:windir + '\System32\SystemPropertiesRemote.exe,0'; Admin = $true}
    [pscustomobject]@{ExePath = $env:windir + '\System32\cmd.exe'; Args = ""; LinkName = 'CMD as Admin'; IconPath = $env:windir + '\System32\cmd.exe,0'; Admin = $true}
    [pscustomobject]@{ExePath = $env:windir + '\System32\cmd.exe'; Args = ""; LinkName = 'CMD'; IconPath = $env:windir + '\System32\cmd.exe,0'; Admin = $true}
    [pscustomobject]@{ExePath = $env:windir + '\System32\compmgmt.msc'; Args = "/s"; LinkName = 'Computer Management'; IconPath = $env:windir + '\System32\SHELL32.dll,232'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\dsac.exe'; Args = ""; LinkName = 'AD Admin Center'; IconPath = $env:windir + '\System32\dsac.exe,0'; Admin = $false} # Active Directory Admin Center
    [pscustomobject]@{ExePath = $env:windir + '\System32\domain.msc'; Args = ""; LinkName = 'AD Domains & Trusts'; IconPath = $env:windir + '\System32\domain.msc,0'; Admin = $false} # AD Domains and Trusts
    [pscustomobject]@{ExePath = $env:windir + '\System32\dssite.msc'; Args = ""; LinkName = 'AD Sites & Services'; IconPath = $env:windir + '\System32\dssite.msc,0'; Admin = $false} # AD Sites and Services
    [pscustomobject]@{ExePath = $env:windir + '\System32\dsa.msc'; Args = ""; LinkName = 'AD Users & Computers'; IconPath = $env:windir + '\System32\dsa.msc,0'; Admin = $false} # AD Users and Computers.
    [pscustomobject]@{ExePath = $env:windir + '\System32\adsiedit.msc'; Args = ""; LinkName = 'ADSIEdit'; IconPath = $env:windir + '\System32\adsiedit.msc,0'; Admin = $false} # ADSI Edit
    [pscustomobject]@{ExePath = $env:windir + '\System32\certsrv.msc'; Args = ""; LinkName = 'AD Certificate Services'; IconPath = $env:windir + '\System32\certsrv.msc,0'; Admin = $false} # Certificate Authority
    [pscustomobject]@{ExePath = $env:windir + '\System32\dhcpmgmt.msc'; Args = ""; LinkName = 'DHCP'; IconPath = $env:windir + '\System32\dhcpmgmt.msc,0'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\dnsmgmt.msc'; Args = ""; LinkName = 'DNS'; IconPath = $env:windir + '\System32\dnsmgmt.msc,0'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\gpmc.msc'; Args = ""; LinkName = 'Group Policy Manager'; IconPath = $env:windir + '\System32\gpmc.msc,0'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\printmanagement.msc'; Args = ""; LinkName = 'Print Management'; IconPath = $env:windir + '\System32\SHELL32.dll,82'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\regedit.exe'; Args = ""; LinkName = 'RegEdit'; IconPath = $env:windir + '\regedit.exe,2'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\msconfig.exe'; Args = ""; LinkName = 'MS Config'; IconPath = $env:windir + '\System32\msconfig.exe,0'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\msinfo32.exe'; Args = ""; LinkName = 'MS Info'; IconPath = $env:windir + '\System32\msinfo32.exe,0'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\taskschd.msc'; Args = ""; LinkName = 'Task Scheduler'; IconPath = $env:windir + '\System32\miguiresource.dll,1'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\WF.msc'; Args = ""; LinkName = 'Firewall'; IconPath = $env:windir + '\System32\AuthFWGP.dll,1'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\licmgr.exe'; Args = ""; LinkName = 'RDS License Manager'; IconPath = $env:windir + '\System32\licmgr.exe,0'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\lsdiag.msc'; Args = ""; LinkName = 'RDS LIcense Diagnoser'; IconPath = $env:windir + '\System32\lsdiag.msc,0'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\tsgateway.msc'; Args = ""; LinkName = 'RDS Gateway Manager'; IconPath = $env:windir + '\System32\tsgateway.msc,0'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\devmgmt.msc'; Args = ""; LinkName = 'Device Manager'; IconPath = $env:windir + '\System32\devmgmt.msc,0'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\diskmgmt.msc'; Args = ""; LinkName = 'Disk Management'; IconPath = $env:windir + '\System32\diskmgmt.msc,0'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\TSAppInstall.exe'; Args = ""; LinkName = 'Install App on RDS'; IconPath = $env:windir + '\System32\SHELL32.dll,263'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\slui.exe'; Args = ""; LinkName = 'License Windows'; IconPath = $env:windir + '\System32\slui.exe,0'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\ServerManager.exe'; Args = ""; LinkName = 'Server Manager'; IconPath = $env:windir + '\System32\ServerManager.exe,0'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\services.msc'; Args = ""; LinkName = 'Services'; IconPath = $env:windir + '\System32\services.msc,0'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\logoff.exe'; Args = ""; LinkName = '_Logoff'; IconPath = $env:windir + '\System32\SHELL32.dll,44'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\lusrmgr.msc'; Args = ""; LinkName = 'Local User Management'; IconPath = $env:windir + '\System32\lusrmgr.msc,1'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\Netplwiz.exe'; Args = ""; LinkName = 'Advanced User Options'; IconPath = $env:windir + '\System32\Netplwiz.exe,0'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\rundll32.exe'; Args = "user32.dll,LockWorkStation"; LinkName = '_Lock Workstation'; IconPath = $env:windir + '\System32\SHELL32.dll,47'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\virtmgmt.msc'; Args = ""; LinkName = 'Hyper-V'; IconPath = $env:windir + '\System32\virtmgmt.msc,0'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\OptionalFeatures.exe'; Args = ""; LinkName = 'Workstation Windows Features'; IconPath = $env:windir + '\System32\OptionalFeatures.exe,0'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\gpupdate.exe'; Args = ""; LinkName = 'GPUpdate'; IconPath = $env:windir + '\System32\SHELL32.dll,272'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\gpupdate.exe'; Args = ""; LinkName = 'GPUpdate As Admin'; IconPath = $env:windir + '\System32\SHELL32.dll,272'; Admin = $true} # As Admin
    [pscustomobject]@{ExePath = $env:windir + '\System32\ncpa.cpl'; Args = ""; LinkName = 'Network Connections'; IconPath = $env:windir + '\System32\SHELL32.dll,148'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\certlm.msc'; Args = ""; LinkName = 'Certificates - Computer'; IconPath = $env:windir + '\System32\certlm.msc,0'; Admin = $false}
    [pscustomobject]@{ExePath = 'C:\users\public\desktop'; Args = ""; LinkName = 'Public Desktop'; IconPath = $env:windir + '\System32\Shell32.dll,4'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\fsmgmt.msc'; Args = ""; LinkName = 'File Share Management'; IconPath = $env:windir + '\System32\fsmgmt.msc,0'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\certmgr.msc'; Args = ""; LinkName = 'Certificates - User'; IconPath = $env:windir + '\System32\certmgr.msc,0'; Admin = $false}
    [pscustomobject]@{ExePath = $env:windir + '\System32\control.exe'; Args = ""; LinkName = 'Control Panel'; IconPath = $env:windir + '\System32\control.exe,0'; Admin = $false}
    [pscustomobject]@{ExePath = 'ms-settings:defaultapps'; Args = ""; LinkName = 'S - Default Apps'; IconPath = $env:windir + '\System32\SHELL32.dll,90'; Admin = $false}
    [pscustomobject]@{ExePath = 'ms-settings:powersleep'; Args = ""; LinkName = 'S - Power & Sleep'; IconPath = $env:windir + '\System32\SHELL32.dll,90'; Admin = $false}
    [pscustomobject]@{ExePath = 'ms-settings:remotedesktop'; Args = ""; LinkName = 'S - RemoteDesktop'; IconPath = $env:windir + '\System32\SHELL32.dll,90'; Admin = $false}
    [pscustomobject]@{ExePath = 'ms-settings:clipboard'; Args = ""; LinkName = 'S - Clipboard'; IconPath = $env:windir + '\System32\SHELL32.dll,90'; Admin = $false}
    [pscustomobject]@{ExePath = 'ms-settings:printers'; Args = ""; LinkName = 'S - Printers'; IconPath = $env:windir + '\System32\SHELL32.dll,136'; Admin = $false}
    [pscustomobject]@{ExePath = 'ms-settings:network'; Args = ""; LinkName = 'S - Network'; IconPath = $env:windir + '\System32\SHELL32.dll,276'; Admin = $false}
    [pscustomobject]@{ExePath = 'ms-settings:network-wifi'; Args = ""; LinkName = 'S - Net Wifi'; IconPath = $env:windir + '\System32\SHELL32.dll,243'; Admin = $false}
    [pscustomobject]@{ExePath = 'ms-settings:network-ethernet'; Args = ""; LinkName = 'S - Net Ethernet'; IconPath = $env:windir + '\System32\SHELL32.dll,300'; Admin = $false}
    [pscustomobject]@{ExePath = 'ms-settings:network-vpn'; Args = ""; LinkName = 'S - Net VPN'; IconPath = $env:windir + '\System32\SHELL32.dll,90'; Admin = $false}
    [pscustomobject]@{ExePath = 'ms-settings:taskbar'; Args = ""; LinkName = 'S - Taskbar'; IconPath = $env:windir + '\System32\SHELL32.dll,90'; Admin = $false}
    [pscustomobject]@{ExePath = 'ms-settings:yourinfo'; Args = ""; LinkName = 'S - Your Info'; IconPath = $env:windir + '\System32\SHELL32.dll,90'; Admin = $false}
    [pscustomobject]@{ExePath = 'ms-settings:dateandtime'; Args = ""; LinkName = 'S - Date & Time'; IconPath = $env:windir + '\System32\SHELL32.dll,265'; Admin = $false}
    [pscustomobject]@{ExePath = 'ms-settings:cortana'; Args = ""; LinkName = 'S - Cortana'; IconPath = $env:windir + '\System32\SHELL32.dll,90'; Admin = $false}
    [pscustomobject]@{ExePath = 'ms-settings:privacy'; Args = ""; LinkName = 'S - Privacy'; IconPath = $env:windir + '\System32\SHELL32.dll,90'; Admin = $false}
    [pscustomobject]@{ExePath = 'ms-settings:privacy-webcam'; Args = ""; LinkName = 'S - Privacy - Cam'; IconPath = $env:windir + '\System32\SHELL32.dll,90'; Admin = $false}
    [pscustomobject]@{ExePath = 'ms-settings:privacy-microphone'; Args = ""; LinkName = 'S - Privacy - Mic'; IconPath = $env:windir + '\System32\SHELL32.dll,90'; Admin = $false}
    [pscustomobject]@{ExePath = 'ms-settings:windowsupdate'; Args = ""; LinkName = 'S - Win Update'; IconPath = $env:windir + '\System32\SHELL32.dll,90'; Admin = $false}
    [pscustomobject]@{ExePath = 'ms-settings:windowsupdate-action'; Args = ""; LinkName = 'S - Check for Updates'; IconPath = $env:windir + '\System32\SHELL32.dll,90'; Admin = $false} # Check for Updates
    [pscustomobject]@{ExePath = 'ms-settings:windowsdefender'; Args = ""; LinkName = 'S - Win Defender'; IconPath = $env:windir + '\System32\SHELL32.dll,90'; Admin = $false}
    [pscustomobject]@{ExePath = 'ms-settings:developers'; Args = ""; LinkName = 'S - Developers'; IconPath = $env:windir + '\System32\SHELL32.dll,158'; Admin = $false}
    [pscustomobject]@{ExePath = 'https://notepad-plus-plus.org/downloads/'; Args = ""; LinkName = 'Web - Notepad++'; IconPath = $env:windir + '\System32\SHELL32.dll,92'; Admin = $false}
    [pscustomobject]@{ExePath = 'https://www.majorgeeks.com/files/details/notepad.html'; Args = ""; LinkName = 'Web - Notepad++ Alt'; IconPath = $env:windir + '\System32\SHELL32.dll,92'; Admin = $false}
    [pscustomobject]@{ExePath = 'https://www.7-zip.org/download.html'; Args = ""; LinkName = 'Web - 7-Zip'; IconPath = $env:windir + '\System32\SHELL32.dll,92'; Admin = $false}
    [pscustomobject]@{ExePath = 'https://www.ccleaner.com/ccleaner/builds'; Args = ""; LinkName = 'Web - CCleaner Portable '; IconPath = $env:windir + '\System32\SHELL32.dll,92'; Admin = $false}
    [pscustomobject]@{ExePath = 'https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html'; Args = ""; LinkName = 'Web - Putty'; IconPath = $env:windir + '\System32\SHELL32.dll,92'; Admin = $false}
    [pscustomobject]@{ExePath = 'https://www.advanced-ip-scanner.com/download/'; Args = ""; LinkName = 'Web - Advanced IP Scanner'; IconPath = $env:windir + '\System32\SHELL32.dll,92'; Admin = $false}
    
)

# C:\WINDOWS\System32\netcenter.dll


function Set-RunAsAdmin {
    param (
        [Parameter(Mandatory=$true)]
        [string]$LinkPath
    )

    if (-not (Test-Path $LinkPath)) {
        Write-Error "Shortcut $LinkPath not found."
        return
    }

    $link = New-Object -ComObject WScript.Shell
    $shortcut = $link.CreateShortcut($LinkPath)
    
    # Read the shortcut's bytes
    $bytes = [System.IO.File]::ReadAllBytes($LinkPath)

    # Check if the shortcut is already set to run as admin
    if ($bytes[0x15] -band 0x20) {
        Write-Host "Shortcut is already set to Run as Admin."
        return
    }

    # Set byte 21 (0x15) bit 6 (0x20) to make the shortcut run as admin
    $bytes[0x15] = $bytes[0x15] -bor 0x20

    # Write the bytes back to the shortcut file
    [System.IO.File]::WriteAllBytes($LinkPath, $bytes)

    Write-Host "Shortcut set to Run as Admin."
}

$desktopPath = [System.Environment]::GetFolderPath("Desktop")
$pathForShortcuts = "c:\Admin\shortcuts"
If(-not(Test-Path $pathForShortcuts)){
    New-Item -Path $pathForShortcuts -ItemType Directory -ErrorAction SilentlyContinue
}

Foreach($aShortcut in $Shortcuts){
    If((Test-Path $aShortcut.ExePath) -or ($aShortcut.ExePath -like 'ms-settings*') -or ($aShortcut.ExePath -like 'https:*')){
    $shortcutPath = Join-Path -Path $pathForShortcuts -ChildPath ($aShortcut.LinkName + ".lnk")
    $tp = $aShortcut.ExePath
    $ip = $aShortcut.IconPath
  
    # Create a shortcut
    $shell = New-Object -ComObject ("WScript.Shell")
    $newshortcut = $shell.CreateShortcut($shortcutPath)
    $newshortcut.TargetPath = $tp
    $newshortcut.IconLocation = $ip
     If($aShortcut.Args -ne ""){
        $newshortcut.Arguments = $aShortcut.Args
    }

    # Save the shortcut
    $newshortcut.Save()

    If($aShortcut.Admin){
        Set-RunAsAdmin -LinkPath $shortcutPath
        }
    }
}
# Now we need to make some .bat files to do fun things...
$newline = [Environment]::NewLine
$BatFiles = @(
    [pscustomobject]@{Content = 'NetSh Advfirewall set allprofiles state off' + $newline + "pause"; Name = 'Firewall All Off'; IconPath = $env:windir + '\system32\SHELL32.dll,274'; Admin = $true}
    [pscustomobject]@{Content = 'netsh interface ip show config' + $newline + "pause"; Name = 'IPConfig ShowAll'; IconPath = $env:windir + '\system32\SHELL32.dll,221'; Admin = $false}
    [pscustomobject]@{Content = 'nslookup myip.opendns.com. resolver1.opendns.com' + $newline + "pause"; Name = 'Show Public IP 2'; IconPath = $env:windir + '\system32\SHELL32.dll,209'; Admin = $false}
    [pscustomobject]@{Content = 'powershell "Invoke-RestMethod -Uri http://icanhazip.com"' + $newline + "pause"; Name = 'Show Public IP 1'; IconPath = $env:windir + '\system32\SHELL32.dll,209'; Admin = $false}
    [pscustomobject]@{Content = 'powershell $SCService = get-service "Screenconnect*" ; stop-service $SCService.displayname ; start-service $SCService.displayName'; Name = 'Re-Start ScreenConnect'; IconPath = $env:windir + '\system32\SHELL32.dll,297'; Admin = $false}
    [pscustomobject]@{Content = 'tzutil /s "Central Standard Time"' + $newline + 'tzutil /g' + $newline + 'pause'; Name = 'Set CST Zone'; IconPath = $env:windir + '\system32\SHELL32.dll,206'; Admin = $false}
    [pscustomobject]@{Content = 'ipconfig /release && ipconfig /renew' + $newline + 'pause'; Name = 'IPConfig Release & Renew'; IconPath = $env:windir + '\system32\SHELL32.dll,206'; Admin = $false}
    [pscustomobject]@{Content = 'ipconfig /renew' + $newline + 'pause'; Name = 'IPConfig Renew Only'; IconPath = $env:windir + '\system32\SHELL32.dll,206'; Admin = $false}
    [pscustomobject]@{Content = 'ipconfig /flushdns && ipconfig /flushdns' + $newline + 'pause'; Name = 'IPConfig FlushDNS'; IconPath = $env:windir + '\system32\SHELL32.dll,206'; Admin = $false}
    [pscustomobject]@{Content = 'netdom query fsmo' + $newline + 'pause'; Name = 'Show FSMO Roles'; IconPath = $env:windir + '\system32\SHELL32.dll,210'; Admin = $false} # Show FSMO Roles
    [pscustomobject]@{Content = 'powershell Move-ADDirectoryServerOperationMasterRole -Identity $env:computername -OperationMasterRole 0,1,2,3,4' + $newline + 'pause'; Name = 'Move FSMO Here'; IconPath = $env:windir + '\system32\SHELL32.dll,161'; Admin = $true} # Move FSMO Roles to this Server
    [pscustomobject]@{Content = 'w32tm /config /manualpeerlist:"1.pool.ntp.org 2.pool.ntp.org 3.pool.ntp.org" /syncfromflags:manual /reliable:yes /update' + $newline + 'w32tm /config /reliable:yes' + $newline + 'net stop w32time && net start w32time' + $newline + 'pause'; Name = 'DC - Make Reliable Time Server'; IconPath = $env:windir + '\system32\SHELL32.dll,161'; Admin = $true} # Make Reliable Time Server
    )
$batPath = Join-Path $pathForShortcuts -ChildPath "\batchfiles"
If(-Not(Test-Path -Path $batPath)){
    New-Item -Path $batPath -ItemType Directory
}
Foreach($batfile in $BatFiles){
    # Create .bat file
    $batFilePath = Join-Path -Path $batPath -ChildPath ($batfile.Name + ".bat")
    $batfile.Content | Out-File -Encoding ASCII $batFilePath
    #Add-Content -Path $batFilePath -Value "pause"

    # Create shortcut to .bat file
    $shortcutPath = Join-Path -Path $pathForShortcuts -ChildPath ($batfile.Name + ".lnk")
    $shell = New-Object -ComObject WScript.Shell
    $shortcut = $shell.CreateShortcut($shortcutPath)
    $shortcut.TargetPath = $batFilePath
    $shortcut.IconLocation = $batfile.IconPath
    if ($batfile.Admin) {
        # Setting the 'Run as admin' is more complicated and not directly supported through this method
        # You might need a third-party tool or manual step for this
    }
    $shortcut.Save()
     If($batfile.Admin){
        Set-RunAsAdmin -LinkPath $shortcutPath
    }
}

# Create the shortcut on the Desktop
$shortcutPath = Join-Path -Path $desktopPath -ChildPath ("Admin_Shortcuts.lnk")
    $shell = New-Object -ComObject WScript.Shell
    $shortcut = $shell.CreateShortcut($shortcutPath)
    $shortcut.TargetPath = $pathForShortcuts
    $ciip = $env:windir + '\system32\SHELL32.dll,316'
    $shortcut.IconLocation = $ciip
    $shortcut.Save()

# Copy some shortcuts to the desktop
$DesktopPath = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::Desktop)
Copy-item -path 'C:\Admin\shortcuts\_Logoff.lnk' -Destination "$DesktopPath\_Logoff.lnk"
Copy-item -path 'C:\Admin\shortcuts\CMD as Admin.lnk' -Destination "$DesktopPath\CMD As Admin.lnk"
Copy-item -path 'C:\Admin\shortcuts\Powershell ISE as Admin.lnk' -Destination "$DesktopPath\Powershell ISE As Admin.lnk"

# PS2EXE -inputFile '\\srv12r2-dc\new tech\Project Management\A_UsefulStuff\Powershell\create_Shortcuts.ps1' -outputfile '\\srv12r2-dc\new tech\Project Management\A_UsefulStuff\Powershell\Create_Admin_Shortcuts.exe' -iconFile '\\srv12r2-dc\new tech\Project Management\A_UsefulStuff\Powershell\admin-logo-icon-33.ico'