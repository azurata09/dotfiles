map = vim.keymap.set

-- Ctrl-jでskkeletonを有効にする
map({"i", "c"}, [[<C-j>]], [[<Plug>(skkeleton-enable)]], { noremap = false })

-- ターミナルモードでEscを2回押してノーマルモードにする
map({"t"}, [[<Esc><Esc>]], [[<C-\><C-n>]])

