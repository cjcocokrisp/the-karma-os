{ pkgs, ... }:

{
  home.packages = with pkgs; [
    discord
    spotify
    bitwarden-desktop
    mediawriter
    fastfetch
  ];
}
