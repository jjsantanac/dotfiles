-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.color_scheme = 'Kanagawa (Gogh)'
config.enable_tab_bar = false
config.font = wezterm.font 'Hack Nerd Font'
config.initial_cols = 290
config.initial_rows = 90
config.front_end = 'WebGpu'
config.send_composed_key_when_left_alt_is_pressed = true
config.use_fancy_tab_bar = false

return config
