{ pkgs, ... }:

# @ref https://github.com/nix-community/home-manager/blob/master/modules/programs/atuin.nix
{
  enable = true;

  flags = [ "--disable-up-arrow" ];
}
