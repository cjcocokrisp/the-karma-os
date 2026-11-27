{ pkgs, ... }:

{
  home.packages = with pkgs; [
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
    "com.discordapp.Discord"
    "com.obsproject.Studio"
    "app.zen_browser.zen"
  ];

  fonts.fontconfig = {
    enable = true;
    defaultFonts = {
      emoji = [ "Noto Color Emoji" ];
    };
  };
}
