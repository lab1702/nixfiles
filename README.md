# nixfiles
A collection of nix files

## Enabling Search

    mkdir -p ~/.config/nix
    echo 'experimental-features = nix-command flakes' >> ~/.config/nix/nix.conf

## Enabling Parallelism

    mkdir -p ~/.config/nix
    echo "max-jobs = auto" >> ~/.config/nix/nix.conf
    echo "cores = 0" >> ~/.config/nix/nix.conf

