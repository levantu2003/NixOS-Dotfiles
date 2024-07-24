{

  imports = [
    ./zsh.nix
    ./modules/bundle.nix
  ];

  home = {
    username = "kaiser";
    homeDirectory = "/home/kaiser";
    stateVersion = "23.11";
  };
}
