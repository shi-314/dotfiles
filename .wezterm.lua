local wezterm = require("wezterm")
local act = wezterm.action

local config = {}

config.color_scheme = 'hardhacker'
config.window_background_opacity = 0.9
config.hide_tab_bar_if_only_one_tab = true
config.font_size = 11

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
