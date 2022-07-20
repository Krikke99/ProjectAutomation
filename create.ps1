param (
    [Parameter(Mandatory=$true)]
    [string]$fn
)

$giturl="https://github.com/Krikke99/"
$gitext=".git"

$workingdir=[Environment]::GetFolderPath('MyDocuments') + "\repos\" + $fn
Write-Output $workingdir
New-Item -Path $workingdir -ItemType Director
Set-Location $workingdir
New-Item "README.md" -ItemType File
git init
gh repo create $fn --private --source=. --remote=upstream
git remote add origin $giturl$fn$gitext
git add .
git commit -m "initial commit"
git push -u origin master
code .