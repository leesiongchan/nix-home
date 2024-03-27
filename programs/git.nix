{ pkgs, ... }:

{
  enable = true;

  userName = "Harvey";
  userEmail = "leesiongchan@duck.com";

  extraConfig = {
    commit.gpgsign = true;
    gpg.format = "ssh";
    user.signingkey = "~/.ssh/id_ed25519.pub";
  };

}
