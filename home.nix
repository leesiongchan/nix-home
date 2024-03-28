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
  home.packages = [
    pkgs.bat
    pkgs.bottom
    pkgs.du-dust
    pkgs.fd
    pkgs.jq
    pkgs.just
    pkgs.nil
    pkgs.nixpkgs-fmt
    pkgs.ripgrep
    pkgs.rustup

    # Apps
    pkgs.gitui
    pkgs.sublime-merge
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. If you don't want to manage your shell through Home
  # Manager then you have to manually source 'hm-session-vars.sh' located at
  # either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/leesiongchan/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # Scale HiDPI (WSL)
    GDK_DPI_SCALE = 1.5;
    GDK_SCALE = 2;
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs = {
    carapace.enable = true;
    eza.enable = true;
    fzf.enable = true;
    navi.enable = true;
    ssh.enable = true;
    zoxide.enable = true;

    atuin = (import ./programs/atuin.nix { inherit pkgs; });
    git = (import ./programs/git.nix { inherit pkgs; });
    mise = (import ./programs/mise.nix { inherit pkgs; });
    # nushell = (import ./programs/nushell.nix { inherit pkgs; });
    starship = (import ./programs/starship.nix { inherit pkgs; });
    # tmux = (import ./programs/tmux.nix { inherit pkgs; });
    # zellij = (import ./programs/zellij.nix { inherit pkgs; });
    zsh = (import ./programs/zsh.nix { inherit pkgs; });
  };
}
