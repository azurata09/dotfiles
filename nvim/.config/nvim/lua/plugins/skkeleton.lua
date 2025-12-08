return {
  'vim-skk/skkeleton',
  dependencies = {
  'vim-denops/denops.vim',
  'Shougo/ddc.vim'
  },
  lazy = false,
  config = function()
    vim.cmd([[ call skkeleton#config({
    \ 'globalDictionaries': [
    \   '~/.skk/SKK-JISYO.L',
    \   '~/Library/Application Support/AquaSKK/skk-jisyo.utf8',
    \  ],
    \ 'completionRankFile': '~/.skk/rank.json',
    \ 'eggLikeNewline': v:true,
    \ })]])
    vim.cmd([[ call ddc#custom#patch_global( 'sources', ['skkeleton'])]])
    vim.cmd([[ call ddc#custom#patch_global( 'sourceOptions', {
    \ '_': {
    \ 'matchers': ['matcher_head'],
    \ 'sorters': ['sorter_rank'],
    \ },
    \ 'skkeleton' : {
    \ 'mark': 'skkeleton',
    \ 'matchers': [],
    \ 'sorters': [],
    \ 'converters': [],
    \ 'isVolatile': v:true,
    \ 'minAutoCompleteLength': 1
    \ }})]])
    vim.cmd([[ call skkeleton#register_kanatable('rom', {
      \ ',': ['，', ''],
      \ '.': ['．', ''],
      \ '(': ['（', ''],
      \ ')': ['）', '']
      \ })
    ]])
    vim.cmd( [[call ddc#enable()]])
    vim.cmd([[ call ddc#custom#patch_global('ui', 'pum')]])
  end,
}

