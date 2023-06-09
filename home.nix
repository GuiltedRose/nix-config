{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "ali";
  home.homeDirectory = "/home/ali";
  home.packages = [ 
    pkgs.neofetch 
    pkgs.vim 
    pkgs.discord
    pkgs.ps_mem
    pkgs.htop
    pkgs.alacritty
    pkgs.gcc
    pkgs.nasm
    pkgs.qemu
  ];
  
  programs.bash.enable = false;
    
  programs.zsh = {
    enable = true; 
    shellAliases = {
      mem = "sudo ps_mem";
      nuke = "nix-store --gc";
      nuke-gen = "sudo nix-collect-garbage --delete-old";
      nuke-all = "sudo nix-store --gc";
      update-nuke = "sudo nixos-rebuild boot";
      update = "sudo nixos-rebuild switch";
      update-reboot = "sudo nixos-rebuild switch";
      upgrade = "home-manager switch";
      edit = "vim .config/nixpkgs/home.nix";
      edit-system = "sudo nvim /etc/nixos/configuration.nix";
     kill-discord = "pkill .Discord-wrappe";
    };
    
    initExtra = '' 
    
      neofetch
 
    '';
   
  };
  
  programs.vim = {
    enable = true;
    extraConfig = ''
      set number
      syntax on 
    '';
  
  };

  nixpkgs.config.allowUnfree = true;
  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
