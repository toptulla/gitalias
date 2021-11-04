
function Copy-ThisModule {
    Get-Item .\Git-Commands.psm1 |
        Copy-Item -Destination '~\Documents\PowerShell\Modules\Git-Commands\'
}
Set-Alias -Name ctm -Value Copy-ThisModule

function Use-GitEditConfig { git config --global -e }
function Use-GitStatus { git status }
function Use-GitSubmoduleInit { git submodule init }
function Use-GitSubmoduleUpdate { git submodule update }
function Use-GitPull { git pull }
function Use-GitPush { git push }
function Use-GitPushD { git push -u origin HEAD }
function Use-GitFetch { git fetch }
function Use-GitBranch { git branch --show-current }
function Use-GitBranchArgs { git branch $args }
function Use-GitSwitchArgs { git switch $args }
function Use-GitSwitchC { git switch -c }
function Use-GitSwitchBack { git switch - }
function Use-GitSwitchDevelop { git switch develop }
function Use-GitSwitchMaster { git switch master }
function Use-GitCommitM($message) { git commit -m $message }
function Use-GitCommitAM($message) { git commit -am $message }
function Use-GitAddAll { git add --all }
function Use-GitAddArgs { git add &args }
function Use-GitDiff { git diff }
function Use-GitDiffCached { git diff --cached }
function Use-GitLog { git log }
function Use-GitLogN($n) { git log --graph --abbrev-commit --decorate --format=oneline -$n }
function Use-GitLog5 { git log --graph --abbrev-commit --decorate --format=oneline -5 }
function Use-GitClean { git clean -df }

Set-Alias -Name gec -Value Use-GitEditConfig
Set-Alias -Name gs -Value Use-GitStatus
Set-Alias -Name gsi -Value Use-GitSubmoduleInit
Set-Alias -Name gsu -Value Use-GitSubmoduleUpdate
Set-Alias -Name gpull -Value Use-GitPull
Set-Alias -Name gpush -Value Use-GitPush
Set-Alias -Name gpushd -Value Use-GitPushD
Set-Alias -Name gf -Value Use-GitFetch
Set-Alias -Name gb -Value Use-GitBranch
Set-Alias -Name gba -Value Use-GitBranchArgs
Set-Alias -Name gsa -Value Use-GitSwitchArgs
Set-Alias -Name gsc -Value Use-GitSwitchC
Set-Alias -Name gsb -Value Use-GitSwitchBack
Set-Alias -Name gsd -Value Use-GitSwitchDevelop
Set-Alias -Name gsm -Value Use-GitSwitchMaster
Set-Alias -Name gcmm -Value Use-GitCommitM
Set-Alias -Name gcam -Value Use-GitCommitAM
Set-Alias -Name ga -Value Use-GitAddAll
Set-Alias -Name gaa -Value Use-GitAddArgs
Set-Alias -Name gd -Value Use-GitDiff
Set-Alias -Name gdc -Value Use-GitDiffCached
Set-Alias -Name glog -Value Use-GitLog
Set-Alias -Name glogn -Value Use-GitLogN
Set-Alias -Name glog5 -Value Use-GitLog5
Set-Alias -Name gclean -Value Use-GitClean