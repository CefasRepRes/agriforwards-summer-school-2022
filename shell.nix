let
  pkgs = import <nixpkgs> {};
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    pandoc
    texlive.combined.scheme-full
    python39Packages.grip
  ];
}
