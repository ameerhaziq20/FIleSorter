#New-Item -ItemType Directory -Force -Path .\text
#Move-Item -Path .\.txt -Destination .\text

#$folderName = 
#"Data and Database",
#"System"
#Disc and Media","Data and Database",
#"Email","Executables",
#"System",


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
$programmingExt = ".c",".cgi",".pl",".class",".cpp",".cs",".h",".java",".php",".py",".sh",".swift",".vb"
$spreadsheetExt = ".ods",".xls",".xlsm",".xlsx"
$presentationExt = ".key",".odp",".pps",".ppt",".pptx"
$videoExt = ".3g2",".3gp",".avi",".flv",".h264",".m4v",".mkv",".mov",".mp4",".mpg",".mpeg",".rm","swf",".vob",".wmv"
$fontExt = ".fnt",".fon",".otf",".ttf"
$execExt = ".apk",".bat",".bin",".cgi",".com",".exe",".gadget",'.jar',".msi",".wsf"
$emailExt = ".email",".eml",".emlx",".msg",".oft",".ost",".pst",".vcf"
$DiscnMediaExt = ".bin",".dmg",".iso",".toast",".vcd"
$DatanDatabaseExt = ".csv",".dat",".db",".dbf",".log",".mdb",".sav",".sql",".tar",".xml"
$systemExt = ".bak",".cab",".cfg",".cpl",".cur",".dll",".dmp",".drv",".icns",".ini","lnk",".sys",".tmp"

foreach($ext in $currentExt){

    if ($ext -in $textExt){
    
        New-Item -ItemType Directory -Force -Path .\Text

        foreach($files in $textExt){
            $path = ".\*$($files)"
            Move-Item -Path $path -Destination .\Text
        }

    }

    elseif ($ext -in $audioExt){
    
        New-Item -ItemType Directory -Force -Path .\Audio

        foreach($files in $audioExt){
            $path = ".\*$($files)"
            Move-Item -Path $path -Destination .\Audio
        }


    }
    
    elseif ($ext -in $compressedExt){
    
        New-Item -ItemType Directory -Force -Path .\Compressed

        foreach($files in $compressedExt){
            $path = ".\*$($files)"
            Move-Item -Path $path -Destination .\Compressed
        }

    }

    
    elseif ($ext -in $imageExt){
    
        New-Item -ItemType Directory -Force -Path .\Image

        foreach($files in $imageExt){
            $path = ".\*$($files)"
            Move-Item -Path $path -Destination .\Image
        }


    }

    elseif ($ext -in $programmingExt){
    
        New-Item -ItemType Directory -Force -Path .\Programming 

        foreach($files in $programmingExt){
            $path = ".\*$($files)"
            Move-Item -Path $path -Destination .\Programming
        }


    }

    
    elseif ($ext -in $spreadsheetExt){
    
        New-Item -ItemType Directory -Force -Path .\Spreadsheet

        foreach($files in $spreadsheetExt){
            $path = ".\*$($files)"
            Move-Item -Path $path -Destination .\Spreadsheet
        }


    }

    elseif ($ext -in $presentationExt){
    
        New-Item -ItemType Directory -Force -Path .\Presentation

        foreach($files in $presentationExt){
            $path = ".\*$($files)"
            Move-Item -Path $path -Destination .\Presentation
        }


    }

    elseif ($ext -in $videoExt){
    
        New-Item -ItemType Directory -Force -Path .\Video

        foreach($files in $videoExt){
            $path = ".\*$($files)"
            Move-Item -Path $path -Destination .\Video
        }


    }

    elseif ($ext -in $fontExt){
    
        New-Item -ItemType Directory -Force -Path .\Font

        foreach($files in $fontExt){
            $path = ".\*$($files)"
            Move-Item -Path $path -Destination .\Font
        }

    }

    elseif ($ext -in $execExt){
    
        New-Item -ItemType Directory -Force -Path .\Executable

        foreach($files in $execExt){
            $path = ".\*$($files)"
            Move-Item -Path $path -Destination .\Executable}
    }
            
    elseif ($ext -in $DiscnMediaExt){
    
        New-Item -ItemType Directory -Force -Path .\"Disc and Media"

        foreach($files in $DiscnMediaExt){
            $path = ".\*$($files)"
            Move-Item -Path $path -Destination .\"Disc and Media"
        }


    }

    elseif ($ext -in $emailExt){
    
        New-Item -ItemType Directory -Force -Path .\Email

        foreach($files in $emailExt){
            $path = ".\*$($files)"
            Move-Item -Path $path -Destination .\Email
        }


    }
    elseif ($ext -in $systemExt){
    
        New-Item -ItemType Directory -Force -Path .\System

        foreach($files in $systemExt){
            $path = ".\*$($files)"
            Move-Item -Path $path -Destination .\System
        }


    }
    elseif ($ext -in $DatanDatabaseExt){
    
        New-Item -ItemType Directory -Force -Path .\"Data and Database"

        foreach($files in $DatanDatabaseExt){
            $path = ".\*$($files)"
            Move-Item -Path $path -Destination .\"Data and Database"
        }


    }

    
}






