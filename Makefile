all: _zsh _hypr _nvim _rofi

_hyprland:
	-mkdir ~/.config/hypr/
	-ln -s ./hypr/hyprland.conf ~/.config/hypr/

_hyprlock:
	-mkdir ~/.config/hypr/
	-ln -s ./hypr/hyprlock.conf ~/.config/hypr/

_hyprpaper:
	-mkdir ~/.config/hypr/
	-ln -s ./hypr/hyprpaper.conf ~/.config/hypr/

_hypr: _hyprland _hyprpaper _hyprlock
	echo "Hypr configs"

_nvim:
	-ln -s ~/Configs/nvim/ ~/.config/

_rofi:
	-ln -s ~/Configs/rofi/ ~/.config/

_zsh:
	-ln -s ~/Configs/.zshrc ~/.zshrc
