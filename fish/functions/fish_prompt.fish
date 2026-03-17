# function git_prompt() {
#
#     local is_git
#
#     if [ -d .git ]; then
#         true
#     else
#         return
#     fi;
#
#
#     local branch
#     branch=$(git symbolic-ref --short HEAD)
#     # repo=$(git rev-parse --show-toplevel)
#     repo=$(basename $(git rev-parse --show-toplevel))
#     echo "git:${repo}(${branch})"   
#
# }

function git_prompt -d "write out git prompt"
    if test -d .git
        true
    else
        return
    end

    set -l branch (git symbolic-ref --short HEAD)
    set -l repo (basename (git rev-parse --show-toplevel))
    # echo "git:$repo($branch)"
    echo "󰊢 $repo($branch)"

end

function fish_prompt --description 'Write out the prompt'
    set -l last_status $status

    set_color -o green
    # echo -n "┬┤["
    echo -n "┬─["

    set_color -o red
    echo -n "󰌢 $(hostname) "
    # set_color -o red
    # echo -n $(hostname)
    # set_color -o green
    # echo -n "@"
    set_color -o blue
    echo -n " $(whoami) "
    set_color -o normal
    # set_color -o green
    # echo -n ":"
    # set_color -o normal
    echo -n " $(pwd)"
    set_color normal
    set_color -o green
    echo -n "]"
    set_color -o normal

    set_color -o green
    echo -n "─["
    set_color -o normal
    echo -n "$(date +%r)"
    set_color -o green
    echo -n "]"
    set_color -o normal

    # set_color -o green
    # echo -n "│"
    # set_color normal

    set_color red
    echo -n " $(git_prompt)"
    set_color normal

    if test $last_status -eq 0
        set_color green
    else
        set_color red
    end

    echo

    if test $SHELL_PREFIX
        set_color -o green
        echo -n "╰─[$SHELL_PREFIX]-> "
        set_color normal
    else
        set_color -o green
        echo -n "╰─→ "
        set_color normal
    end

    # echo -n $SHELL_PREFIX
    # set_color -o green
    # echo -n "╰─→ "
    # set_color normal

    set_color normal
end
