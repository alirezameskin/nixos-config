{ config, pkgs, ... }:

let
  gnomePkgs = (pkgs.callPackage ./programs/gnome.nix {}).gnomePkgs;

  k8sPkgs = with pkgs; [
    stern
    kubectl
  ];

  editrPkgs = with pkgs; [
    #jetbrains.idea-community
    jetbrains.idea-ultimate
  ];


  defaultPkgs = with pkgs; [
    unzip
    wget
    whois
    youtube-dl
    terminator
    tree
    tig
    htop
    jq
    ripgrep
    docker-compose
    insomnia
    git-doc
    zktree

    bitwarden

    keybase
    keybase-gui

    typora
    okular
    libreoffice
  ];

  javaPkgs = with pkgs; [
    jdk11
    maven
    sbt
  ];

  workPkgs = with pkgs; [
    google-chrome
    teams
    zoom-us
    ffmpeg
    imagemagick
    mattermost-desktop
    kubernetes-helm
    azure-cli
  ];

  customs = [
    (pkgs.callPackage ./customs/kubernetes-helm2.nix { inherit config pkgs; })
    (pkgs.callPackage ./customs/kns.nix { inherit config pkgs; })
    (pkgs.callPackage ./customs/ktx.nix { inherit config pkgs; })
  ];

in
{

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.username = "alireza";
  home.homeDirectory = "/home/alireza";
  home.stateVersion = "20.09";

  home.packages = defaultPkgs ++ editrPkgs ++ gnomePkgs ++ k8sPkgs ++ javaPkgs ++ workPkgs ++ customs;

  home.sessionVariables = {
    EDITOR = "vim";
  };


  imports = [
    ./programs/dconf.nix
    ./programs/firefox.nix
    ./programs/git.nix
    ./programs/fish.nix
    ./programs/vscode.nix
    ./programs/vim.nix
    ./programs/terminator.nix
  ];

  programs = {
    gnome-terminal = {
      enable = false;
    };

    ssh = {
      enable = true;
    };
  };

  programs.fzf = {
    enable = true;
    enableBashIntegration = true;
    defaultCommand = "${pkgs.ripgrep}/bin/rg --files";
  };

}
