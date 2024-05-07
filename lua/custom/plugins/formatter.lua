return {
  'mhartington/formatter.nvim',
  config = function()
    vim.api.nvim_create_augroup('__formatter__', { clear = true })
    vim.api.nvim_create_autocmd('BufWritePost', {
      group = '__formatter__',
      command = ':FormatWrite',
    })
    require('formatter').setup {
      filetype = {
        lua = { require('formatter.filetypes.lua').stylua },
        typescript = { require('formatter.filetypes.typescript').prettierd },
        typescriptreact = { require('formatter.filetypes.typescriptreact').prettierd },
        javascript = { require('formatter.filetypes.javascript').prettierd },
        javascriptreact = { require('formatter.filetypes.javascriptreact').prettierd },
      },
    }
  end,
}
