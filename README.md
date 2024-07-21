# Disable Folder Discovery in Windows 10 / Windows 11

This repository contains a PowerShell script to disable the folder discovery feature in Windows 10/11. Folder discovery automatically customizes the look and feel of File Explorer based on the content of the folders. By running this script, you can ensure that File Explorer always displays files in the default view.

## Purpose

Windows 11's folder discovery feature can be helpful for some users, but it can also be a nuisance for others who prefer a consistent view across all folders.

This script modifies the Windows Registry to disable this feature, forcing File Explorer to use a default view for all folders.

## How It Works

The script performs the following actions:

1. Deletes the `Bags` and `BagMRU` keys in the registry if they exist.
2. Creates a new `Bags` key.
3. Creates a new `AllFolders` key inside the `Bags` key.
4. Creates a new `Shell` key inside the `AllFolders` key.
5. Adds a `FolderType` string value inside the `Shell` key and sets its data to `NotSpecified`.

By setting the `FolderType` to `NotSpecified`, Windows 11 is instructed not to apply any special folder view settings based on content.

## Usage

### Prerequisites

- Windows 10 or 11
- PowerShell (Run as Administrator)

### Backup Instructions

Before running the script, it's recommended to back up the relevant registry key to avoid any potential issues. Follow these steps to back up the registry key:

1. Press `Win + R`, type `regedit`, and press `Enter` to open the Registry Editor.
2. Navigate to the following path:
   
HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell

3. Right-click on the `Shell` key and select `Export`.
4. Choose a location to save the backup file and give it a name.
5. Click `Save`.

### Script Instructions

1. Clone the repository or download the script file `DisableFolderDiscovery.ps1`.

```sh
git clone https://github.com/MagnusJohansson/disable-folder-discovery.git
```

2. Open PowerShell as an Administrator.

3. Navigate to the directory containing the DisableFolderDiscovery.ps1 script.

```sh
cd path\to\DisableFolderDiscovery
```

4. Run the script.

```sh
./DisableFolderDiscovery.ps1
```

### Restart File Explorer to see the changes.

You can restart File Explorer by opening Task Manager, finding "Windows Explorer" in the list, and clicking "Restart".

## Disclaimer
This script modifies the Windows Registry. It is recommended to back up the relevant registry keys before running the script. Use this script at your own risk. The author is not responsible for any potential damages or issues that may arise from using this script.

## Contributing
Contributions are welcome!  
Please feel free to submit a Pull Request.

## License
This project is licensed under the MIT License.

### Support My Work

If you find this project helpful, consider supporting my efforts by buying me a coffee. Your support helps me keep the project alive and continuously improve it. Thank you!

<a href="https://buymeacoffee.com/insomniacgeek" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>


