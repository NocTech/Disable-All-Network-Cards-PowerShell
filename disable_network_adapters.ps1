$adapters = Get-NetAdapter | Where-Object { $_.Status -ne 'Disconnected' }

foreach ($adapter in $adapters) {
    Disable-NetAdapter -Name $adapter.Name
}

Write-Output "All network adapters have been disabled."
