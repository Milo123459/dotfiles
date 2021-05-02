clear
Invoke-Expression (&starship init powershell)
$host.UI.RawUI.WindowTitle = "PowerShell"
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Remove-Item alias:curl
function oa() {
    alacritty --working-directory $PWD
}
function cc() {
    cargo clippy --workspace --locked --all-targets --all-features -- -D clippy::all
}
function cr() {
    cargo run
}
function cf() {
    cargo fmt
}
