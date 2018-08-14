function prompt_hostname
    if [ "$__fish_prompt_hostname" = "" ]
        set __fish_prompt_hostname (eval hostname)
    end
    string replace -r "\..*" "" $__fish_prompt_hostname
end

function fish_prompt --description "Write out the prompt"
    if test $status -eq 0
        set lastStatus (set_color yellow)"√"(set_color normal)
    else
        set lastStatus (set_color red)"×"(set_color normal)
    end

    set -l color_cwd
    set -l suffix

    # git settings
    if not set -q __git_cb
        set -l git_color brown
        if git_is_dirty
            set git_color red
        end

        if git_is_touched
            set git_color red
        end
        set __git_cb " ["(set_color $git_color)(git branch ^/dev/null | grep \* | sed 's/* //')(set_color normal)"""]"
    end

    switch "$USER"
        case root toor
            if set -q fish_color_cwd_root
                set color_cwd $fish_color_cwd_root
            else
                set color_cwd $fish_color_cwd
            end
            set suffix '#'
        case '*'
            set color_cwd $fish_color_cwd
            set suffix '>'
    end

    echo -n -s "[$USER" @ (prompt_hostname) '] (' (set_color $color_cwd) (prompt_pwd) (set_color normal) $__git_cb " ["$lastStatus"]) $suffix "
end

