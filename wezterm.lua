local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- ######## Global style ########

-- config.color_scheme = 'Modus-Operandi-Tritanopia'
-- config.color_scheme = 'modus-vivendi-deuteranopia' -- 文字が淡すぎ
-- config.color_scheme = 'X::DotShare (terminal.sexy)' -- 色があせすぎ
-- config.color_scheme = 'Vibrant Ink (Gogh)' -- gitの青いメッセージが読みづらい
-- config.color_scheme = 'Vs Code Dark+ (Gogh)' -- 色が淡い
-- config.color_scheme = 'ubuntu' -- 若干青が濃すぎ
config.color_scheme = 'UltraDark' -- だいぶ色がパキッとする

config.window_background_opacity = 0.7  -- 背景の透過
config.macos_window_background_blur = 10  -- 背景のぼかし
config.window_decorations = "RESIZE" -- タイトルバーを消す

config.font = wezterm.font_with_fallback {
  {family = 'Monaco', weight = 'Regular'},
  {family = 'Hiragino Sans W4', weight = 'Regular'},
}

config.font_size = 14
config.initial_rows = 60
config.initial_cols = 220

-- ######## Window frame style ########
config.window_frame = {
--    -- アクティブウィンドウの時のタイトルバー (タブの後ろ部分) の色
--    active_titlebar_bg = '#e0e0e0',
--    -- 非アクティブウィンドウの時のタイトルバー (タブの後ろ部分) の色
--    inactive_titlebar_bg = '#060011',
   font = wezterm.font_with_fallback {
      {family = 'Inter', weight = 'Bold'},
      {family = 'Helvetica Neue', weight = 'Bold'},
   },
   font_size = 12,
}

-- ######## Notification from Claude Code ########
local is_claude = require 'functions/is_claude'

-- タスク完了時にOS通知を表示する
wezterm.on('bell', function(window, pane)
  if not is_claude.is_claude(pane) then
    return
  end

  -- OS通知を表示
  window:toast_notification('Claude Code', 'Task completed', nil, 4000)

  -- macOSの場合は音を鳴らす
  if wezterm.target_triple:find("darwin") then
    wezterm.background_child_process({ "afplay", "/System/Library/Sounds/Purr.aiff" })
  end
end)

-- ######## Tab bar style ########
local tabbarstyle = require 'tabbarstyle_dark'
config.colors = tabbarstyle.style

config.show_new_tab_button_in_tab_bar = false
config.show_tab_index_in_tab_bar = false

-- ######## Key bindings ########

local keybindings = require 'keybindings'
config.disable_default_key_bindings = true
config.keys = keybindings.keys

-- Leaderキーを Control + q にする
config.leader = { key = "q", mods = "CTRL", timeout_milliseconds = 2000 }

-- ######## For macOS IME problem ########

config.macos_forward_to_ime_modifier_mask = "CTRL|SHIFT"

return config
