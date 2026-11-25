return {
  'aiya000/nvim-mado-scratch',
  config = function()
    require('mado-scratch').setup({
      file_pattern = {
        when_tmp_buffer = '/tmp/mado-scratch-tmp-%d',
        when_file_buffer = '/tmp/mado-scratch-file-%d',
      },
      default_file_ext = 'md',
      default_open_method = { method = 'float-aspect', scale = { width = 0.8, height = 0.8 } },
      auto_save_file_buffer = true,
      use_default_keymappings = false,
      auto_hide_buffer = {
        when_tmp_buffer = false,
        when_file_buffer = false,
      },
    })
  end,
}
