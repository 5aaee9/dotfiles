{i3status}:

let mod = "Mod4"; in
''
exec --no-startup-id nm-applet
# xss-lock grabs a logind suspend inhibit lock and will use i3lock to lock the
# screen before suspend. Use loginctl lock-session to lock your screen.
exec --no-startup-id xss-lock --transfer-sleep-lock -- i3lock --nofork


# Create terimal window
bindsym ${mod}+Return exec sakura

# show rofi to run apps
bindsym ${mod}+d exec rofi -show drun

# kill focused window
bindsym ${mod}+Shift+q kill

# reload the configuration file
bindsym ${mod}+Shift+c reload

# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym ${mod}+Shift+r restart

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym ${mod}+space focus mode_toggle

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier ${mod}

set $ws1 "1"
set $ws2 "2"
set $ws3 "3"
set $ws4 "4"
set $ws5 "5"
set $ws6 "6"
set $ws7 "7"
set $ws8 "8"
set $ws9 "9"
set $ws10 "10"

# switch to workspace
bindsym ${mod}+1 workspace number $ws1
bindsym ${mod}+2 workspace number $ws2
bindsym ${mod}+3 workspace number $ws3
bindsym ${mod}+4 workspace number $ws4
bindsym ${mod}+5 workspace number $ws5
bindsym ${mod}+6 workspace number $ws6
bindsym ${mod}+7 workspace number $ws7
bindsym ${mod}+8 workspace number $ws8
bindsym ${mod}+9 workspace number $ws9
bindsym ${mod}+0 workspace number $ws10

# move focused container to workspace
bindsym ${mod}+Shift+1 move container to workspace number $ws1
bindsym ${mod}+Shift+2 move container to workspace number $ws2
bindsym ${mod}+Shift+3 move container to workspace number $ws3
bindsym ${mod}+Shift+4 move container to workspace number $ws4
bindsym ${mod}+Shift+5 move container to workspace number $ws5
bindsym ${mod}+Shift+6 move container to workspace number $ws6
bindsym ${mod}+Shift+7 move container to workspace number $ws7
bindsym ${mod}+Shift+8 move container to workspace number $ws8
bindsym ${mod}+Shift+9 move container to workspace number $ws9
bindsym ${mod}+Shift+0 move container to workspace number $ws10

bar {
    tray_output primary
    status_command i3status
}

''