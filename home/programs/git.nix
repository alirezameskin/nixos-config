{
  programs.git = {
    enable = true;

    userName  = "Alireza Meskin";
    userEmail = "alireza.meskin@gmail.com";

    extraConfig = {
      core = {
        editor = "vim";
      };

      github = {
        token = "";
      };

      merge.tool = "vimdiff";
      pull.ff = "only";
    };
  };
}
