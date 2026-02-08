local wezterm = require("wezterm")
local act = wezterm.action

local config = {}

-- config.color_scheme = 'Atom (Gogh)'
config.color_scheme = "Argonaut"
config.window_background_opacity = 0.9
config.macos_window_background_blur = 20

config.hide_tab_bar_if_only_one_tab = true
config.show_new_tab_button_in_tab_bar = false
config.window_frame = {
	active_titlebar_bg = "#0d0d0d",
	inactive_titlebar_bg = "#0d0d0d",
}
config.colors = {
	tab_bar = {
		active_tab = { bg_color = "#1a1a1a", fg_color = "#c0c0c0", intensity = "Normal" },
		inactive_tab = { bg_color = "#0d0d0d", fg_color = "#353535", intensity = "Normal" },
		inactive_tab_hover = { bg_color = "#1a1a1a", fg_color = "#909090" },
	},
}
config.font_size = 12
config.dpi = 86
config.dpi_by_screen = {
	["LG HDR QHD"] = 80,
	["Built-in Retina Display"] = 144,
	["LEN T27h-20"] = 75,
}
-- config.font = wezterm.font 'Menlo'
-- config.font = wezterm.font("Menlo", {weight="Regular", stretch="Normal", style="Normal"})

config.keys = {
	{
		key = "LeftArrow",
		mods = "CTRL|SHIFT",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "RightArrow",
		mods = "CTRL|SHIFT",
		action = act.ActivatePaneDirection("Right"),
	},
	{
		key = "UpArrow",
		mods = "CTRL|SHIFT",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key = "DownArrow",
		mods = "CTRL|SHIFT",
		action = act.ActivatePaneDirection("Down"),
	},
	{
		key = "Enter",
		mods = "SHIFT",
		action = act.SendString("\x1b[13;2u"),
	},
}

config.initial_rows = 60
config.initial_cols = 160

config.inactive_pane_hsb = {
	saturation = 0.6,
	brightness = 0.4,
}

return config
