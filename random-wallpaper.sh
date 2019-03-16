#!/bin/bash --norc
# Comando de papel de parede aleatório universal, super simples. Random Wallpaper Easy.
# Licença GPLv2 
# Mantenedor Felipe Facundes 
# e-mail: felipe.facundes@gmail.com

# Sinal 'kill' recebido
#trap "break ; exit" 1 2 3 15

# Defina um tempo mínimo de 15 segundos, antes de executar o script. Isso evita e corrige erros.
sleep 15

# Diretório da sua preferência
DIR=/home/rfacundes/Imagens/Tudo/wallpapers/jpg/

# O padrão: -name "*[jJpP][nNpP][gG]" serve para pesquisar jpg e png. Mude para "-type f" caso queira qualquer tipo arquivo.
while true;
# Mude para o comando correspondente listado abaixo, conforme à sua área de trabalho: MATE, LXDE, Fluxbox e etc...
do bash -c 'gsettings set org.mate.background picture-filename "$(find $DIR -name "*[jJpP][nNpP][gG]" | shuf -n1)"';
# Atualizando tela:
xrefresh
# Mude para o tempo que você quiser
sleep 15
done;

# Para MATE Desktop
# gsettings set org.mate.background picture-filename

# Para GNOME
# gsettings set org.gnome.desktop.background picture-uri

# Para LXDE Desktop
# pcmanfm -w

# Para fluxbox
# fbsetbg -a

# Para NITROGEN
# nitrogen --set-zoom-fill

# Para png e jpg
# *[jJpP][nNpP][gG]
