return {
  "nvim-tree/nvim-tree.lua",
  cond = not vim.g.vscode,
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      filters = {
        dotfiles = false,
        git_ignored = false,
        custom = { "^\\.git$", "^\\.DS_Store$" },
      },
    }
  end,
}
