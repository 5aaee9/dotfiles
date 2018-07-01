function fish_prompt --description "Write out the prompt"
    set -l color_cwd
    set -l suffix
    
    if not set -q __git_cb
        set __git_cb " ["(set_color brown)(git branch ^/dev/null | grep \* | sed 's/* //')(set_color normal)"""]"
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

    echo -n -s "[$USER" @ (prompt_hostname) '] (' (set_color $color_cwd) (prompt_pwd) (set_color normal) $__git_cb ") $suffix "
end
source ~/.config/fish/nvm-wrapper/nvm.fish