# Read: https://github.com/craftzdog/dotfiles-public
# Install Form Nerd - hack
https://github.com/ryanoasis/nerd-fonts/releases/tag/v2.1.0

# Install Powershell from Store

# Default profile -> chosse Powershell
Default ->  Appearance 
 -Color scheme (One Half Dark (Modded)))
 -Font face: Hack NF
 - Enable Acrylic material: Enable
Open Json File search "One Half Dark" --> copy and paste new
{
            "background": "#001B26",
            "black": "#282C34",
            "blue": "#61AFEF",
            "brightBlack": "#5A6374",
            "brightBlue": "#61AFEF",
            "brightCyan": "#56B6C2",
            "brightGreen": "#98C379",
            "brightPurple": "#C678DD",
            "brightRed": "#E06C75",
            "brightWhite": "#DCDFE4",
            "brightYellow": "#E5C07B",
            "cursorColor": "#FFFFFF",
            "cyan": "#56B6C2",
            "foreground": "#DCDFE4",
            "green": "#98C379",
            "name": "One Half Dark (modded)",
            "purple": "#C678DD",
            "red": "#E06C75",
            "selectionBackground": "#FFFFFF",
            "white": "#DCDFE4",
            "yellow": "#E5C07B"
        },

# Instal Scoop
iwr -useb get.scoop.sh | iex
curl 'https://api.inkdrop.app/' | jq .

# Install Git
 winget install -e --id Git.Git

# Install neovim, gcc
scoop install neovim gcc

# Create config
mkdir .config/powershell
nvim .config/powershell/user_profile.ps1

```
#Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias k kubectl
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
```

mkdir Documents/PowerShell
nvim $PROFILE.CurrentUserCurrentHost
. $env:USERPROFILE\.config\powershell\user_profile.ps1

# Install Oh My Posh
Install-Module posh-git -Scope CurrentUser -Force
Install-Module oh-my-posh -Scope CurrentUser -Force 

cd C:\Users\BinhPhuong\.config\powershell
vim .\user_profile.ps1

Add to Head
Read if error: https://ohmyposh.dev/docs/migrating
Theme: https://ohmyposh.dev/docs/themes

mkdir C:\Users\BinhPhuong\.config\themes\
create theme in C:\Users\BinhPhuong\.config\themes\
```
#Prompt
Import-Module posh-git
oh-my-posh init pwsh --config "C:\Users\BinhPhuong\.config\themes\used.json" | Invoke-Expression
#Import-Module oh-my-posh
#Set-PoshPrompt Paradox
```

# Install Terminal Icons
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
Import-Module Terminal-Icons

# Install z Directory jumper
Install-Module -Name z -Force
z desk

# Install PSReadLine Autocompletion
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
# Install-Module PSReadLine -Force -AllowPrerelease -SkipPublisherCheck
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# Install Fzf Fuzzy Finder
Install-Module -Name PSFzf -Scope CurrentUser
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'
