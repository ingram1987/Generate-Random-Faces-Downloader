###ThisPersonDoesNotExist Downloader-###
###Developed by Ryan Watson----------###
###https://github.com/ingram1987-----###
###http://ITswapShop.com-------------###
###Created on 2021 April 16----------###

### Configurable Variables
$userAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36"
$imageTotalNumber = 20
# Generate random number of seconds between each web request
$waitMinSeconds = 20
$waitMaxSeconds = 29
###

### Other Variables
$url = "https://thispersondoesnotexist.com/image"
$imagePrefix = (Get-Date -Format "yy-MM-dd-HHmmss")

function DownloadImages {
    $n = 1
    while ($n -le $imageTotalNumber){
        $rNumber = Get-Random -Minimum $waitMinSeconds -Maximum $waitMaxSeconds
        $imageName = $imagePrefix + "." + $n + ".jpg"
        Write-Host($imageName)
        Invoke-WebRequest -UserAgent $userAgent -Uri $url -OutFile $imageName
        $n++
        Start-Sleep -s $rNumber
    }
}

DownloadImages