{ pkgs, ... }:

{
  enable = false;

  clock24 = true;
  mouse = true;
  plugins = with pkgs.tmuxPlugins; [
    continuum
    resurrect
    sensible
    yank
    {
      plugin = dracula;
      extraConfig = ''
        set -g @dracula-plugins "cpu-usage ram-usage"
        set -g @dracula-refresh-rate 10
        set -g @dracula-show-battery false
        set -g @dracula-show-powerline true
      '';
    }
  ];
}
