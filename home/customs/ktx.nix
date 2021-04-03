{
  pkgs ? import <nixpkgs> {},
  ...
}:

pkgs.stdenv.mkDerivation rec {
  name = "ktx";

  src = builtins.fetchGit {
    url = "https://github.com/blendle/kns.git";
  };

  installPhase = ''
    mkdir -p $out/bin
    cp $src/bin/ktx $out/bin/ktx
    chmod +x $out/bin/ktx
  '';
}
