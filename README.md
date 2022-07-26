# ProjectAutomation

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Language](https://img.shields.io/github/languages/top/krikke99/ProjectAutomation?style=flat)](https://github.com/krikke99/ProjectAutomation)
[![Last commit](https://img.shields.io/github/last-commit/krikke99/ProjectAutomation.svg?style=flat)](https://github.com/krikke99/ProjectAutomation/commits)
[![GitHub commit activity](https://img.shields.io/github/commit-activity/m/krikke99/ProjectAutomation)](https://github.com/krikke99/ProjectAutomation/commits)
[![Github Stars](https://img.shields.io/github/stars/krikke99/ProjectAutomation?style=flat&logo=github)](https://github.com/krikke99/ProjectAutomation/stargazers)
[![Github Forks](https://img.shields.io/github/forks/krikke99/ProjectAutomation?style=flat&logo=github)](https://github.com/krikke99/ProjectAutomation/network/members)
[![Github Watchers](https://img.shields.io/github/watchers/krikke99/ProjectAutomation?style=flat&logo=github)](https://github.com/krikke99/ProjectAutomation)
[![GitHub contributors](https://img.shields.io/github/contributors/krikke99/ProjectAutomation)](https://github.com/krikke99/ProjectAutomation/graphs/contributors)

## Description
Automation script to setup a project folder with git and github.

- Creates a project folder in your working directory
- Setup [Git](https://git-scm.com/)
- Sync with [Github](https://github.com/)
- opens [VSCode](https://code.visualstudio.com/)

## Dependencies
This script uses GitHub CLI:
- [https://cli.github.com/](https://cli.github.com/)
- [https://github.com/cli/cli#installation](https://github.com/cli/cli#installation)

## Usage
./create -N Projectname -U https://github.com/username -V Visibility

## Parameters
- -N or -fn Projectname (mandatory)
- -U or -giturl url
- -V or -visibility 0=public, 1=private(default)
- -P or -workingdir local path 

## Examples
- PS>./create projectname
- PS>./create -fn projectname -visibility 0
- PS>./create -N projectname -U https://github.com/Krikke99/ -V 0
- PS>./create -N projectname -U https://github.com/Krikke99/ -V 0 -P C:\Users\chris\Documents\repos

## License
This project is licensed under the GPL-3.0 License - see the LICENSE.md file for details
