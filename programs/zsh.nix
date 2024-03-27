{ pkgs, ... }:

{
  enable = true;

  initExtra = ''
    eval "$(starship init zsh)"
  '';

  profileExtra = ''
    # Fancy ls colors
    # @ref https://github.com/sharkdp/vivid
    export LS_COLORS="$(${pkgs.vivid}/bin/vivid generate dracula)"

    # Scale HiDPI (WSL)
    export GDK_SCALE=2
    export GDK_DPI_SCALE=1.5

    # export GPG_TTY="$(tty)"

    alias cat=bat
    alias du=dust
    alias find=fd
    alias grep=rg
    alias htop=bottom
    alias ls=exa

    # if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then . ~/.nix-profile/etc/profile.d/nix.sh; fi
  '';

  # Framework
  oh-my-zsh = {
    enable = false;

    extraConfig = ''
      # @ref https://github.com/ohmyzsh/ohmyzsh/wiki/Settings#disable_magic_functions
      DISABLE_MAGIC_FUNCTIONS=true

      ASDF_DIR=$HOME/.nix-profile/share/asdf-vm

      # Tmux
      # @ref https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/tmux#configuration-variables
      # ZSH_TMUX_AUTOSTART=true
      # ZSH_TMUX_CONFIG=$HOME/.config/tmux/tmux.conf
      # ZSH_TMUX_AUTOCONNECT=false

      # Zellij
      # eval "$(zellij setup --generate-auto-start zsh)"
    '';
    plugins = [ "docker" "docker-compose" "fzf" "git" "gitignore" "kubectl" "ripgrep" "rust" "zoxide" ];
  };

  # Plugins
  autosuggestion.enable = false;
  historySubstringSearch.enable = false;
  syntaxHighlighting.enable = false;
}
