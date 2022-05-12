# Based on https://churchman.nl/tag/r/ and allowing install.packages()
with import <nixpkgs> {};
let
  R-with-my-packages = rWrapper.override {
    packages = with rPackages; [
      here
      sf
      tidyverse
    ];
  };
in
pkgs.mkShell {
  buildInputs = [
    R-with-my-packages
    pandoc
    zip
    unzip
  ];
  shellHook = ''
    mkdir -p "$(pwd)/_libs"
    export R_LIBS_USER="$(pwd)/_libs"
    '';
}
