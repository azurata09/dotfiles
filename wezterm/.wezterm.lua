local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.default_prog = {"/usr/local/bin/tmux"}
config.enable_tab_bar = false

-- Font settings
config.font = wezterm.font("HackGen Console NF")
config.font_size = 22
config.color_scheme = 'Hybrid'

-- Window settings
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0
}
config.background = {
  {
    source = {
      File = "/Users/azurata/Pictures/200687_scaled.png"
    },
    height = "Cover",
    vertical_align = "Middle",
    hsb = {
      brightness = 0.02
    }
  }
}

return config

