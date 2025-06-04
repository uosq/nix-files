{ config, pkgs, ...}:

{
	home.file.".config/alacritty/alacritty.toml".text = ''
		[window]
		opacity = 0.7
		blur = true
	'';
}
