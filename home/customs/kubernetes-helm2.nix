{
  pkgs ? import <nixpkgs> {},
  ...
}:

pkgs.stdenv.mkDerivation rec {
  pname = "helm2";
  version = "2.17.0";

  src = builtins.fetchTarball {
    url = "https://get.helm.sh/helm-v2.17.0-linux-amd64.tar.gz";
    sha256 = "13i29mrhw7vhy1mq08khrcqdzyspic5cabz7h7d2nc2pgxjapf4z";
  };

  installPhase = ''
    mkdir -p $out/bin
    cp $src/helm $out/bin/helm2
    chmod +x $out/bin/helm2

    cp $src/tiller $out/bin/tiller
    chmod +x $out/bin/tiller
  '';

}
