return {
  "mason-org/mason-lspconfig.nvim",
  cond = not vim.g.vscode,
  opts = {},
  dependencies = {
    "mason-org/mason.nvim",
    "neovim/nvim-lspconfig",
  },
}
