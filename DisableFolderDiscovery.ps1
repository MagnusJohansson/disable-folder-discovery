# Define the registry path
$regPath = "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell"

# Delete the Bags and BagMRU keys if they exist
Remove-Item -Path "$regPath\Bags" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "$regPath\BagMRU" -Recurse -Force -ErrorAction SilentlyContinue

# Create the Bags key
New-Item -Path $regPath -Name "Bags" -Force

# Create the AllFolders key inside Bags
New-Item -Path "$regPath\Bags" -Name "AllFolders" -Force

# Create the Shell key inside AllFolders
New-Item -Path "$regPath\Bags\AllFolders" -Name "Shell" -Force

# Create the FolderType string value and set its data to NotSpecified
New-ItemProperty -Path "$regPath\Bags\AllFolders\Shell" -Name "FolderType" -PropertyType String -Value "NotSpecified" -Force

Write-Output "Folder discovery has been disabled. Please restart File Explorer to see the changes."
