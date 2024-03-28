{ pkgs, ... }:

# @ref https://github.com/nix-community/home-manager/blob/master/modules/programs/zsh.nix
{
  enable = true;

  initExtra = ''
    # Fancy ls colors
    # @ref https://github.com/sharkdp/vivid
    export LS_COLORS="$(${pkgs.vivid}/bin/vivid generate dracula)"
  '';
  shellAliases = {
    cat = "bat";
    du = "dust";
    grep = "rg";
    ls = "eza";
    tree = "broot";
  };

  # Framework
  oh-my-zsh = {
    enable = true;

    extraConfig = ''
      # @ref https://github.com/ohmyzsh/ohmyzsh/wiki/Settings#disable_magic_functions
      DISABLE_MAGIC_FUNCTIONS=true
    '';
    plugins = [ "docker" "docker-compose" "git" ];
  };

  # Plugins
  autosuggestion.enable = true;
  historySubstringSearch.enable = false;
  syntaxHighlighting.enable = true;
}
