{ config, ... }:

{
  xdg.userDirs = {
    enable = true;
    createDirectories = true;

    desktop = "${config.home.homeDirectory}/Área de Trabalho";
    documents = "${config.home.homeDirectory}/Documentos";
    download = "${config.home.homeDirectory}/Downloads";
    music = "${config.home.homeDirectory}/Música";
    pictures = "${config.home.homeDirectory}/Imagens";
    videos = "${config.home.homeDirectory}/Vídeos";
    templates = "${config.home.homeDirectory}/Modelos";
    publicShare = "${config.home.homeDirectory}/Público";
  };
}
