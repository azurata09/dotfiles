map = vim.keymap.set

-- Ctrl-jでskkeletonを有効にする
if not vim.g.vscode then
  map({"i", "c"}, [[<C-j>]], [[<Plug>(skkeleton-enable)]], { noremap = false })
end

-- ターミナルモードでEscを2回押してノーマルモードにする
map({"t"}, [[<Esc><Esc>]], [[<C-\><C-n>]])
