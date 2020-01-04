{ pkgs ? import <nixpkgs> {} }:
pkgs.stdenv.mkDerivation {
  name = "data";
  buildInputs = with pkgs; [ R ];
}

