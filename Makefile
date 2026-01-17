all: _zsh _hypr _nvim _rofi _sway _waybar

_hyprland:
	-mkdir ~/.config/hypr/
	-ln -s $(shell pwd)/hypr/hyprland.conf ~/.config/hypr/

_hyprlock:
	-mkdir ~/.config/hypr/
	-ln -s $(shell pwd)/hypr/hyprlock.conf ~/.config/hypr/

_hyprpaper:
	-mkdir ~/.config/hypr/
	-ln -s $(shell pwd)/hypr/hyprpaper.conf ~/.config/hypr/

_hypr: _hyprland _hyprpaper _hyprlock
	echo "Hypr configs"

_nvim:
	-ln -s $(shell pwd)/nvim/ ~/.config/

_rofi:
	-ln -s $(shell pwd)/rofi/ ~/.config/

_zsh:
	-ln -s $(shell pwd)/.zshrc ~/.zshrc

_sway:
	-ln -s $(shell pwd)/sway/ ~/.config/ 

_waybar:
	-ln -s $(shell pwd)/waybar ~/.config/

clean:
	rm -rf ~/.zshrc ~/.config/nvim/ ~/.config/rofi/ ~/.config/hypr/
