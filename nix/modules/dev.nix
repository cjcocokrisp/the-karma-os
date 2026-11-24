{ pkgs, ... }:

{
  home.packages = with pkgs; [
    neovim
    vim
    tmux
    btop
    go
  ];

  programs.git = {
    enable = true;
    
    settings.user = {
      name = "Christopher Coco";
      email = "chriscoco1205@gmail.com";
    };

    settings.core.editor = "vim";
    
    settings.signing.format = "ssh";
  };
}

