<#
.PARAMETER fn
Specifies the project name.

.PARAMETER Visibillity
Specifies the visibillity in Github. 1=private(default), 0=public.

.EXAMPLE
PS> create projectname

.EXAMPLE
PS> create projectname 0

.LINK
https://github.com/Krikke99

#>
param (
    [Parameter(Mandatory=$true, HelpMessage="Project name")]
    [string]$fn,
    
    [Parameter(Mandatory=$false, HelpMessage="Set repository visibillity, 0=Public 1=Private")]
    [int]$Visibillity = 1
)

$giturl="https://github.com/Krikke99/"
$gitext=".git"

$workingdir=[Environment]::GetFolderPath('MyDocuments') + "\repos\" + $fn
New-Item -Path $workingdir -ItemType Director
Set-Location $workingdir
New-Item "README.md" -ItemType File
git init
if (1 -eq $Visibillity) {
    gh repo create $fn --private --source=. --remote=upstream
}
elseif (0 -eq $Visibillity) {
    gh repo create $fn --public --source=. --remote=upstream
}
gh repo create $fn --private --source=. --remote=upstream
git remote add origin $giturl$fn$gitext
git add .
git commit -m "initial commit"
git push -u origin master
code .