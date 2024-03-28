{ pkgs, ... }:

# @ref https://github.com/nix-community/home-manager/blob/master/modules/programs/mise.nix
{
  enable = true;

  globalConfig = {
    tools = {
      python = "latest";
      node = "lts";
    };
  };
}
