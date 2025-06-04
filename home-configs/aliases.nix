{ config, pkgs, ... }:

{
	home.shellAliases = {
		yt = "/home/tevin/hd/Scripts/download";
		comprimir = "/home/tevin/hd/Scripts/comprimir_video";
		tirar_lixo = "nix-store --gc";
		atualizar_sistema = "sudo nixos-rebuild switch";
	};
}
