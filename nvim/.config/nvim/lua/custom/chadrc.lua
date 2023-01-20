local M = {}

M.ui = {
  theme = "monekai",
}

M.plugins = {
  ["gpanders/editorconfig.nvim"] = false,

  ["nvim-tree/nvim-tree.lua"] = {
    open_on_setup = false
  },

  ["NvChad/ui"] = {
    statusline = {
      separator_style = "arrow"
    },
  },
}

return M
