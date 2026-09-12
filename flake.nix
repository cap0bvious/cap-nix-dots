{
    description = "Basis for a dendritic Nix flake";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        noctalia = {
            url = "github:noctalia-dev/noctalia";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = inputs@{ self, nixpkgs, home-manager, ... }: {
        nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
            specialArgs = { inherit inputs; };
            modules = [
                ./modules/configuration.nix

                ./modules/home/noctalia.nix

                home-manager.nixosModules.home-manager {
                    home-manager = {
                        useGlobalPkgs = true;
                        useUserPackages = true;
                        users.capobvious = {
                            imports = [
                                ./modules/home/home.nix
                            ];
                        };
                    };
                };
            ];
        };
    };
}