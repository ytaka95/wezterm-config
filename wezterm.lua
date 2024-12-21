local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- ######## Global style ########

-- config.color_scheme = 'Modus-Operandi-Tritanopia'
config.color_scheme = 'modus-vivendi-deuteranopia'
config.window_background_opacity = 0.7

config.font = wezterm.font_with_fallback {
  {family = 'Monaco', weight = 'Regular'},
  {family = 'Noto Sans JP', weight = 'Medium'},
  {family = 'Hiragino Sans W5', weight = 'Regular'},
}

config.font_size = 14
config.initial_rows = 60
config.initial_cols = 220

-- ######## Window frame style ########
-- config.window_frame = {
--    -- アクティブウィンドウの時のタイトルバー/タブバーの色
--    active_titlebar_bg = '#e0e0e0',
--    -- 非アクティブウィンドウの時のタイトルバー/タブバーの色
--    inactive_titlebar_bg = '#060011',
-- }

-- ######## Tab bar style ########

-- local tabbarstyle = require 'tabbarstyle'
-- config.colors = tabbarstyle.style

-- ######## Key bindings ########

local keybindings = require 'keybindings'
config.disable_default_key_bindings = true
config.keys = keybindings.keys

-- ######## For macOS IME problem ########

config.macos_forward_to_ime_modifier_mask = "CTRL|SHIFT"

return config
