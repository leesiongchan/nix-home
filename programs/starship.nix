{ pkgs, ... }:

# @ref https://github.com/nix-community/home-manager/blob/master/modules/programs/starship.nix
{
  programs.starship = {
    enable = true;
  };
}
