{ config, pkgs, ... }:

{
	# Enable the X11 windowing system.
	# You can disable this if you're only using the Wayland session.
	services.xserver.enable = true;

	# Enable the KDE Plasma Desktop Environment.
	services.displayManager.sddm.enable = true;
	services.desktopManager.plasma6.enable = true;

	# fazer ums progrmas não serem instalados
	environment.plasma6.excludePackages = with pkgs.kdePackages; [
		plasma-browser-integration
		kdepim-runtime
		konsole
		oxygen
		elisa
	];
}
