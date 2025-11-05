require("config.lazy")
require("keymap")

vim.opt.number = true

vim.opt.clipboard:append({"unnamedplus"})

if vim.g.neovide then
  vim.o.guifont = "HackGen Console NF:h22" -- text below applies for VimScript
end

