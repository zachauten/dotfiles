{
  description = "Basic Nix Flake for macOS with a GUI app and dev shell config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";  # You can use other versions as needed
  };

  outputs = { nixpkgs, ... }: let
    pkgs = import nixpkgs {
      system = "x86_64-darwin";
    };
  in {

    devShells.x86_64-darwin.default = pkgs.mkShell {
      buildInputs = [
        pkgs.git
        pkgs.docker
        pkgs.gnupg
        pkgs.gh

        # Languages
        pkgs.deno
        pkgs.jdk
        pkgs.maven
      ];
    };
  };
}
