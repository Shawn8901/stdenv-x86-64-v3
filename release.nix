{
  nixpkgs ? <nixpkgs>,
}:

let
  pkgs = import nixpkgs {
    localSystem = {
      system = "x86_64-linux";
      gcc.arch = "x86-64-v3";
    };
  };
in
{
  stdenv = pkgs.stdenv;
}
