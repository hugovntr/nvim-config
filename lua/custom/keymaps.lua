local nnoremap = require('custom.keymaps_utils').nnoremap
local nvnoremap = require('custom.keymaps_utils').nvnoremap

-- Save with leader
nnoremap('<leader>s', '<cmd>w<cr>', { silent = false })

-- Save and Quit
nnoremap('<leader>sq', '<cmd>wqa<cr>', { silent = true })

-- Switch 'j' and 'k'
nvnoremap('j', 'h')
nvnoremap('l', 'j')
nvnoremap('m', 'l')

-- 'J' and 'M' to go to beginning/end of line
nvnoremap('M', '$')
nvnoremap('J', '^')

-- 'U' to redo
nnoremap('U', '<C-r>')

-- Cut using x
nvnoremap('x', 'd')
nvnoremap('xx', 'dd')

-- Delete without copy
nvnoremap('d', '"_d')
nvnoremap('dd', '"_dd')

-- Open terminal
nnoremap('', '<cmd>split | terminal<cr>')

-- Buffer management
nnoremap('<PageUp>', '<cmd>bprev<cr>', { desc = 'Previous buffer' })
nnoremap('<PageDown>', '<cmd>bnext<cr>', { desc = 'Next buffer' })
nnoremap('<leader>q', '<cmd>bd<cr>', { silent = false, desc = 'Close current buffer' })

-- One hand fast travel
nnoremap('¬', '}') -- down (Alt + L)
nnoremap('ø', '{') -- up
nnoremap('È', '{') -- up

-- Split pane
nnoremap('<leader>wv', '<cmd>vsplit<cr>')
nnoremap('<leader>wh', '<cmd>split<cr>')
nnoremap('<leader>wx', '<cmd>q<cr>')
