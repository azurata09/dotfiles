return {
  "folke/which-key.nvim",
  event = "VeryLazy",

    opts = {
      preset = "modern",
      win = {
        border = "rounded",
        row = 0.5,
        col = 0.5,
        no_overlap = false,
        padding = { 1, 2 },
      },
      layout = {
        width = { min = 20 },
        spacing = 3,
      },
    },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}

