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
        position = 'float',
        width = 32,
        mappings = {
          ['h'] = 'open_split',
          ['mv'] = 'move',
          ['k'] = 'up',
          ['l'] = 'down',
        },
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
        filtered_items = {
          hide_gitignored = false,
          hide_dotfiles = false,
        },
      },
    }
    vim.keymap.set('n', '<M-E>', '<cmd>Neotree toggle<cr>')
  end,
}
