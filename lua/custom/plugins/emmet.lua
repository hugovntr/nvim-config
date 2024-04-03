return {
  {
    'mattn/emmet-vim',
    opts = {},
    config = function()
      vim.keymap.set('i', '<Tab>', '<plug>(emmet-expand-abbr)')
    end,
  },
}
