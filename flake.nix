{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.tabbed = nixpkgs.legacyPackages.x86_64-linux.callPackage(
      { lib, stdenv, fetchgit, xorgproto, libX11, libXft }:
        stdenv.mkDerivation {
          pname = "tabbed";
          version = "unstable-2018-03-10";
        
          src = ./.;
        
          buildInputs = [ xorgproto libX11 libXft ];
        
          makeFlags = [ "CC:=$(CC)" ];
        
          installFlags = [ "PREFIX=$(out)" ];
        }
    ) {};

    packages.x86_64-linux.default = self.packages.x86_64-linux.tabbed;

  };
}
