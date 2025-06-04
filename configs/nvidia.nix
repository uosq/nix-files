{ config, pkgs, ... }:

{
	hardware = {
		graphics.enable = true;

		nvidia = {
			modesetting.enable = true;
			nvidiaSettings = true;
			open = false;

			powerManagement = {
				enable = false;
				finegrained = false;
			};

			package = config.boot.kernelPackages.nvidiaPackages.latest;
		};
	};

	services.xserver.videoDrivers = [ "nvidia" ];
}
