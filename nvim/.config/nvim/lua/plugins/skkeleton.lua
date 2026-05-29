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
      \ '(': ['（', ''],
      \ ')': ['）', '']
      \ })
    ]])
    local function register_latex_kanatable()
      vim.fn["skkeleton#register_kanatable"]("rom", {
        [","] = { "，", "" },
        ["."] = { "．", "" },
      })
    end

    local function restore_default_kanatable()
      vim.fn["skkeleton#register_kanatable"]("rom", {
        [","] = { "、", "" },
        ["."] = { "。", "" },
      })
    end

    vim.api.nvim_create_autocmd({ "BufEnter", "BufNewFile" }, {
      pattern = "*.tex",
      callback = register_latex_kanatable,
    })

    vim.api.nvim_create_autocmd("BufLeave", {
      pattern = "*.tex",
      callback = restore_default_kanatable,
    })

    vim.cmd( [[call ddc#enable()]])
    vim.cmd([[ call ddc#custom#patch_global('ui', 'pum')]])
  end,
}
