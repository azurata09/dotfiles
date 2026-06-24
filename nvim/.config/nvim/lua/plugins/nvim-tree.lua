return {
  "nvim-tree/nvim-tree.lua",
  cond = not vim.g.vscode,
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
  end,
}
