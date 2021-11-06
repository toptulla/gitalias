
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

Set-Alias -Name gitec -Value Use-GitEditConfig #git config --global -e
Set-Alias -Name gits -Value Use-GitStatus #git status
Set-Alias -Name gitsi -Value Use-GitSubmoduleInit #git submodule init
Set-Alias -Name gitsu -Value Use-GitSubmoduleUpdate #git submodule update
Set-Alias -Name gitp -Value Use-GitPull #git pull
Set-Alias -Name gitps -Value Use-GitPush #git push
Set-Alias -Name gitpsd -Value Use-GitPushD #git push -u origin HEAD
Set-Alias -Name gitf -Value Use-GitFetch #git fetch
Set-Alias -Name gitb -Value Use-GitBranch #git branch
Set-Alias -Name gitba -Value Use-GitBranchArgs #git branch $args
Set-Alias -Name gitsw -Value Use-GitSwitchBranch #git switch $branch
Set-Alias -Name gitswc -Value Use-GitSwitchC #git switch -c $branch
Set-Alias -Name gitswb -Value Use-GitSwitchBack #git switch -
Set-Alias -Name gitswd -Value Use-GitSwitchDevelop #git switch develop
Set-Alias -Name gitswm -Value Use-GitSwitchMaster #git switch master
Set-Alias -Name gitcm -Value Use-GitCommitM #git commit -m $message
Set-Alias -Name gitcam -Value Use-GitCommitAM #git commit -am $message
Set-Alias -Name gita -Value Use-GitAddAll #git add --all
Set-Alias -Name gitaa -Value Use-GitAddArgs #git add &args
Set-Alias -Name gitd -Value Use-GitDiff #git diff
Set-Alias -Name gitdc -Value Use-GitDiffCached #it diff --cached
Set-Alias -Name gitlog -Value Use-GitLog #git log
Set-Alias -Name gitlogn -Value Use-GitLogN #git log --graph --abbrev-commit --decorate --format=oneline -$n
Set-Alias -Name gitlog5 -Value Use-GitLog5 #git log --graph --abbrev-commit --decorate --format=oneline -5
Set-Alias -Name gitcl -Value Use-GitClean #git clean -df
Set-Alias -Name gitsh -Value Use-GitShow #git show
Set-Alias -Name gitshf -Value Use-GitShowF #git show --pretty='format:' --name-only
Set-Alias -Name gitrh -Value Use-GitResetHard #git reset --hard
Set-Alias -Name gitra -Value Use-GitResetArgs #git reset $args