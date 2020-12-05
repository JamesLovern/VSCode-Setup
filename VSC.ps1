$extensions =
      "alexcvzz.vscode-sqlite",
      "BriteSnow.vscode-toggle-quotes",
      "christian-kohler.npm-intellisense",
      "christian-kohler.path-intellisense",
      "CoenraadS.bracket-pair-colorizer",
      "dbaeumer.vscode-eslint",
      "Equinusocio.vsc-community-material-theme",
      "Equinusocio.vsc-material-theme",
      "equinusocio.vsc-material-theme-icons",
      "esbenp.prettier-vscode",
      "formulahendry.auto-close-tag",
      "formulahendry.auto-rename-tag",
      "fosshaas.fontsize-shortcuts",
      "HookyQR.beautify",
      "icrawl.discord-vscode",
      "johnpapa.vscode-cloak",
      "mikestead.dotenv",
      "ms-mssql.mssql",
      "ms-python.python",
      "ms-vscode-remote.remote-ssh",
      "ms-vscode-remote.remote-ssh-edit",
      "ms-vsliveshare.vsliveshare",
      "patbenatar.advanced-new-file",
      "PKief.material-icon-theme",
      "ritwickdey.LiveServer",
      "WakaTime.vscode-wakatime",
      "WallabyJs.quokka-vscode",
      "whatwedo.twig",
      "Zignd.html-css-class-completion"


$cmd = "code --list-extensions"
Invoke-Expression $cmd -OutVariable output | Out-Null
$installed = $output -split "\s"

foreach ($ext in $extensions) {
    if ($installed.Contains($ext)) {
        Write-Host $ext "already installed." -ForegroundColor Gray
    } else {
        Write-Host "Installing" $ext "..." -ForegroundColor White
        code --install-extension $ext
    }
}