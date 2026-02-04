git_prompt() {

    local is_git

    if [ -d .git ]; then
        true
    else
        return
    fi;


    local branch
    branch=$(git symbolic-ref --short HEAD)
    # repo=$(git rev-parse --show-toplevel)
    repo=$(basename $(git rev-parse --show-toplevel))
    echo "git:${repo}(${branch})"   

}


export EDITOR="nvim"
export TERMINAL="ghostty"
export MANPAGER="nvim +Man!"
export VISUAL="nvim"
export CC="clang"
export CXX="clang++"

setopt PROMPT_SUBST
PS1=$'%B%F{red}%m%F{green}@%F{blue}%n%F{green}:%f%/%b %F{red}$(git_prompt)\n%(?.%F{green}.%F{red})${SHELL_PREFIX}->%f '

PATH=~/Scripts/:$PATH

alias cfg="nvim ~/Configs/"
alias size+="sudo du -sh * | sort -hr | head -n 10"
alias nixcfg="sudo -E nvim /etc/nixos/"
alias nixrebuild="sudo nixos-rebuild switch"
alias nixupdate="sudo nix-channel --update; sudo nix flake update; sudo nixos-rebuild switch"
alias p="nvim ~/ALL/NewDocument.txt"
alias dev="SHELL_PREFIX=\"[dev]\" nix develop -c zsh"

source /etc/profiles/per-user/wilt/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /etc/profiles/per-user/wilt/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /nix/store/*zsh-autocomplete*/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

