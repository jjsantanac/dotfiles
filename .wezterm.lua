-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()
local act = wezterm.action

config.color_scheme = "Kanagawa (Gogh)"
config.enable_tab_bar = false
-- config.font = wezterm.font 'Hack Nerd Font'
config.font_size = 16.0
config.initial_cols = 290
config.initial_rows = 90
config.front_end = "WebGpu"
config.send_composed_key_when_left_alt_is_pressed = true
config.use_fancy_tab_bar = false
config.window_decorations = "RESIZE"

config.keys = {
	-- Rebind OPT-Left, OPT-Right as ALT-b, ALT-f respectively to match Terminal.app behavior
	{
		key = "LeftArrow",
		mods = "OPT",
		action = act.SendKey({
			key = "b",
			mods = "ALT",
		}),
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
}

return config
