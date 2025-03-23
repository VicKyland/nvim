--  _   ,                             
-- ' ) /                              
--  /-<  _  __  , ______  __.  _   _  
-- /   )</_/ (_/_/ / / <_(_/|_/_)_/_)_
--            /              /        
--           '              '         

local map = vim.keymap.set

-- General
map('n', '<leader>w', '<cmd>w<cr>', { desc = 'Save file' })
map('n', '<leader>q', '<cmd>q<cr>', { desc = 'Quit' })

-- Navigation
map('n', '<C-h>', '<C-w>h', { desc = 'Window left' })
map('n', '<C-j>', '<C-w>j', { desc = 'Window down' })
map('n', '<C-k>', '<C-w>k', { desc = 'Window up' })
map('n', '<C-l>', '<C-w>l', { desc = 'Window right' })

-- Plugin keymaps
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'Find files' })
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = 'Live grep' })
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = 'Find buffers' })
-- map('n', '<leader>e', '<cmd>Neotree toggle<cr>', { desc = 'File explorer' })
map('n', '<leader>e', '<Cmd>NERDTree<CR>', { desc = 'File explorer' })
map('n', '<leader>u', '<cmd>UndotreeToggle<cr>', { desc = 'Undo tree' })
map('n', '<leader>tt', '<cmd>ToggleTerm<cr>', { desc = 'Toggle terminal' })
-- Barbar
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', { desc = 'Prev tab' })
map('n', '<A-.>', '<Cmd>BufferNext<CR>', { desc = 'Next tab' })
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', { desc = 'Move tab ->' })
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', { desc = 'Move tab <-' })
map('n', '<A-c>', '<Cmd>BufferClose<CR>', { desc = 'Close tab' })
