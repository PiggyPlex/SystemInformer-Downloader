# SystemInformer-Downloader by PiggyPlex
# https://github.com/PiggyPlex/SystemInformer-Downloader
$webpage = Invoke-WebRequest -Uri "https://systeminformer.com/nightly.php"
$linkElement = $webpage.ParsedHtml.getElementsByTagName("a") | Where-Object {$_.className -eq "btn btn-secondary text-left"} | Select-Object -First 1
$link = $linkElement.href
Invoke-WebRequest -Uri $link -OutFile "systeminformer.exe"
Start-Process "systeminformer.exe"
# Tab through the install (optional - remove the lines below)
Start-Sleep -Milliseconds 2000
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Milliseconds 500
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
Start-Sleep -Milliseconds 50
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
