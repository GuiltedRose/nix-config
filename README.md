# nix-config

# Setting up Home Manager for NixOS:
```nix
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install
```
To  make sure it works properly we can run this:
```nix
home-manager
```

By default your nix configeration file is located in: `/home/user/.config/nixpkgs/home.nix`

The home.nix file will be were you'll store all the user side applications.

This is done in this way to make sure  that the system configeration is done with the configeration.nix file keeping the userspace seperate entirely.
