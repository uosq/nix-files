{ config, pkgs, 	inputs, ... }:

{
	# Enable the X11 windowing system.
	# You can disable this if you're only using the Wayland session.
	config.services.xserver.enable = true;

	# Enable the KDE Plasma Desktop Environment.
	config.services.displayManager.sddm.enable = true;
	config.services.desktopManager.plasma6.enable = true;

	# fazer ums progrmas não serem instalados
	config.environment.plasma6.excludePackages = with pkgs.kdePackages; [
		plasma-browser-integration
		kdepim-runtime
		konsole
		oxygen
		elisa
		kate
		kwrited
	];

	# tema nórdico
	config.environment.systemPackages = [
		pkgs.nordic
		pkgs.papirus-nord
	];
}
