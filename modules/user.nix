{ pkgs, ... }:

{
    users.users."capobvious" = {
        isNormalUser = true;
        description = "capobvious";
        extraGroups = [ "networkmanager" "wheel" ];
        packages = with pkgs; [];
    };
}