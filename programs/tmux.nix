{ pkgs, ... }:

# @ref https://github.com/nix-community/home-manager/blob/master/modules/programs/tmux.nix
{
  programs.tmux = {
    enable = true;

    clock24 = true;
    mouse = true;
    plugins = with pkgs.tmuxPlugins; [
      continuum
      resurrect
      sensible
      yank
    ];
  };
}
