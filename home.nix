{ config, pkgs,pkgs-unstable,
#inputs,unstable,
... }:

{
  # TODO please change the username & home directory to your own
  home.username = "scott";
  home.homeDirectory = "/home/scott";
  #imports = [./helix.nix];
  home.packages = with pkgs; [
  cowsay
  #helix
  microsoft-edge
  chromium
  zeroad
  vlc
  youtube-tui
  #vim
  helix
  kdePackages.kate
  #inputs.unstable.legacyPackages."${pkgs.system}".vim
  ];
  programs.git = {
    enable = true;
    userName = "brokenpike";
    userEmail = "brokenpike@garmr.org";
  };




  home.stateVersion = "24.05";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}
