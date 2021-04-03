nixos-config
==========

My NixOS Configuration.


# System configuration

```shell
sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixos

sudo cp system/configuration.nix /etc/nixos/configuration.nix
sudo cp system/machines/totoro.nix /etc/nixos/system.nix

sudo nixos-rebuild  switch --upgrade
```


# Home Manager

```shell
mkdir -p $HOME/.config/nixpkgs/

cp -r home/* $HOME/.config/nixpkgs/

nix-channel --add https://github.com/rycee/home-manager/archive/master.tar.gz home-manager
nix-channel --update

export NIX_PATH=$HOME/.nix-defexpr/channels${NIX_PATH:+:}$NIX_PATH

nix-shell '<home-manager>' -A install

home-manager switch

```
