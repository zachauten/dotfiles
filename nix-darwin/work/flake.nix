# Install the vanilla upstream nix with the determinate systems installer: https://github.com/nix-darwin/nix-darwin
# Install home manager: https://nix-community.github.io/home-manager/index.xhtml
{
  description = "Example nix-darwin system flake";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:nix-darwin/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    typespec-fix.url = "github:NixOS/nixpkgs/829f8bb29dad98a6af914cd3182bcd6dd4e1f1cd";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, home-manager, nixpkgs, typespec-fix }:
  let
    configuration = { pkgs, ... }:

     let
       pkgs-typespec-fix = import typespec-fix {
         system = pkgs.system;
       };
     in
     {
       # List packages installed in system profile. To search by name, run:
       # $ nix-env -qaP | grep wget
       environment.systemPackages = with pkgs;
         [
           vim
           neovim
           git
           tree
           docker
           gnupg
           gh
           mysql84
           dprint
           awscli2
           jq
           pinentry-tty
           jupyter
           pkgs-typespec-fix.typespec
 
           # Languages
           deno
           maven
           python313
           nodejs_20
         ];
       environment.variables = { 
         JAVA_HOME = "${pkgs.openjdk}";
       };
       # nix-darwin conflicts with the determinate systems nix
       nix.enable = false;
 
       # Necessary for using flakes on this system.
       nix.settings.experimental-features = "nix-command flakes";
 
       # Enable alternative shell support in nix-darwin.
       # programs.fish.enable = true;
 
       # Set Git commit hash for darwin-version.
       system.configurationRevision = self.rev or self.dirtyRev or null;
 
       # Used for backwards compatibility, please read the changelog before changing.
       # $ darwin-rebuild changelog
       system.stateVersion = 5;

       nixpkgs.hostPlatform = "aarch64-darwin";
     };
  in
  {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#zauten-mac
    darwinConfigurations."zauten-mac" = nix-darwin.lib.darwinSystem {
      modules = [
        configuration
      ];
    };
  };
}
