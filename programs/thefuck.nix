{ pkgs, ... }:

{
  programs.thefuck = {
    enable = true;

    # We can't enable until the issue is fixed
    # @see https://github.com/nvbn/thefuck/issues/811
    enableInstantMode = false;
  };

  # Fix WSL slowness
  # @see https://github.com/nvbn/thefuck/wiki/Troubleshooting#wsl-fix-slowness
  home.file.".config/thefuck/settings.py" = {
    force = true;
    text = ''
      excluded_search_path_prefixes = ['/mnt/']
      require_confirmation = False
      wait_command = 3
    '';
  };
}
