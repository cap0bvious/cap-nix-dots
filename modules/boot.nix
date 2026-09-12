{ pkgs, ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "nixos";

  networking.networkmanager.enable = true;

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = false;
  };

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
}