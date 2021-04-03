{pkgs, ...}:
let
  vimConfig = ''
    set expandtab
    set tabstop=2

    map <C-n> :NERDTreeToggle<CR> #NERD tree
  '';
in
{
  programs.vim = {
    enable = true;

    settings = {
      #relativenumber = true;
      number = true;
      expandtab = true;
    };

    plugins = with pkgs.vimPlugins; [
      The_NERD_tree
      fugitive
      vim-gitgutter
      vim-nix
      vim-scala
    ];

    extraConfig = vimConfig;
  };
}
