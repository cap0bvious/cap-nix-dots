{ pkgs, ... }:

{
    programs.fish = {
        enable = true;
        loginShellInit = ''
        if status is-login
            if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
            exec start-hyprland
            end
        end
        '';
        interactiveShellInit = ''
        set fish_greeting # Disable greeting
        '';
    };
    users.extraUsers."capobvious" = {
        shell = pkgs.fish;
    };
}