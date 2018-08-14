function fish_right_prompt
    if test $CMD_DURATION
        set duration $CMD_DURATION" ms |"
    end
    echo $duration (date "+%Y-%m-%d %H:%M:%S")
end
