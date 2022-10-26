#Config
$pathToFolder = "C:\Users\CC157704\OneDrive - Shropshire Council\Desktop\"
$newFolderName = "New Folder"

#Create Folder
New-Item -Path $pathToFolder$newFolderName -ItemType Directory

#Export Users Wireless Profiles
netsh wlan export profile key=clear folder=$pathToFolder$newFolderName

#Import Users Profiles
$fileDirectory = "C:\Users\CC157704\OneDrive - Shropshire Council\Desktop\New Folder";
foreach ($file in get-ChildItem $fileDirectory) {
    netsh wlan add profile filename=($pathToFolder+$newFolderName+"\"+$file.Name) user=all
}
