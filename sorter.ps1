#New-Item -ItemType Directory -Force -Path .\text
#Move-Item -Path .\.txt -Destination .\text

#$folderName = "Audio","Compressed",
#Disc and Media","Data and Database",
#"Email","Executables","Font","Image","Presentation","Programming",
#"Spreadsheet","System","Video","Text"


#foreach( $typeFolder in $folderName ) { 
#
#    $path = ".\$($typeFolder)"
#    New-Item -ItemType Directory -Force -Path $path
#}

$currentExt = get-childitem -File -Recurse| ForEach-Object {$_.Extension.tolower()} |Get-unique

$textExt = ".txt",".doc",".docx",".odt",".pdf",".rtf",".tex",".wpd"
$audioExt = ".aif",".cda",".mid",".mp3",".mpa",".ogg",".wav",".wma",".wpl"
$compressedExt = ".7z",".arj",".deb",".pkg",".rar",".rpm",".tar.gz",".z",".zip"
$imageExt = ".a1",".bmp",".gif",".ico",".jpeg",".png",".ps",".psd",".svg",".tif",".jpg",".jfif",".tiff"


foreach($ext in $currentExt){

    if ($ext -in $textExt){
    
        New-Item -ItemType Directory -Force -Path .\Text

        foreach($files in $textExt){
            $path = ".\*$($files)"
            Move-Item -Path $path -Destination .\Text
        }

    }

    if ($ext -in $audioExt){
    
        New-Item -ItemType Directory -Force -Path .\Audio

        foreach($files in $audioExt){
            $path = ".\*$($files)"
            Move-Item -Path $path -Destination .\Audio
        }


    }
    
    if ($ext -in $compressedExt){
    
        New-Item -ItemType Directory -Force -Path .\Compressed

        foreach($files in $compressedExt){
            $path = ".\*$($files)"
            Move-Item -Path $path -Destination .\Compressed
        }

    }

    
    if ($ext -in $imageExt){
    
        New-Item -ItemType Directory -Force -Path .\Image

        foreach($files in $imageExt){
            $path = ".\*$($files)"
            Move-Item -Path $path -Destination .\Image
        }


    }
}






