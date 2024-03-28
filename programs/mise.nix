{ pkgs, ... }:

# @ref https://github.com/nix-community/home-manager/blob/master/modules/programs/mise.nix
{
  programs.mise = {
    enable = true;

    globalConfig = {
      settings = {
        experimental = true;
      };
      tools = {
        awscli = "latest";
        node = "lts";
        pnpm = "latest";
        python = "latest";
        # Unable to install the lates (> 1.22.19) due to pgp issue.
        # @see https://github.com/twuni/asdf-yarn/issues/33
        yarn = "1.22.19";
      };
    };
  };
}
