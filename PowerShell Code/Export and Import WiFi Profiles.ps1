#Config
$pathToFolder = "PATH TO DESKTOP GOES HERE"
$newFolderName = "New Folder"

#Create Folder
New-Item -Path $pathToFolder$newFolderName -ItemType Directory

#Export Users Wireless Profiles
netsh wlan export profile key=clear folder=$pathToFolder$newFolderName

#Import Users Profiles
$fileDirectory = "PATH TO DESKTOP NEW FOLDER GOES HERE";
foreach ($file in get-ChildItem $fileDirectory) {
    netsh wlan add profile filename=($pathToFolder+$newFolderName+"\"+$file.Name) user=all
}
