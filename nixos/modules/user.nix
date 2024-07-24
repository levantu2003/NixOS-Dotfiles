{ pkgs, ... }: {
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;

    users.kaiser = {
      isNormalUser = true;
      description = "Kaiser";
      extraGroups = [ "networkmanager" "wheel" "input" "libvirtd" ];
      packages = with pkgs; [];
    };
  };

  # Enable automatic login for the user.
  services.getty.autologinUser = "kaiser";
}
