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
$audioExt = "aif","cda","mid","mp3","mpa","ogg","wav","wma","wpl"
$compressedExt = "7z","arj","deb","pkg","rar","rpm","tar.gz","z","zip"


foreach($ext in $currentExt){

    if ($ext -in $textExt){
    
        New-Item -ItemType Directory -Force -Path .\Text

        foreach($files in $textExt){
            $path = ".\*$($files)"
            Move-Item -Path $path -Destination .\Text
        }


    }
}



