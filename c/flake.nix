{
  description = "C flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
	pkgs = nixpkgs.legacyPackages.${system};
      in
      {
	devShells.default = pkgs.mkShell {
	  packages = with pkgs; [
	    gcc
	    gnumake
	    git
	  ];
	};
      };
    }
  );
}

