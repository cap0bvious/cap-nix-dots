{ config, pkgs, ... }:

{
    home = {
        stateVersion = "24.11";
        packages = [
            firefox
        ];
    };
    programs.git = {
        enable = true;
        config.user = {
            name = "cap0bvious";
            email = "kap0bvious22@gmail.com";
        };
    };
}