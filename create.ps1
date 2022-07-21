<#
.SYNOPSIS
Automation script to setup a project folder with git and github.

.DESCRIPTION


.PARAMETER fn
Specifies the project name.

.PARAMETER visibility
Specifies the visibility in Github. 1=private(default), 0=public.

.EXAMPLE
PS>./create projectname
PS>./create -fn projectname -visibility 0
PS>./create -N projectname -U https://github.com/Krikke99/ -V 0

.LINK
https://github.com/Krikke99

#>
param (
    [Alias("N")]
    [Parameter(Mandatory=$true, HelpMessage="Project name")]
    [string]$fn,
    
    [Alias("U")]
    [Parameter(Mandatory=$false, HelpMessage="Git url")]
    [string]$giturl="https://github.com/Krikke99/",

    [Alias("V")]
    [Parameter(Mandatory=$false, HelpMessage="Set repository visibility, 0=Public 1=Private")]
    [int]$visibility = 1
)

If ($visibility -lt 0 -OR $visibility -gt 1)
{
    Throw "Error: visibility can only be 0 (public) or 1 (private)"
}

$gitext=".git"

$workingdir=[Environment]::GetFolderPath('MyDocuments') + "\repos\" + $fn
New-Item -Path $workingdir -ItemType Director
Set-Location $workingdir
New-Item "README.md" -ItemType File
git init
if (1 -eq $visibility) {
    gh repo create $fn --private --source=. --remote=upstream
}
elseif (0 -eq $visibility) {
    gh repo create $fn --public --source=. --remote=upstream
}
git remote add origin $giturl$fn$gitext
git add .
git commit -m "initial commit"
git push -u origin master
code .