require("config.lazy")
require("keymap")

vim.opt.number = true

vim.opt.clipboard:append({"unnamedplus"})

if vim.g.neovide then
  vim.o.guifont = "HackGen Console NF:h22" -- text below applies for VimScript
  vim.g.neovide_opacity = 0.75
  vim.g.transparency = 0.75
end

