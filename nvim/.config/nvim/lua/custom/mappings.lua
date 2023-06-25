local M = {}

M.skkeleton = {
  i = { -- Insert mode
    ["<C-j>"] = {"<Plug>(skkeleton-enable)", "Enable skkeleton"}
  }
}

return M
