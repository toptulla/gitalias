
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
function Use-GitBranch { git branch }
function Use-GitBranchArgs { git branch $args }
function Use-GitSwitchBranch($branch) { git switch $branch }
function Use-GitSwitchC($branch) { git switch -c $branch }
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
function Use-GitShow { git show }
function Use-GitShowF { git show --pretty='format:' --name-only }
function Use-GitResetHard { git reset --hard }
function Use-GitResetArgs { git reset $args }

Set-Alias -Name gec -Value Use-GitEditConfig #git config --global -e
Set-Alias -Name gs -Value Use-GitStatus #git status
Set-Alias -Name gsi -Value Use-GitSubmoduleInit #git submodule init
Set-Alias -Name gsu -Value Use-GitSubmoduleUpdate #git submodule update
Set-Alias -Name gpull -Value Use-GitPull #git pull
Set-Alias -Name gpush -Value Use-GitPush #git push
Set-Alias -Name gpushd -Value Use-GitPushD #git push -u origin HEAD
Set-Alias -Name gf -Value Use-GitFetch #git fetch
Set-Alias -Name gb -Value Use-GitBranch #git branch
Set-Alias -Name gba -Value Use-GitBranchArgs #git branch $args
Set-Alias -Name gsa -Value Use-GitSwitchBranch #git switch $branch
Set-Alias -Name gsc -Value Use-GitSwitchC #git switch -c $branch
Set-Alias -Name gsb -Value Use-GitSwitchBack #git switch -
Set-Alias -Name gsd -Value Use-GitSwitchDevelop #git switch develop
Set-Alias -Name gsm -Value Use-GitSwitchMaster #git switch master
Set-Alias -Name gcmm -Value Use-GitCommitM #git commit -m $message
Set-Alias -Name gcam -Value Use-GitCommitAM #git commit -am $message
Set-Alias -Name ga -Value Use-GitAddAll #git add --all
Set-Alias -Name gaa -Value Use-GitAddArgs #git add &args
Set-Alias -Name gd -Value Use-GitDiff #git diff
Set-Alias -Name gdc -Value Use-GitDiffCached #it diff --cached
Set-Alias -Name glog -Value Use-GitLog #git log
Set-Alias -Name glogn -Value Use-GitLogN #git log --graph --abbrev-commit --decorate --format=oneline -$n
Set-Alias -Name glog5 -Value Use-GitLog5 #git log --graph --abbrev-commit --decorate --format=oneline -5
Set-Alias -Name gclean -Value Use-GitClean #git clean -df
Set-Alias -Name gsh -Value Use-GitShow #git show
Set-Alias -Name gshf -Value Use-GitShowF #git show --pretty='format:' --name-only
Set-Alias -Name grh -Value Use-GitResetHard #git reset --hard
Set-Alias -Name gra -Value Use-GitResetArgs #git reset $args