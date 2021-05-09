clear
Invoke-Expression (&starship init powershell)
$host.UI.RawUI.WindowTitle = "PowerShell"
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Remove-Item alias:curl
Remove-Item alias:ls
function ls() {
    beautil ls
}
