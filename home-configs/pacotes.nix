{ config, pkgs, ... }:

{
	home.packages = with pkgs; [
		kdePackages.kate
		fastfetch
		alacritty
		prismlauncher
		equibop
		mpv
		yt-dlp
		ffmpeg-full
		steamtinkerlaunch
		desktop-file-utils
		libreoffice-qt-fresh
		kde-rounded-corners
		git
		pkgs.linuxKernel.packages.linux_6_14.xpadneo
	];
}
