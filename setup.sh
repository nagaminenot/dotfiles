#!/bin/bash

# Pacman -S

sudo pacman -S $(cat pkglist_pacman.txt)
yaourt -S $(cat pkglist_yaourt.txt)

# 壁紙を取得・設定
wget https://i.redd.it/80lmd34d9anz.jpg -P ./images/
nitrogen $HOME/dotfiles/images/

# 連想配列の宣言
declare -A FILES;
# ファイル名:パス名
FILES=(
  ["dot.bashrc"]="${HOME}/.bashrc"
  ["dot.bash_profile"]="${HOME}/.bash_profile"
  ["dot.xprofile"]="${HOME}/.xprofile"
  ["dot.xinitrc"]="${HOME}/.xinitrc"
  ["dot.Xresources"]="${HOME}/.Xresources"
  ["dot.xmobarrc"]="${HOME}/.xmobarrc"
  ["dot.xscreensaver"]="${HOME}/.xscreensaver"
  ["config.fish"]="${HOME}/.config/fish/config.fish"
  ["xmonad.hs"]="${HOME}/.xmonad/xmonad.hs"
  ["terminator_config"]="${HOME}/.config/terminator/config"
)
# 連想配列のループ
for FILE in ${!FILES[@]};
do
    echo ${FILES[$FILE]}
    ln -nfsv $HOME/dotfiles/$FILE ${FILES[$FILE]}
done
exit 0
