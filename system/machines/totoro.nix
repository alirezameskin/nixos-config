{ config, pkgs, ... }:

{

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub.device = "/dev/nvme0n1p3";

  networking = {

  	hostName = "totoro";
  	#wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  	useDHCP = false;
    interfaces.enp0s31f6.useDHCP = true;
    interfaces.wlp3s0.useDHCP = true;
    interfaces.wwp0s20f0u6.useDHCP = true;
    networkmanager = { enable = true; };

    # Configure network proxy if necessary
    # proxy.default = "http://localhost:8080/";
    # proxy.noProxy = "127.0.0.1,localhost,internal.domain";

    # Open ports in the firewall.
    # firewall.allowedTCPPorts = [ ... ];
    # firewall.allowedUDPPorts = [ ... ];
    # Or disable the firewall altogether.
    # firewall.enable = false;
  };

}
