{ pkgs, ... }:

{
  enable = false;

  extraConfig = ''
    source ~/.cache/starship/init.nu
    source ~/.zoxide.nu
  '';

  extraEnv = ''
    starship init nu | save -f ~/.cache/starship/init.nu
    zoxide init nushell | save -f ~/.zoxide.nu
  '';
}
