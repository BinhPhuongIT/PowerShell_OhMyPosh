# C:\Users\BinhPhuong\.config\powershell

#Prompt
Import-Module posh-git
oh-my-posh init pwsh --config "C:\Users\BinhPhuong\.config\themes\powerlevel10k_lean.omp.json" | Invoke-Expression

# Icon
Import-Module Terminal-Icons

# PSReadline
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Utilities
function where ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

#Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias k kubectl
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
