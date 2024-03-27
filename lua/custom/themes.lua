return {
  {
    'zaldih/themery.nvim',
    opts = {
      themes = { 'tokyonight-night', 'tokyonight-storm', 'tokyonight-day', 'catppuccin-mocha', 'catppuccin-latte' },
      themeConfigFile = '~/.config/nvim/lua/custom/themes.lua',
      livePreview = true,
    },
    config = function(_, opts)
      require('themery').setup(opts)
      -- Themery block
      -- This block will be replaced by Themery.
      vim.cmd 'colorscheme catppuccin-mocha'
      vim.g.theme_id = 4
      -- end themery block
    end,
  },
  {
    'catppuccin/nvim',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        integrations = {
          cmp = true,
          telescope = {
            enabled = true,
            style = 'nvchad',
          },
          native_lsp = {
            enabled = true,
          },
          neotree = true,
        },
      }
    end,
  },
  {
    'folke/tokyonight.nvim',
  },
}
