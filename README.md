# nix-config

# Setting up Home Manager for NixOS:
```nix
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
```
This is needed to install the current version of home manager for our Nix build.
```
nix-channel --add https://github.com/nix-community/home-manager/archive/release-[insert version number].tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install
```
To  make sure it works properly we can run this:
```nix
home-manager
```
NOTE: to install we need to reboot the system first. We also need to update home-manager from 22.11 to the newest build version.

By default your nix configeration file is located in: `/home/user/.config/nixpkgs/home.nix`

The home.nix file will be were you'll store all the user side applications.

This is done in this way to make sure  that the system configeration is done with the configeration.nix file keeping the userspace seperate entirely.
