# nixfiles

_My nix-shell files for a common development environment on Linux and macOS_

## Installing Nix

Linux or WSL2:

    sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --daemon

macOS:

    sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install)

## Enabling Search

    mkdir -p ~/.config/nix
    echo 'experimental-features = nix-command flakes' >> ~/.config/nix/nix.conf

## Clone Files

    cd
    git clone https://github.com/lab1702/nixfiles.git

## Start Shell

    nix-shell ~/nixfiles/data-science.nix

## Create Alias

bash:

    echo "alias ns='nix-shell ~/nixfiles/data-science.nix'" >> ~/.bashrc

zsh:

    echo "alias ns='nix-shell ~/nixfiles/data-science.nix'" >> ~/.zshrc
