{ pkgs ? import <nixpkgs> {} }:
pkgs.stdenv.mkDerivation {
  name = "data";
  buildInputs = with pkgs; [ 
    (rWrapper.override { packages = with rPackages; [ blogdown tidyverse ]; })
    hugo
    pandoc 
    nodejs
  ];
}

