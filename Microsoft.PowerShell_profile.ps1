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
