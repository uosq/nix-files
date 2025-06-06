{ configs, pkgs, ... }:

{
	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;
	boot.initrd.luks.devices."luks-2e7c6ad6-a65f-425b-937b-0c280fe7dfd6".device = "/dev/disk/by-uuid/2e7c6ad6-a65f-425b-937b-0c280fe7dfd6";
	boot.extraModprobeConfig = ''
		options nvidia NVreg_PreserveVideoMemoryAllocations=1
	'';
}
