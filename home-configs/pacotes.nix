{ pkgs, ... }:

{
	home.packages = with pkgs; [
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
		linuxKernel.packages.linux_6_14.xpadneo
		r2modman
#		kdePackages.kgpg
	];
}
