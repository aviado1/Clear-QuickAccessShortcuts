# This script deletes Quick Access shortcuts (Pinned and Frequent) in File Explorer
# by clearing relevant entries stored on the local machine.

# Function to clear pinned shortcuts in Quick Access
function Clear-PinnedShortcuts {
    Write-Host "Clearing pinned shortcuts in Quick Access..."

    # Path to the automaticDestinations folder where Quick Access shortcuts are stored
    $pinnedPath = "$env:APPDATA\Microsoft\Windows\Recent\AutomaticDestinations"
    
    if (Test-Path $pinnedPath) {
        Remove-Item "$pinnedPath\*" -Force -Recurse
        Write-Host "Pinned shortcuts cleared."
    } else {
        Write-Host "Pinned shortcuts path not found."
    }
}

# Function to clear frequent shortcuts in Quick Access
function Clear-FrequentShortcuts {
    Write-Host "Clearing frequent shortcuts in Quick Access..."

    # Path to the customDestinations folder where frequent shortcuts are stored
    $frequentPath = "$env:APPDATA\Microsoft\Windows\Recent\CustomDestinations"
    
    if (Test-Path $frequentPath) {
        Remove-Item "$frequentPath\*" -Force -Recurse
        Write-Host "Frequent shortcuts cleared."
    } else {
        Write-Host "Frequent shortcuts path not found."
    }
}

# Function to clear both pinned and frequent Quick Access shortcuts
function Clear-QuickAccessShortcuts {
    Clear-PinnedShortcuts
    Clear-FrequentShortcuts
}

# Run the Quick Access cleanup
Clear-QuickAccessShortcuts

Write-Host "Quick Access shortcuts cleared. Restart File Explorer for changes to take effect."
