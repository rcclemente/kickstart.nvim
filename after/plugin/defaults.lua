vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.shiftwidth = 2 -- Shift 2 spaces when tab
vim.opt.tabstop = 2 -- tab == 2 spaces
vim.opt.smartindent = true -- Autoindent new lines

local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- set filetypes
vim.filetype.add {
  extension = {
    tf = 'terraform',
  },
}

-- Remap space as leader key
keymap('', '<Space>', '<Nop>', opts)
-- vim.g.mapleader = ' '
-- vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
keymap('n', '<Enter>', 'O<Esc>j', opts)
keymap('n', 'Y', 'y$', opts)

-- Better window navigation -- kickstart built in now
-- keymap("n", "<C-h>", "<C-w>h", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts)
-- keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap('n', '<C-Up>', ':resize -2<CR>', opts)
keymap('n', '<C-Down>', ':resize +2<CR>', opts)
keymap('n', '<C-Left>', ':vertical resize -2<CR>', opts)
keymap('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Navigate buffers
-- keymap('n', '<S-l>', ':bnext<CR>', opts)
-- keymap('n', '<S-h>', ':bprevious<CR>', opts)

-- Move text up and down
-- keymap("n", "<M-j>", "<Esc>:m .+1<CR>==gi", opts)
-- keymap("n", "<M-k>", "<Esc>:m .-2<CR>==gi", opts)

keymap('v', 'p', '"_dP', opts) -- Paste and overwrite in visual mode

keymap('n', 'Y', 'y$', opts) -- Copy line
keymap('n', '``', '@:', opts) -- run last colon command
keymap('n', '<Leader>q', ':nohlsearch<CR>', opts) -- remove highlight from searches
keymap('n', '<Leader>sa', 'gg^vG$', { desc = '[S]elect [A]ll text in file' })
-- keymap('n', '<Leader>r', ':so ~/.config/kicknvim/init.lua<CR>:nohlsearch<CR>', opts) -- reload
keymap('n', 'vv', ':vsplit | b', opts) -- open vsplit
keymap('n', 'vs', ':split | b', opts) -- open split

-- Visual --
-- Stay in indent mode
-- keymap('v', '<', '<gv', opts)
-- keymap('v', '>', '>gv', opts)

-- Visual Block --
-- Move text up and down
-- keymap('x', 'J', ":move '>+1<CR>gv-gv", opts)
-- keymap('x', 'K', ":move '<-2<CR>gv-gv", opts)
-- keymap('x', '<A-j>', ":move '>+1<CR>gv-gv", opts)
-- keymap('x', '<A-k>', ":move '<-2<CR>gv-gv", opts)

-- Command --
-- Menu navigation
-- keymap("c", "<C-n>",  'pumvisible() ? "\\<C-n>" : "\\<C-j>"', { expr = true, noremap = true } )
-- keymap("c", "<C-p>",  'pumvisible() ? "\\<C-p>" : "\\<C-k>"', { expr = true, noremap = true } )

-- nvim-tree
-- keymap('n', '<Leader>t', ':NvimTreeToggle<CR>', opts)
-- keymap('n', '<Leader>e', ':NvimTreeFindFile<CR>', opts)

-- Close all buffers
-- keymap('n', '<Leader>bd', ':BufOnly<CR>', opts)

-- Laygit
-- keymap('n', '<Leader>gg', ':LazyGit<CR>', opts)
--
-- Neo Tree
vim.keymap.set('n', '<leader>F', ':Neotree float<CR>', { desc = '[F]ile Browser' })
vim.keymap.set('n', '<leader>C', ':Neotree float reveal<CR>', { desc = 'File Browser [C]urrent' })

-- Copy file or path
vim.keymap.set('n', '<leader>cr', ':let @+=expand("%")<CR>', { desc = '[C]opy File [R]elative Path' })
vim.keymap.set('n', '<leader>cf', ':let @+=expand("%:p")<CR>', { desc = '[C]opy File [F]ull Path' })
vim.keymap.set('n', '<leader>cd', ':let @+=expand("%:p:h")<CR>', { desc = '[C]opy File [D]irectory' })
vim.keymap.set('n', '<leader>cn', ':let @+=expand("%:t")<CR>', { desc = '[C]opy File[n]ame' })

-- Telescope
-- search in cwd
vim.keymap.set(
  'n',
  '<leader>sy',
  "<cmd>lua require'telescope.builtin'.find_files({  cwd = vim.fn.expand '%:p:h' })<cr>",
  { desc = '[S]earch in Current Buffer`s Director[y]' }
)
-- search hidden
vim.keymap.set(
  'n',
  '<leader>si',
  "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>",
  { desc = '[S]earch h[i]dden(exclude .git/)' }
)
