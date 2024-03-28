{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "leesiongchan";
  home.homeDirectory = "/home/leesiongchan";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    bat
    bottom
    du-dust
    fd
    jq
    just
    neofetch
    ripgrep

    # Nix
    nil
    nixpkgs-fmt

    # Rust
    cargo-binstall
    rustup

    # Apps
    gitui
    sublime-merge
  ];

  home.sessionVariables = {
    # Scale HiDPI (WSL)
    GDK_DPI_SCALE = 1.5;
    GDK_SCALE = 2;
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs = {
    broot.enable = true;
    carapace.enable = true;
    eza.enable = true;
    fzf.enable = true;
    granted.enable = true;
    navi.enable = true;
    ssh.enable = true;
    zoxide.enable = true;
  };

  imports = [
    ./programs/atuin.nix
    ./programs/git.nix
    ./programs/mise.nix
    # ./programs/nushell.nix
    ./programs/starship.nix
    ./programs/thefuck.nix
    # ./programs/tmux.nix
    # ./programs/zellij.nix
    ./programs/zsh.nix

    ./dotfiles.nix
    ./theme.nix
  ];
}
