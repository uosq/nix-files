# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
	imports =
	[ # Include the results of the hardware scan.
	./hardware-configuration.nix
	./configs/boot.nix
	./configs/kernel.nix
	./configs/filesystem.nix
	./configs/network.nix
	./configs/localizacao.nix
	./configs/bluetooth.nix
	./configs/steam.nix
	./configs/nvidia.nix
	./configs/kde.nix
	./configs/cups.nix
	./configs/pipewire.nix
	./configs/teclado.nix
	./configs/usuarios.nix
	./configs/nano.nix

	# This includes the Lix NixOS module in your configuration along with the
	# matching version of Lix itself.

	# The sha256 hashes were obtained with the following command in Lix (n.b.
	# this relies on --unpack, which is only in Lix and CppNix > 2.18):
	# nix store prefetch-file --name source --unpack https://git.lix.systems/lix-project/lix/archive/2.93.0.tar.gz

	# Note that the tag (e.g. 2.93.0) in the URL here is what determines
	# which version of Lix you'll wind up with.
	(let
	module = fetchTarball {
        	name = "source";
		url = "https://git.lix.systems/lix-project/nixos-module/archive/2.93.0.tar.gz";
		sha256 = "sha256-11R4K3iAx4tLXjUs+hQ5K90JwDABD/XHhsM9nkeS5N8=";
	};
	lixSrc = fetchTarball {
		name = "source";
		url = "https://git.lix.systems/lix-project/lix/archive/2.93.0.tar.gz";
		sha256 = "sha256-hsFe4Tsqqg4l+FfQWphDtjC79WzNCZbEFhHI8j2KJzw=";
	};

	in import "${module}/module.nix" { lix = lixSrc; }
	)
	];

	nix.gc.automatic = true;
	nix.gc.dates = "13:00";

	# Allow unfree packages
	nixpkgs.config.allowUnfree = true;

	nix.settings.experimental-features = [ "nix-command" "flakes" ];

	environment.systemPackages = with pkgs; [
		git
		vim
		wget
	];

	environment.variables.EDITOR = "nano";

	# perfeitamente normal deixar 25.05
	system.stateVersion = "25.05";
}
