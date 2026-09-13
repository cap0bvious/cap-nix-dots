{ pkgs, ... }:
{
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    nixpkgs.config.allowUnfree = true;

    environment.systemPackages = with pkgs; [
        neovim
        wget
        home-manager
    ];

    fonts.packages = with pkgs; [
    nerd-fonts.fira-code
    font-awesome
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
    ];

    programs.hyprland.enable = true;
}