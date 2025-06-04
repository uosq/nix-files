{ config, pkgs, ... }:

{
	# não esquecer de usar "passwd" depois se precisar
	users.users.tevin = {
		isNormalUser = true;
		description = "tevin";
		extraGroups = [ "networkmanager" "wheel" ];
		packages = with pkgs; [];
	};
}
