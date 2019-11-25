# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports =
    [ <nixpkgs/nixos/modules/profiles/qemu-guest.nix>
    ];

  boot.initrd.availableKernelModules = [ "uhci_hcd" "ehci_pci" "ahci" "virtio_pci" "virtio_blk" ];
  boot.kernelModules = [ ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "zroot/nixos";
      fsType = "zfs";
    };

  fileSystems."/nix" =
    { device = "zroot/nixos/store";
      fsType = "zfs";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/c3d356e1-c23c-4492-9093-6c799dd8c3fa";
      fsType = "ext4";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/6df4f83d-2cf4-4342-b420-2d6df557f9e2"; }
    ];

  nix.maxJobs = lib.mkDefault 4;
}
