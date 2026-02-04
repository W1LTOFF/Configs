# @fish-lsp-enable
if status is-interactive
    # Commands to run in interactive sessions can go here

	set -x PATH ~/Scripts/ $PATH

    set -x fish_greeting ""
	set -x EDITOR "nvim"
	set -x TERMINAL "kitty"
	set -x VISUAL "nvim"
	set -x MANPAGER "nvim +Man!"
	set -x CC "clang"
	set -x CXX "clang++"



    abbr -a cfg "nvim ~/Configs/"
    abbr -a size+ "sudo du -sh {*,.*} | sort -hr | head -n 10"
    abbr -a nixcfg "sudo -E nvim /etc/nixos/"
    abbr -a nixrebuild "sudo nixos-rebuild switch"
    abbr -a nixupdate "sudo nix-channel --update; sudo nix flake update; sudo nixos-rebuild switch"
    abbr -a p "nvim ~/ALL/NewDocument.txt"
    abbr -a dev "SHELL_PREFIX=\"[dev]\" nix develop -c fish"

end
