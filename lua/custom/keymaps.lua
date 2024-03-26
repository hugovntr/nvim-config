local nnoremap = require('custom.keymaps_utils').nnoremap
local vnoremap = require('custom.keymaps_utils').vnoremap

-- Save with leader
nnoremap('<leader>s', '<cmd>w<cr>', { silent = false })

-- Quit with leader
nnoremap('<leader>q', '<cmd>q<cr>', { silent = false })

-- Switch 'j' and 'k'
nnoremap('j', 'k')
vnoremap('j', 'k')
nnoremap('k', 'j')
vnoremap('k', 'j')

-- Switch 'i' and 'a'
nnoremap('i', 'a')
nnoremap('a', 'i')

-- 'H' and 'L' to go to beginning/end of line
nnoremap('L', '$')
nnoremap('H', '^')
vnoremap('L', '$')
vnoremap('H', '^')

-- 'U' to redo
nnoremap('U', '<C-r>')

-- Open OIL
nnoremap('<leader>o', function()
  require('oil').toggle_float()
end)
