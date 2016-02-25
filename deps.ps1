# Update Help for Modules
Update-Help -Force

### Package Providers
Get-PackageProvider NuGet -Force
Get-PackageProvider Chocolatey -Force
Set-PackageSource -Name chocolatey -Trusted

### Chocolatey Packages
Install-Package -Provider Chocolatey -Name curl #`curl` comes with GH4W
Install-Package -Provider Chocolatey -Name Dropbox
Install-Package -Provider Chocolatey -Name GoogleChrome
Install-Package -Provider Chocolatey -Name GoogleChrome.Canary
Install-Package -Provider Chocolatey -Name hg
Install-Package -Provider Chocolatey -Name Fiddler4
Install-Package -Provider Chocolatey -Name Firefox
Install-Package -Provider Chocolatey -Name nodejs.install
Install-Package -Provider Chocolatey -Name Opera
Install-Package -Provider Chocolatey -Name ruby
Install-Package -Provider Chocolatey -Name vim
Install-Package -Provider Chocolatey -Name wget
Install-Package -Provider Chocolatey -Name wput
Install-Package -Provider Chocolatey -Name winmerge


### Git with SSH via GitHubForWindows
Install-Package -Provider Chocolatey -Name GitHubForWindows | Out-Null

Write-Host ""
Write-Host "GitHubForWindows installation requires user interaction."
Write-Host "Setup is paused while you complete the installation."
Write-Host ""
Read-Host -Prompt "When installation has completed, press Enter to continue" | Out-Null
Push-Location (Join-Path $env:LocalAppData "GitHub")
Write-Host ""
Write-Host "Relaunching GitHubForWindows to begin tooling installation."
Write-Host "Once launched, close GitHubForWindows to proceed."
Start-Process .\GitHub.appref-ms -Wait
Write-Host ""
Write-Host "Launching GitHubForWindows Shell to complete tooling installation."
Start-Process .\GitHub.appref-ms -ArgumentList "--open-shell"
Read-Host -Prompt "After launching, close the GH4W shell and press Enter to proceed" | Out-Null
. (Join-Path (Split-Path -parent $PROFILE) "profile.ps1")
Pop-Location


### Node Packages
npm install -g azure-cli
npm install -g bower
npm install -g coffee-script
npm install -g conventional-changelog
npm install -g grunt
npm install -g gulp
npm install -g less
npm install -g lineman
npm install -g mocha
npm install -g node-inspector
npm install -g sass
npm install -g yo


### Install Janus for vim
curl.exe -L https://bit.ly/janus-bootstrap | bash


### Visual Studio 2015
# VsVim
Install-VSExtension https://visualstudiogallery.msdn.microsoft.com/59ca71b3-a4a3-46ca-8fe1-0e90e3f79329/file/6390/57/VsVim.vsix
# Productivity Power Tools 2015
Install-VSExtension https://visualstudiogallery.msdn.microsoft.com/34ebc6a2-2777-421d-8914-e29c1dfa7f5d/file/169971/1/ProPowerTools.vsix


### Visual Studio 2013
# VsVim
# Install-VSExtension https://visualstudiogallery.msdn.microsoft.com/59ca71b3-a4a3-46ca-8fe1-0e90e3f79329/file/6390/57/VsVim.vsix
# Productivity Power Tools 2013
# Install-VSExtension https://visualstudiogallery.msdn.microsoft.com/dbcb8670-889e-4a54-a226-a48a15e4cace/file/117115/4/ProPowerTools.vsix
# Web Essentials 2013
# Install-VSExtension https://visualstudiogallery.msdn.microsoft.com/56633663-6799-41d7-9df7-0f2a504ca361/file/105627/47/WebEssentials2013.vsix