{ pkgs, ... }:

{
  enable = true;

  # We can't enable until the issue is fixed
  # @see https://github.com/nvbn/thefuck/issues/811
  enableInstantMode = false;
}
