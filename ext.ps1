elseif ($ext -in $audioExt) {

    New-Item -ItemType Directory -Force -Path .\Audio

    foreach($ext in $audioExt){
        $path = ".\*.$($ext)"
        Move-Item -Path $path -Destination .\Audio
    }
}

elseif ($ext -in $compressedExt) {

    New-Item -ItemType Directory -Force -Path .\Compressed

    foreach($ext in $compressedExt){
        $path = ".\*.$($ext)"
        Move-Item -Path $path -Destination .\Compressed
    }
}

elseif ($ext -in $imageExt) {

    New-Item -ItemType Directory -Force -Path .\Image

    foreach($ext in $imageExt){
        $path = ".\*.$($ext)"
        Move-Item -Path $path -Destination .\Image
    }
}

else{

    Write-Output "Error"
}
