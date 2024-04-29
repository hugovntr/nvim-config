local nnoremap = require('custom.keymaps_utils').nnoremap
local nvnoremap = require('custom.keymaps_utils').nvnoremap
local inoremap = require('custom.keymaps_utils').inoremap
local ninoremap = require('custom.keymaps_utils').ninoremap

-- Save with leader
nnoremap('<leader>s', '<cmd>w<cr>', { silent = false })

-- Save with CMD+S
ninoremap('<M-s>', '<cmd>w<cr><esc><esc>')

-- Exit insert mode with jk
inoremap('jk', '<esc><esc>')

-- Save and Quit
nnoremap('<leader>sq', '<cmd>wqa<cr>', { silent = true })

-- Switch 'j' and 'k'
nvnoremap('j', 'h')
nvnoremap('l', 'j')
nvnoremap('m', 'l')

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
nnoremap('<C-p>', '<cmd>bprev<cr>', { desc = 'Previous buffer' })
nnoremap('<C-n>', '<cmd>bnext<cr>', { desc = 'Next buffer' })
nnoremap('<leader>q', '<cmd>bd<cr>', { silent = false, desc = 'Close current buffer' })

-- One hand fast travel
nnoremap('¬', '}') -- down (Alt + L)
nnoremap('ø', '{') -- up
nnoremap('È', '{') -- up

-- Split pane
nnoremap('<leader>wv', '<cmd>vsplit<cr>')
nnoremap('<leader>wh', '<cmd>split<cr>')
nnoremap('<leader>wx', '<cmd>q<cr>')

-- Insert mode sugar
inoremap('<M-BS>', '<C-W>', { desc = 'Delete previous word' })

-- Move lines
nnoremap('<M-k>', '<cmd>m .-2<cr>', { desc = 'Move line up (1)' })
nnoremap('<M-l>', '<cmd>m .+1<cr>', { desc = 'Move line down (1)' })
