{ lib, ... }:

{
  services = {
    blueman.enable = true;
    pipewire.enable = true;
    power-profiles-daemon.enable = true;
    upower.enable = true;
    udisks2.enable = true;
    gvfs.enable = true;
    xserver.xkb = {
      layout = "us";
      variant = "";
    };
    getty.autologinUser = "capobvious";
  };
}