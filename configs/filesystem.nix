{ config, pkgs, ... }:

{
	fileSystems."/home/tevin/hd" = {
		device = "/dev/disk/by-uuid/8a3f4f71-8a10-4611-8746-56f6616468d6";
		fsType = "xfs";
	};
}
