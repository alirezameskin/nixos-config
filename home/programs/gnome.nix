{ pkgs }:
{
  gnomePkgs = with pkgs; [
      # gnome3 apps
      gnome3.eog    # image viewer
      gnome3.evince # pdf reader

      gnome3.gnome-tweak-tool

      gnomeExtensions.clipboard-indicator
      gnomeExtensions.sound-output-device-chooser
      gnomeExtensions.dash-to-dock
    ];
}
