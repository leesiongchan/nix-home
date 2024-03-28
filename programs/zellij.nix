{ pkgs, ... }:

# @ref https://github.com/nix-community/home-manager/blob/master/modules/programs/zellij.nix
{
  programs.zellij = {
    enable = true;

    settings = {
      default_layout = "compact";
      simplified_ui = true;
    };
  };
}
