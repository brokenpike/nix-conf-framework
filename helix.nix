{ inputs, ... }: {
  programs.helix = {
    enable = true;
    #package = unstable.helix;
    package=inputs.nixpkgs.legacyPackages."${pkgs.system}".helix
  };
 # xdg.configFile."helix/config.toml".source = ../common/helix/config.toml;
}
