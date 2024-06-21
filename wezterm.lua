-- Pull in the wezterm API
local wezterm = require 'wezterm'
local keybindings = require 'keybindings'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.color_scheme = 'Google Dark (Gogh)'

config.window_background_opacity = 0.85

config.font = wezterm.font_with_fallback {
  {family = 'Monaco', weight = 'Regular'},
  {family = 'Noto Sans JP', weight = 'Medium'},
  {family = 'Hiragino Sans W5', weight = 'Regular'},
}
config.font_size = 14

config.initial_rows = 60
config.initial_cols = 220

config.disable_default_key_bindings = true
config.keys = keybindings.keys

config.macos_forward_to_ime_modifier_mask = "CTRL"

-- and finally, return the configuration to wezterm
return config
