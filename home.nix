{ config, pkgs, lib, ... }:

let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/release-25.05.tar.gz";
in
{
  imports =
    [
      (import "${home-manager}/nixos")
    ];

  users.users.tevin.isNormalUser = true;
  home-manager.users.tevin = { pkgs, ... }: {

    imports = [
      ./home-configs/fastfetch.nix
      ./home-configs/mpd.nix
      ./home-configs/alacritty.nix
      ./home-configs/aliases.nix
      ./home-configs/pacotes.nix
    ];

    programs.bash.enable = true;
    programs.firefox.enable = true;
  
    # The state version is required and should stay at the version you
    # originally installed.
    home.stateVersion = "25.05";
  };
}
