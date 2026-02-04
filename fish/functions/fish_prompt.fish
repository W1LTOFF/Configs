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
    echo "git:$repo($branch)"

end

function fish_prompt --description 'Write out the prompt'
    set -l last_status $status

    set_color -o red
    echo -n $(hostname)
    set_color -o green
    echo -n "@"
    set_color -o blue
    echo -n $(whoami)
    set_color -o green
    echo -n ":"
    set_color -o normal
    echo -n $(pwd)
    set_color normal
    echo -n " "

    set_color red
    echo -n (git_prompt)
    set_color normal

    if test $last_status -eq 0
        set_color green
    else
        set_color red
    end

    echo

    echo -n $SHELL_PREFIX

    echo -n "-> "

    # set -l last_status $status
    #
    # prompt_login
    #
    # echo -n ':'
    #
    # # PWD
    # set_color $fish_color_cwd
    # echo -n (prompt_pwd)
    # set_color normal
    #
    # set -q __fish_git_prompt_showdirtystate
    # or set -g __fish_git_prompt_showdirtystate 1
    # set -q __fish_git_prompt_showuntrackedfiles
    # or set -g __fish_git_prompt_showuntrackedfiles 1
    # set -q __fish_git_prompt_showcolorhints
    # or set -g __fish_git_prompt_showcolorhints 1
    # set -q __fish_git_prompt_color_untrackedfiles
    # or set -g __fish_git_prompt_color_untrackedfiles yellow
    # set -q __fish_git_prompt_char_untrackedfiles
    # or set -g __fish_git_prompt_char_untrackedfiles '?'
    # set -q __fish_git_prompt_color_invalidstate
    # or set -g __fish_git_prompt_color_invalidstate red
    # set -q __fish_git_prompt_char_invalidstate
    # or set -g __fish_git_prompt_char_invalidstate '!'
    # set -q __fish_git_prompt_color_dirtystate
    # or set -g __fish_git_prompt_color_dirtystate blue
    # set -q __fish_git_prompt_char_dirtystate
    # or set -g __fish_git_prompt_char_dirtystate '*'
    # set -q __fish_git_prompt_char_stagedstate
    # or set -g __fish_git_prompt_char_stagedstate '✚'
    # set -q __fish_git_prompt_color_cleanstate
    # or set -g __fish_git_prompt_color_cleanstate green
    # set -q __fish_git_prompt_char_cleanstate
    # or set -g __fish_git_prompt_char_cleanstate '✓'
    # set -q __fish_git_prompt_color_stagedstate
    # or set -g __fish_git_prompt_color_stagedstate yellow
    # set -q __fish_git_prompt_color_branch_dirty
    # or set -g __fish_git_prompt_color_branch_dirty red
    # set -q __fish_git_prompt_color_branch_staged
    # or set -g __fish_git_prompt_color_branch_staged yellow
    # set -q __fish_git_prompt_color_branch
    # or set -g __fish_git_prompt_color_branch green
    # set -q __fish_git_prompt_char_stateseparator
    # or set -g __fish_git_prompt_char_stateseparator '⚡'
    # fish_vcs_prompt '|%s'
    # echo
    #
    # if not test $last_status -eq 0
    #     set_color $fish_color_error
    # end
    #
    # echo -n '➤ '
    set_color normal
end
