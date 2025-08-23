
{pkgs, ...}:
{
  home.packages = with pkgs; [
    discord
    gimp
  ];

  programs.zed-editor = {
     enable = true;
     extensions = [
       "nix"
       "toml"
     ];
     userSettings = {
       theme = {
         mode = "dark";
         light = "One Light";
         dark = "One Dark";
       };
       vim_mode = true;
       buffer_font_family = "HackGen Console NF";
     };
   };
}
