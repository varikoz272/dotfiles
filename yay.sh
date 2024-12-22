yay -S scrcpy a2ln heroic-games-launcher itch-bin otf-comicshanns-nerd sdl2 clutter glew haguichi spoofdpi hyprpaper waybar hyprlock wofi openssl-1.0 hyprshot lib32-openssl-1.0 ttf-times-new-roman waydroid
sudo systemctl enable --now waydroid-container
cd ~
git clone https://github.com/choff/anbox-modules.git
cd anbox-modules
./INSTALL
cd ~
