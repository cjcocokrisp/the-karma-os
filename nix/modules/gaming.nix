{ pkgs, ... }:

{
  home.packages = with pkgs; [
    steam
    retroarch
    prismlauncher
    protonup-qt
  ];
}
