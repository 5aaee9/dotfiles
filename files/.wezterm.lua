local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = { }

if wezterm.config_builder then
    config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'arcoiris'
config.font = wezterm.font_with_fallback {
    'CaskaydiaCove Nerd Font',
    'Fira Code',
    'DengXian',
}
config.font_size = 14
config.line_height = 1.1

config.initial_cols = 80
config.initial_rows = 25

-- and finally, return the configuration to wezterm
return config