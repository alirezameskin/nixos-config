{ pkgs, lib, config, ... }:
let
  fzfConfig = ''
    set -x FZF_DEFAULT_OPTS "--preview='bat {} --color=always'" \n
    set -x SKIM_DEFAULT_COMMAND "rg --files || fd || find ."
  '';

  bobthefish = {
    name = "bobthefish";
    src = pkgs.fetchFromGitHub {
      owner = "oh-my-fish";
      repo = "theme-bobthefish";
      rev = "df13338";
      sha256 = "1nyh85ji75j3a23czbaaf9s66dpfhfd9in5b6s5baispi2qfwdh2";
    };
  };
       
  themeConfig = ''
    set -g theme_display_date no
    set -g theme_nerd_fonts yes
    set -g theme_display_git_master_branch no
    set -g theme_nerd_fonts yes
    set -g theme_newline_cursor yes
    set -g theme_color_scheme solarized
  '';

  javaEnvVars = ''
    set -g JAVA_HOME ${pkgs.jdk11}/lib/openjdk
  '';
in
{
  programs.fish = {
    enable = true;
    plugins = [ bobthefish ];

    shellInit = themeConfig + fzfConfig + javaEnvVars;

    shellAliases = {
      k  = "kubectl";
      ll = "ls -a";
      azure_login = "az login && az acr login --name midocker && az acr login --name midockerlegacy";
    };
  };

  xdg.configFile."fish/conf.d/plugin-bobthefish.fish".text = lib.mkAfter ''
    for f in $plugin_dir/*.fish
      source $f
    end
  '';

}
