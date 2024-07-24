{
  programs.git = {
    enable = true;
    userName  = "levantu2003";
    userEmail = "levantu18071970@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
      safe.directory = "/etc/nixos";
    };
  };
}
