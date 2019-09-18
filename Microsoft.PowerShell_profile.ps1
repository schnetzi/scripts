function fgo{
 git checkout
}
Set-Alias go fgo

Remove-Item Alias:gc -force
function fgc{
 git commit
}
Set-Alias gc fgc -force

function fga{
 git add
}
Set-Alias ga fga

function fgs{
 git status
}
Set-Alias gs fgs

Remove-Item Alias:gu -force
function fgu{
 git push -u origin HEAD
}
Set-Alias gu fgu
