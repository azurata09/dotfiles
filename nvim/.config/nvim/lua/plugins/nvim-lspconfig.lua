return {
  'neovim/nvim-lspconfig',
  cond = not vim.g.vscode,
  dependencies = { 'saghen/blink.cmp' },
  config = function()
    vim.lsp.config('*', {
      capabilities = require('blink.cmp').get_lsp_capabilities(),
    })
  end
}
