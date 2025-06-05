{ config, pkgs, ... }:

{
	services.mpd = {
		enable = true;
		musicDirectory = "/home/tevin/hd/Musica";
		extraConfig = ''
			audio_output {
				type "pipewire"
				name "pipewire output"
			}
		'';
	};

	services.mpd-mpris.enable = true;
	programs.ncmpcpp.enable = true;
}
