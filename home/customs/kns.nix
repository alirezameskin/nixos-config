{
  pkgs ? import <nixpkgs> {},
  ...
}:

pkgs.stdenv.mkDerivation rec {
  name = "kns";

  src = builtins.fetchGit {
    url = "https://github.com/blendle/kns.git";
  };

  installPhase = ''
    mkdir -p $out/bin
    cp $src/bin/kns $out/bin/kns
    chmod +x $out/bin/kns
  '';
}
