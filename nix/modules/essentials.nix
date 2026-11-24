{ pkgs, ... }:

{
  home.packages = with pkgs; [
    discord
    spotify
    bitwarden-desktop
    mediawriter
    fastfetch
  ];

  services.flatpak.remotes = [
    {
      name = "flathub";
      location = "https://dl.flathub.org/repo/flathub.flatpakrepo";
    }
  ];

  services.flatpak.packages = [
    "com.obsproject.Studio"
    "app.zen_browser.zen"
  ];
}
