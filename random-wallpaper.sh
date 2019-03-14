#!/bin/bash --norc
# Comando de papel de parede aleatório universal, super simples. Random Wallpaper Easy.
# Licença GPLv2 
# Mantenedor Felipe Facundes 
# e-mail: felipe.facundes@gmail.com

# Sinal 'kill' recebido
trap "break ; exit" 1 2 3 15

# Após o comando: "find" troque o diretório da "pasta" dos papéis de parede, para o seu diretório correspondente
while true;
# Mude para o comando correspondente listado abaixo, conforme à sua área de trabalho: MATE, LXDE, Fluxbox e etc...
do bash -c 'gsettings set org.mate.background picture-filename "$(find $HOME/Imagens/Tudo/wallpapers/jpg/ -type f | shuf -n1)"';
# Atualizando tela:
xrefresh || :
# Mude para o tempo que você quiser
sleep 15
done;

# Para MATE Desktop
# gsettings set org.mate.background picture-filename

# Para LXDE Desktop
# pcmanfm -w

# Para fluxbox
# fbsetbg -a

# Para NITROGEN
# nitrogen --set-zoom-fill

# Para FEH
# feh --bg-scale

# Para png e jpg
# *.[jJpP][nNpP][gG]
