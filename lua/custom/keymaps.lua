local nnoremap = require('custom.keymaps_utils').nnoremap
local vnoremap = require('custom.keymaps_utils').vnoremap

-- Save with leader
nnoremap('<leader>s', '<cmd>w<cr>', { silent = false })

-- Save and Quit
nnoremap('<leader>sq', '<cmd>wqa<cr>', { silent = true })

-- Switch 'j' and 'k'
nnoremap('j', 'k')
vnoremap('j', 'k')
nnoremap('k', 'j')
vnoremap('k', 'j')

-- Switch 'i' and 'a'
-- nnoremap('i', 'a')
-- nnoremap('a', 'i')

-- 'H' and 'L' to go to beginning/end of line
nnoremap('L', '$')
nnoremap('H', '^')
vnoremap('L', '$')
vnoremap('H', '^')

-- 'U' to redo
nnoremap('U', '<C-r>')

-- Delete without copy
nnoremap('x', '"_x')
vnoremap('x', '"_x')

-- Open terminal
nnoremap('', '<cmd>split | terminal<cr>')

-- Buffer management
nnoremap('<PageUp>', '<cmd>bprev<cr>', { desc = 'Previous buffer' })
nnoremap('<PageDown>', '<cmd>bnext<cr>', { desc = 'Next buffer' })
nnoremap('<leader>q', '<cmd>bd<cr>', { silent = false, desc = 'Close current buffer' })

-- One hand fast travel
nnoremap('È', '}') -- down
nnoremap('ø', '{') -- up
nnoremap('Ï', '{') -- up

-- Split pane
nnoremap('<leader>wv', '<cmd>vsplit<cr>')
nnoremap('<leader>wh', '<cmd>split<cr>')
nnoremap('<leader>wx', '<cmd>q<cr>')
