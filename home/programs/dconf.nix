{ lib, ... }:

let
  mkTuple = lib.hm.gvariant.mkTuple;
in
{
  dconf.settings = {

  "org/gnome/clocks/state/window" = {
    panel-id="world";
    size="(870, 690)";
    state="87168";
  };


  "org/gnome/desktop/background" = {
    picture-options="zoom";
  };

  "org/gnome/desktop/calendar" = {
    show-weekdate=false;
  };

  "org/gnome/desktop/input-sources" = {
    current="uint32 0";
    "sources" = [ (mkTuple [ "xkb" "us" ]) (mkTuple [ "xkb" "ir" ]) ];
    xkb-options=[ "lv3:ralt_switch" ];
  };

  "org/gnome/desktop/interface" = {
    clock-show-seconds=false;
    clock-show-weekday=true;
    enable-hot-corners=true;
    gtk-im-module="gtk-im-context-simple";
    gtk-theme="Adwaita-dark";
    icon-theme="Adwaita";
    toolkit-accessibility=false;
  };


  "org/gnome/mutter" = {
    attach-modal-dialogs=true;
    center-new-windows=false;
    dynamic-workspaces=true;
    edge-tiling=true;
    focus-change-on-pointer-rest=true;
    workspaces-only-on-primary=true;
  };

  "org/gnome/nm-applet/eap/b9a762e6-e178-4b5a-a82f-90dd322fb45a" = {
    ignore-ca-cert=false;
    ignore-phase2-ca-cert=false;
  };

  "org/gnome/settings-daemon/plugins/color" = {
    night-light-last-coordinates="(52.549198560115187, 13.3878)";
  };

  "org/gnome/settings-daemon/plugins/power" = {
    sleep-inactive-ac-type="nothing";
  };

  "org/gnome/settings-daemon/plugins/xsettings" = {
    antialiasing="grayscale";
    hinting="slight";
  };



  "org/gnome/shell/extensions/dash-to-dock" = {
    apply-custom-theme=false;
    custom-background-color=false;
    custom-theme-shrink=false;
    dash-max-icon-size=24;
    dock-position="BOTTOM";
    extend-height=true;
    height-fraction=0.5;
    icon-size-fixed=true;
    multi-monitor=true;
    preferred-monitor=0;
    running-indicator-style="DEFAULT";
    transparency-mode="DYNAMIC";
  };

  "org/gnome/clocks" = {
  world-clocks="@aa{sv} []";
  };

  "org/gnome/shell/world-clocks" = {
  locations="@av []";
  };

  "org/gnome/software" = {
    check-timestamp="int64 1603865887";
  };

  "org/gnome/terminal/legacy" = {
    #theme-variant = "dark";
  };

    "system/locale" = {
      region = "en_US.UTF-8";
    };

    "org/gnome/system/location" = {
      enabled = false;
    };

    "org/gnome/shell/extensions/desktop-icons" = {
      show-home = false;
      show-trash = false;
    };

    "org/gnome/shell/app-switcher" = {
      current-workspace-only = true;
    };

    "org/gnome/shell" = {
      app-picker-view     = "uint32 0";
      command-history     = [ "gnome-tweaks" ];
      disabled-extensions = [ "launch-new-instance@gnome-shell-extensions.gcampax.github.com" "windowsNavigator@gnome-shell-extensions.gcampax.github.com" "auto-move-windows@gnome-shell-extensions.gcampax.github.com" "apps-menu@gnome-shell-extensions.gcampax.github.com"];
      enabled-extensions  = ["dash-to-dock@micxgx.gmail.com" "workspace-indicator@gnome-shell-extensions.gcampax.github.com" "clipboard-indicator@tudmotu.com" "sound-output-device-chooser@kgshank.net" ];
      favorite-apps       = [ "terminator.desktop" "firefox.desktop" "idea-community.desktop" "org.gnome.Nautilus.desktop" "insomnia.desktop" "idea-ultimate.desktop" "Mattermost.desktop" ];
    };
  };
}
