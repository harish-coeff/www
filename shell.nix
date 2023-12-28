{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.rustc
    pkgs.cargo
    pkgs.zola
  ];

  shellHook = ''
    # Any additional shell setup can go here
  '';
}
