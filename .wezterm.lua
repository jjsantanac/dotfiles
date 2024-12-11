-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()
local act = wezterm.action

config.color_scheme = "Kanagawa (Gogh)"
config.enable_tab_bar = false
config.font_size = 15.0
config.line_height = 1.2
config.initial_cols = 500
config.initial_rows = 100
config.front_end = "WebGpu"
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true
config.use_fancy_tab_bar = false
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

config.keys = {
	{ key = "n", mods = "OPT", action = wezterm.action({ SendString = "~" }) },
	{
		key = "LeftArrow",
		mods = "OPT",
		action = act.SendKey({ key = "b", mods = "ALT" }),
	},
	{
		key = "RightArrow",
		mods = "OPT",
		action = act.SendKey({ key = "f", mods = "ALT" }),
	},
	{
		key = "LeftArrow",
		mods = "CMD",
		action = wezterm.action({ SendString = "\x1bOH" }),
	},
	{
		key = "RightArrow",
		mods = "CMD",
		action = wezterm.action({ SendString = "\x1bOF" }),
	},
	{
		key = "Backspace",
		mods = "CMD",
		action = act.SendKey({ key = "U", mods = "CTRL" }),
	},
}

return config
