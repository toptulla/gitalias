
function Copy-ThisModule {
    Get-Item .\Git-Commands.psm1 |
        Copy-Item -Destination '~\Documents\PowerShell\Modules\Git-Commands\'
}
Set-Alias ctm Copy-ThisModule

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

Set-Alias gitec Use-GitEditConfig #gitec => git config --global -e
Set-Alias gits Use-GitStatus #gits => git status
Set-Alias gitsi Use-GitSubmoduleInit #gitsi => git submodule init
Set-Alias gitsu Use-GitSubmoduleUpdate #gitsu => git submodule update
Set-Alias gitp Use-GitPull #gitp => git pull
Set-Alias gitps Use-GitPush #gitps => git push
Set-Alias gitpsd Use-GitPushD #gitpsd => git push -u origin HEAD
Set-Alias gitf Use-GitFetch #gitf => git fetch
Set-Alias gitb Use-GitBranch #gitb => git branch
Set-Alias gitba Use-GitBranchArgs #gitba => git branch $args
Set-Alias gitsw Use-GitSwitchBranch #gitsw => git switch $branch
Set-Alias gitswc Use-GitSwitchC #gitswc => git switch -c $branch
Set-Alias gitswb Use-GitSwitchBack #gitswb => git switch -
Set-Alias gitswd Use-GitSwitchDevelop #gitswd => git switch develop
Set-Alias gitswm Use-GitSwitchMaster #gitswm => git switch master
Set-Alias gitcm Use-GitCommitM #gitcm => git commit -m $message
Set-Alias gitcam Use-GitCommitAM #gitcam => git commit -am $message
Set-Alias gita Use-GitAddAll #gita => git add --all
Set-Alias gitaa Use-GitAddArgs #gitaa => git add &args
Set-Alias gitd Use-GitDiff #gitd => git diff
Set-Alias gitdc Use-GitDiffCached #gitdc => git diff --cached
Set-Alias gitlog Use-GitLog #gitlog => git log
Set-Alias gitlogn Use-GitLogN #gitlogn => git log --graph --abbrev-commit --decorate --format=oneline -$n
Set-Alias gitlog5 Use-GitLog5 #gitlog5 => git log --graph --abbrev-commit --decorate --format=oneline -5
Set-Alias gitcl Use-GitClean #gitcl => git clean -df
Set-Alias gitsh Use-GitShow #gitsh => git show
Set-Alias gitshf Use-GitShowF #gitshf => git show --pretty='format:' --name-only
Set-Alias gitrh Use-GitResetHard #gitrh => git reset --hard
Set-Alias gitra Use-GitResetArgs #gitra => git reset $args

function Get-GitAlias {
    Get-Content ~\Documents\PowerShell\Modules\Git-Commands\Git-Commands.psm1
        | Where-Object { $_ -like 'Set-Alias*' }
        | Select-Object { $_.Substring($_.IndexOf('#')) }
}