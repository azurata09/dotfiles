return {
  "mason-org/mason-lspconfig.nvim",
  cond = not vim.g.vscode,
  opts = {
    ensure_installed = { "lua_ls", "texlab", "ts_ls" },
  },
  dependencies = {
    "mason-org/mason.nvim",
    "neovim/nvim-lspconfig",
  },
}
