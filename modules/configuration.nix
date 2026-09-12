{ config, pkgs, ... }:

{
    imports =
        [
            ./hardware/hardware-configuration.nix
            ./boot.nix
            ./locale.nix
            ./services.nix
            ./shell.nix
            ./systemPackages.nix
            ./user.nix
        ];
        
    system.stateVersion = "26.05";
}
