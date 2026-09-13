{ config, pkgs, ... }:

{
    home.stateVersion = "26.05";
    programs.firefox.enable = true;
    programs.git = {
        enable = true;
    };
}