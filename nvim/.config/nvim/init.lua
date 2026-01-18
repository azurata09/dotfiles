require("config.lazy")
require("keymap")

vim.opt.number = true

vim.opt.clipboard:append({"unnamedplus"})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*tex",
  callback = function()
    vim.opt_local.colorcolumn = "76"
  end,
})

if vim.g.neovide then
  vim.o.guifont = "UDEV Gothic NF:h20" -- text below applies for VimScript
  vim.g.neovide_opacity = 0.75
  vim.g.transparency = 0.75
end

