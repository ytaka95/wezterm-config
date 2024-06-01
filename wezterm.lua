-- Pull in the wezterm API
local wezterm = require 'wezterm'
local keybindings = require 'keybindings'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.color_scheme = 'Google Dark (Gogh)'

config.window_background_opacity = 0.85

config.font = wezterm.font_with_fallback {
  {family = 'Monaco', weight = 'Bold'},
  {family = 'Noto Sans JP', weight = 'Bold'},
}
config.font_size = 13.5

config.disable_default_key_bindings = true
config.keys = keybindings.keys

-- and finally, return the configuration to wezterm
return config
