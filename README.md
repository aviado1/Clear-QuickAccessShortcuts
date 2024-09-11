
# Clear-QuickAccessShortcuts.ps1

This script deletes both pinned and frequent Quick Access shortcuts in File Explorer by clearing relevant entries stored on the local machine. It automates the cleanup of these shortcuts, making File Explorer tidier and removing unnecessary clutter.

## Features

- **Clear Pinned Shortcuts**: Deletes all pinned Quick Access shortcuts from File Explorer.
- **Clear Frequent Shortcuts**: Removes all frequent Quick Access shortcuts.
- **Simple Execution**: Run the script to clean both pinned and frequent shortcuts in one go.

## Usage

1. Download the script [Clear-QuickAccessShortcuts.ps1](Clear-QuickAccessShortcuts.ps1).
2. Open PowerShell as Administrator.
3. Run the script:

   ```powershell
   ./Clear-QuickAccessShortcuts.ps1
   ```

4. Once the script has finished, restart File Explorer to see the changes:

   ```powershell
   Stop-Process -Name explorer -Force
   Start-Process explorer
   ```

## Script Details

- **Function 1**: `Clear-PinnedShortcuts` - Clears pinned shortcuts located in the AutomaticDestinations folder.
- **Function 2**: `Clear-FrequentShortcuts` - Clears frequent shortcuts located in the CustomDestinations folder.
- **Main Function**: `Clear-QuickAccessShortcuts` - Runs both pinned and frequent shortcut clearing functions.

## Example Output

```plaintext
Clearing pinned shortcuts in Quick Access...
Pinned shortcuts cleared.

Clearing frequent shortcuts in Quick Access...
Frequent shortcuts cleared.

Quick Access shortcuts cleared. Restart File Explorer for changes to take effect.
```

## Author

- **aviado1**  
  [GitHub Profile](https://github.com/aviado1)

## Disclaimer

This script is provided as-is without any warranty. Please use it carefully and at your own risk.
