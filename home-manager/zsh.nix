{ config, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    # enableAutosuggestions = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases =
      let
        flakeDir = "~/nix";
      in {
      flake = "sudo nixos-rebuild switch --flake ${flakeDir}";
      update = "nix flake update ${flakeDir}";
      upgrade = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";

      home = "home-manager switch --flake ${flakeDir}";

      conf = "nvim ${flakeDir}/nixos/configuration.nix";
      packages = "nvim ${flakeDir}/nixos/packages.nix";

      ll = "ls -l";
      v = "nvim";
      se = "sudoedit";
      ff = "fastfetch";
    };

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "sudo" ];
      theme = "agnoster"; # blinks is also really nice
    };
  };
}
