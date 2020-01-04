{ pkgs ? import <nixpkgs> {} }:
pkgs.stdenv.mkDerivation {
  name = "data";
  buildInputs = with pkgs; [ 
    (rWrapper.override { packages = with rPackages; [ blogdown ]; })
    hugo
    pandoc 
    nodejs
  ];
}

