{ config, pkgs, ... }:

{
    home.stateVersion = "26.05";
    programs.firefox.enable = true;
    programs.git = {
        enable = true;
        config.user = {
            name = "cap0bvious";
            email = "kap0bvious22@gmail.com";
        };
    };
}