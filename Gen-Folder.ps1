# khai bao bien nhan tu console screen
Param([string]$name_root)
# khai bao array string
$arrayFolderTemplate = @("01_URD","02_RSD", "03_POSTMAN", "04_PTTK", "05_Common")
# Lay duong dan folder hien tai
$currentPath =  Get-Location

#Iterate through array folder name
ForEach ($folder in $arrayFolderTemplate ) {
    #Create Each Folder
    New-Item -ItemType Directory -Force -Path "$($currentPath)\$($name_root)\$($folder)"
}
