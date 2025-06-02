{ config, pkgs, lib, ... }:

let
  home-manager = builtins.fetchTarball https://github.com/nix-community/home-manager/archive/release-25.05.tar.gz;
in
{
  imports =
    [
      (import "${home-manager}/nixos")
    ];

  users.users.tevin.isNormalUser = true;
  home-manager.users.tevin = { pkgs, ... }: {
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
    ];

    home.shellAliases = {
      yt = "/home/tevin/hd/Scripts/download";
      comprimir = "/home/tevin/hd/Scripts/comprimir_video";
      tirar_lixo = "nix-store --gc";
      atualizar_sistema = "sudo nixos-rebuild switch";
    };

    # mpd
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

    programs.bash.enable = true;
    programs.firefox.enable = true;
    programs.ncmpcpp.enable = true;
  
    # The state version is required and should stay at the version you
    # originally installed.
    home.stateVersion = "25.05";
  };
}
