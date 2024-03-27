return {
  'rmagatti/auto-session',
  config = function()
    require('auto-session').setup {
      auto_session_enabled = true,
      auto_save_enabled = true,
      auto_restore_enabled = true,
      auto_session_enable_last_session = false,
      auto_session_root_dir = vim.fn.stdpath 'data' .. '/sessions/',
      auto_session_last_session_dir = vim.fn.stdpath 'data' .. '/sessions/',
      log_level = 'error',
      auto_session_suppress_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
      session_lens = {
        buftypes_to_ignore = {},
        load_on_setup = true,
        theme_conf = { border = true },
        previewer = false,
      },
    }

    -- Set mapping for Telescope
    vim.keymap.set('n', '<leader>ls', require('auto-session.session-lens').search_session, { noremap = true, desc = '[L]ist [S]essions' })
  end,
}
