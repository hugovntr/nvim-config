return {
  'nvim-neo-tree/neo-tree.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      close_if_last_window = false,
      enable_git_status = true,
      enable_diagnostics = true,
      window = {
        position = 'left',
        width = 40,
      },
      buffers = {
        follow_current_file = {
          enabled = true,
        },
      },
      filesystem = {
        follow_current_file = {
          enabled = true,
        },
      },
    }
    vim.keymap.set('n', '<C-n>', '<cmd>Neotree position=left toggle<cr>')
  end,
}
