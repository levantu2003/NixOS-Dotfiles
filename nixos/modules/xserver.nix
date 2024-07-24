{
  services.xserver = {
    enable = true;
    windowManager.herbstluftwm.enable = true;
    
    displayManager= {
      sddm.enable = true;
      autoLogin.enable = true;
      autoLogin.user = "yourusername";
    };

    xkb.layout = "us";
    xkb.variant = "";

    videoDrivers = [ "amdgpu" ];
    deviceSection = ''Option "TearFree" "True"'';
    #displayManager.gdm.enable = true;
    #desktopManager.gnome.enable = true;
  };
  services.libinput = {
    touchpad.accelProfile = "flat";
    mouse.accelProfile = "flat";
    enable = true;
  };
}
