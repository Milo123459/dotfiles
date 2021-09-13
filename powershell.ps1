Clear-Host
Invoke-Expression (&starship init powershell)
$host.UI.RawUI.WindowTitle = "PowerShell"
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Remove-Item alias:curl
Remove-Item alias:wget
Invoke-Expression (& {
    $hook = if ($PSVersionTable.PSVersion.Major -lt 6) { 'prompt' } else { 'pwd' }
    (zoxide init --hook $hook powershell) -join "`n"
})
function tokio {
    cd ~/Desktop/GitHub/console
    cargo run --release
}