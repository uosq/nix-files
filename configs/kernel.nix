{ config, pkgs, ...}:

{
	# kernel 6.14
	boot.kernelPackages = pkgs.linuxPackages_6_14;
}
