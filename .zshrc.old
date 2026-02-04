# zmodload zsh/zprof

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

# shell_prefix_prompt() {
#     echo "$SHELL_PREFIX"
# }


# dev_prompt() {
    # local 
# }

# export SHELL_PREFIX=""
export EDITOR="nvim"
export TERMINAL="ghostty"
export MANPAGER="nvim +Man!"
export VISUAL="nvim"
export CC="clang"
export CXX="clang++"

PS1=$'%B%F{red}%m%F{green}@%F{blue}%n%F{green}:%f%/%b %F{red}$(git_prompt)\n%(?.%F{green}.%F{red})${SHELL_PREFIX}->%f '

# fpath=(${(uo)fpath})

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

PATH=~/Scripts/:$PATH
# PATH=$HOME/Programs/PrismLauncher:$PATH
# PATH=/home/wilt/.local/bin:$PATH
# PATH=/home/wilt/Programs/bin:$PATH
# PATH=$HOME/.cargo/bin:$PATH
# PATH=/home/wilt/Programs/scripts:$PATH

# export LIBVIRT_DEFAULT_URI="qemu:///system"
# export MANPAGER="nvim +Man!"

# export EDITOR=nvim
# export VISUAL=nvim

# export CC=clang
# export CXX=clang++

# source /home/wilt/Programs/1.4.321.1/setup-env.sh

# Path to your Oh My Zsh installation.
# source /etc/zshrc
# source /nix/store/*oh-my-zsh*/

# export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(sudo git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#alias battery="for BAT_PATH in $(upower -e | grep BAT); do upower -i "$BAT_PATH"; done"
#alias battery="clear; astal-battery -p"
alias cfg="nvim ~/Configs/"
alias battery="upower -i /org/freedesktop/UPower/devices/battery_BAT1"
alias hyprcfg="nvim ~/Config/hypr/hyprland.conf"
alias gpuI="supergfxctl -m Integrated"
alias gpuINow="supergfxctl -m Integrated; uwsm stop"
alias gpuH="supergfxctl -m Hybrid"
alias gpuHNow="supergfxctl -m Hybrid; reboot"
alias netcheck="ping google.com -c 3"
alias toggleTouchpad="~/Scripts/toggle-touchpad.zsh"
alias ShutdownAndUpdate="sudo pacman -Syu; shutdown now"
alias la="ls -a"
alias size+="sudo du -sh * | sort -hr | head -n 10"
alias nixcfg="sudo -E nvim /etc/nixos/"
alias nixrebuild="sudo nixos-rebuild switch"
alias nixupdate="sudo nix-channel --update; sudo nix flake update; sudo nixos-rebuild switch"
alias p="nvim ~/ALL/NewDocument.txt"
alias dev="SHELL_PREFIX=\"[dev]\" nix develop -c zsh"

# export NVM_LAZY_LOAD=true
# export NVM_COMPLETION=true


source /etc/profiles/per-user/wilt/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /etc/profiles/per-user/wilt/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /nix/store/*zsh-autocomplete*/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh


# source /nix/store/sqcv541k4mgqws8d25ahgg2r1fdfmix2-zsh-autocomplete-25.03.19/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
# source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
#
# bindkey -v

# autoload -Uz compinit
# if [ "$(date +'%j')" != "$(stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)" ]; then
#     compinit
# else
#     compinit -C
# fi

# compinit -C

# if uwsm check may-start && uwsm select; then
# 	exec uwsm start default
# fi
# zprof

