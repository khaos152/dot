# sway dotfiles
Installation
---------------------------------------------------

dependencies:
```
pacman -S sway swaybg swayidle swaylock waybar wl-clipboard pamixer playerctl noto-fonts-emoji --needed
```

suggested:
```
pacman -S xorg-xwayland nvim qutebrowser rofi freetube mpv streamlink keepassxc sddm imagemagick--needed
```

dotfiles:
```
git clone https://github.com/khaos152/dot.git ~/Downloads/.
cp -r -n ~/Downloads/dot/.config/* ~/.config/.
```

sddm theme:
```
git clone https://github.com/aczw/sddm-theme-corners.git ~/Downloads/.
sed -i 's/Background=*/Background="\/usr\/share\/backgrounds\/background-blur.jpg" #/g' ~/Downloads/sddm-theme-corners/theme.conf
cp -r ~/Downloads/sddm-theme-corners/corners /usr/share/sddm/themes/.
mkdir /etc/sddm.conf.d/
cp /usr/lib/sddm/sddm.conf.d/default.conf /etc/sddm.conf.d/default.conf
sed -i 's/Current=/Current=corners/g'
```

bin files:
```
chmod +x ~/Downloads/dot/bin/*
cp -r -n ~/Downloads/dot/bin/* /bin/.
```

set a wallpaper:
```
background *location of your preferred background*
```

set a profile picture:
```
face *location of your preferred profile picture*
```
