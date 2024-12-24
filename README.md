# File Renaming Script - README

## Overview
This script is a Windows Batch Script combined with PowerShell commands to perform bulk file renaming operations within a user-selected folder. It uses pattern matching to identify specific filenames and replaces parts of the names based on predefined mappings.

## Features
- **Folder Selection Dialog:** Allows the user to dynamically select a folder instead of hardcoding the path.
- **Pattern-Based Renaming:** Replaces specific numeric patterns in filenames with new codes.
- **Cross-Language Integration:** Combines Batch scripting and PowerShell to leverage advanced functionality.
- **Error Handling:** Displays a message and exits if no folder is selected.

## Requirements
- Windows operating system.
- PowerShell enabled on the system.
- Appropriate permissions to rename files in the selected folder.

## Usage Instructions
1. Save the script as a `.bat` file, for example, `rename_files.bat`.
2. Double-click the `.bat` file to execute it.
3. A folder selection dialog will appear. Choose the folder containing the files to be renamed.
4. The script will automatically rename files based on the following patterns:

| Old Pattern | New Pattern |
|-------------|-------------|
| 75684       | MI536       |
| 12772       | MD277       |
| 77624       | FLH04       |
| 51985       | CA712       |
| 80205       | NJ341       |
| 21938       | PA913       |
| 6002        | NC458       |
| 13137       | PA524       |
| 32597       | TN363       |
| 54341       | IL244       |
| 30245       | IN412       |
| 38826       | OH878       |
| 6603        | UT325       |
| 6351        | CAL19       |
| 5911        | CAL20       |
| 40042       | CO244       |
| 41046       | NY055       |

5. Once the renaming is complete, a confirmation message will be displayed.

## Example
**Before Execution:**
- `Report_75684_Q4.pdf`
- `Data_12772_Sales.csv`

**After Execution:**
- `Report_MI536_Q4.pdf`
- `Data_MD277_Sales.csv`

## Notes
- Ensure you back up files before running the script to prevent accidental data loss.
- The script can be modified to add more patterns or handle additional renaming requirements.
- If no folder is selected, the script exits without performing any operation.

## Troubleshooting
- **Issue:** Script does not open folder dialog.
  - **Solution:** Ensure PowerShell is installed and enabled.
- **Issue:** Files are not renamed.
  - **Solution:** Check folder permissions and verify that filenames match the patterns.
- **Issue:** Script exits immediately.
  - **Solution:** Ensure the script is saved with a `.bat` extension and executed in a Windows environment.

## License
This script is provided "as-is" without any warranties. Use at your own risk.
