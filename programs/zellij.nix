{ pkgs, ... }:

# @ref https://github.com/nix-community/home-manager/blob/master/modules/programs/zellij.nix
{
  enable = false;

  settings = {
    default_layout = "compact";
    # simplified_ui = true;
    theme = "dracula";
    themes = {
      dracula = {
        bg = [ 40 42 54 ];
        red = [ 255 85 85 ];
        green = [ 80 250 123 ];
        yellow = [ 241 250 140 ];
        blue = [ 98 114 164 ];
        magenta = [ 255 121 198 ];
        orange = [ 255 184 108 ];
        fg = [ 248 248 242 ];
        cyan = [ 139 233 253 ];
        black = [ 0 0 0 ];
        white = [ 255 255 255 ];
      };
    };
  };
}
