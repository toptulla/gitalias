function Copy-ThisModule {
    Get-Item .\Git-Commands.psm1 |
        Copy-Item -Destination '~\Documents\PowerShell\Modules\Git-Commands\'
}

function Use-Git($command, $p1, $p2) {
    switch ($command) {
        ec { git config --global -e; break; }
        s { git status; break; }
        si { git submodule init; break; }
        su { git submodule update ; break; }
        p { git pull; break; }
        pu { git push; break; }
        pud { git push -u origin HEAD; break; }
        f { git fetch; break; }
        b { git branch; break; }
        br { git branch -r ; break; }
        sw { git switch $p1; break; }
        swc { git switch -c $p1 ; break; }
        swb { git switch -; break; }
        swd { git switch develop; break; }
        swm { git switch master; break; }
        cm { git commit -m $p1; break; }
        cam { git commit -am $p1; break; }
        aa { git add --all; break; }
        af { git add -- $p1; break; }
        d { git diff; break; }
        dc { git diff --cached; break; }
        l { git log; break; }
        l5 { git log --graph --abbrev-commit --decorate --format=oneline -5; break; }
        ln { git log --graph --abbrev-commit --decorate --format=oneline -$p1; break; }
        cl { git clean -df; break; }
        sh { git show; break; }
        shf { git git show --pretty='format:' --name-only; break; }
        r { git reset; break; }
        rh { git reset --hard; break; }
        Default { 'nothing' }
    }
}

Set-Alias g Use-Git