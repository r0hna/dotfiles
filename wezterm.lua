local wezterm = require 'wezterm'
local act = wezterm.action
local config = {}
config.audible_bell = "Disabled"

-- Split pane
config.keys = {
  -- Horizontal split (side-by-side)
  {
    key = 'o',
    mods = 'CTRL|SHIFT',
    action = act.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  -- Vertical split (top-bottom)
  {
    key = 'e',
    mods = 'CTRL|SHIFT',
    action = act.SplitVertical { domain = 'CurrentPaneDomain' },
  },
}

-- 🖼️ Appearance
config.color_scheme = 'Builtin Solarized Dark' -- fallback if custom fails
config.colors = {
  foreground = '#ffffff',
  background = '#272a33',
  cursor_bg = '#ffffff',
  cursor_border = '#ffffff',
  cursor_fg = '#272a33',
  selection_bg = '#3d3846',
  selection_fg = '#ffffff',
  ansi = {
    '#3d3846', '#d41919', '#5ebdab', '#fea44c',
    '#367bf0', '#9755b3', '#49aee6', '#e6e6e6',
  },
  brights = {
    '#198388', '#ec0101', '#47d4b9', '#ff8a18',
    '#277fff', '#962ac3', '#05a1f7', '#f6f5f4',
  },
}
-- 🔤 Fonts
config.font = wezterm.font 'Fira Code'
config.font_size = 12.0

return config
