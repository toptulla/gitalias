function Copy-ThisModule {
    Get-Item .\Git-Commands.psm1 |
        Copy-Item -Destination '~\Documents\PowerShell\Modules\Git-Commands\'
}

function Use-Git($command, $p1, $p2) {
    switch ($command) {
        ec { git config --global -e; break; }
        s { git status; break; }
        si { git submodule init; break; }
        su { git submodule update; break; }
        st { git stash; break; }
        stp { git stash pop; break; }
        me { git merge $p1; break; }
        mea { git merge --abort; break; }
        mec { git merge --continue; break; }
        reb { git rebase $p1; break; }
        rebt { git rebase trunk; break; }
        rebm { git rebase master; break; }
        reba { git rebase --abort; break; }
        rebc { git rebase --continue; break; }
        p { git pull; break; }
        pu { git push; break; }
        pud { git push -u origin HEAD; break; }
        puf { git push --force-with-lease; break; }
        f { git fetch; break; }
        b { git branch; break; }
        br { git branch -r; break; }
        bdel { git branch -d $p1; break; }
        bdelr { git push -d origin $p1; break; }
        bren { git branch -m $p1 ; break; }
        bren2 { git branch -m $p1 $p2 ; break; }
        sw { git switch $p1; break; }
        swc { git switch -c $p1 ; break; }
        swb { git switch -; break; }
        swd { git switch develop; break; }
        swm { git switch master; break; }
        swma { git switch main; break; }
        swt { git switch trunk; break; }
        cm { git commit -m $p1; break; }
        cam { git commit -am $p1; break; }
        cman { git commit --amend --no-edit; break; }
        cmam { git commit --amend -m $p1; break; }
        aa { git add --all; break; }
        af { git add -- $p1; break; }
        d { git diff; break; }
        dc { git diff --cached; break; }
        l { git log; break; }
        l5 { git log --graph --abbrev-commit --decorate --format=oneline -5; break; }
        ln { git log --graph --abbrev-commit --decorate --format=oneline -$p1; break; }
        cl { git clean -df; break; }
        sh { git show; break; }
        shf { git show --pretty='format:' --name-only; break; }
        res { git reset; break; }
        resh { git reset --hard; break; }
        rev { git revert $p1 }
        revm { git revert $p1 -m $p2 } #git revert 8f937c6 -m 1 (оставить основание из ствола/отбросить изменения из ветки)
        Default { 'nothing' }
    }
}
Set-Alias g Use-Git