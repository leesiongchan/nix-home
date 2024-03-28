{ pkgs, ... }:

# @ref https://github.com/nix-community/home-manager/blob/master/modules/programs/atuin.nix
{
  programs.atuin = {
    enable = true;

    flags = [ "--disable-up-arrow" ];
  };
}
