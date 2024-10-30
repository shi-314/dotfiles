local wezterm = require("wezterm")
local act = wezterm.action

local config = {}

-- config.color_scheme = 'Atom (Gogh)'
config.color_scheme = 'Argonaut'
config.window_background_opacity = 0.9
config.macos_window_background_blur = 20

config.hide_tab_bar_if_only_one_tab = true
config.font_size = 12
config.dpi_by_screen = {
  ['LG HDR QHD'] = 80,
  ['Built-in Retina Display'] = 144
}
-- config.font = wezterm.font 'Menlo'
-- config.font = wezterm.font("Menlo", {weight="Regular", stretch="Normal", style="Normal"})

config.keys = {
  {
    key = 'LeftArrow',
    mods = 'CTRL|SHIFT',
    action = act.ActivatePaneDirection 'Left',
  },
  {
    key = 'RightArrow',
    mods = 'CTRL|SHIFT',
    action = act.ActivatePaneDirection 'Right',
  },
  {
    key = 'UpArrow',
    mods = 'CTRL|SHIFT',
    action = act.ActivatePaneDirection 'Up',
  },
  {
    key = 'DownArrow',
    mods = 'CTRL|SHIFT',
    action = act.ActivatePaneDirection 'Down',
  },
}

config.initial_rows = 60
config.initial_cols = 160

return config
