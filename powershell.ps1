clear
Invoke-Expression (&starship init powershell)
$host.UI.RawUI.WindowTitle = "PowerShell"
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineKeyHandler -Key LeftArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key RightArrow -Function HistorySearchForward
