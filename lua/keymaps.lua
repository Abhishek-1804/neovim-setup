-- Set the leader key to space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local opts = { noremap = true, silent = true }

-- Copy and yank enhancements
vim.keymap.set("n", "Y", "y$", opts)                              -- Make Y yank to end of line
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], opts)            -- Yank to clipboard in normal and visual mode
vim.keymap.set("n", "<leader>Y", [["+Y]], opts)                   -- Yank entire line to clipboard
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts) -- Search and replace the word under cursor

-- Movement enhancements
vim.keymap.set("n", "<C-j>", "<C-W>j", opts)                      -- Move to the window below
vim.keymap.set("n", "<C-k>", "<C-W>k", opts)                      -- Move to the window above
vim.keymap.set("n", "<C-h>", "<C-W>h", opts)                      -- Move to the left window
vim.keymap.set("n", "<C-l>", "<C-W>l", opts)                      -- Move to the right window
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)                -- Move selected lines down in visual mode
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)                -- Move selected lines up in visual mode

-- Buffer and search enhancements
vim.keymap.set("n", "<leader>ba", ":bufdo bd<CR>", opts)          -- Close all buffers
vim.keymap.set("n", "<leader>l", ":bnext<CR>", opts)              -- Move to the next buffer
vim.keymap.set("n", "<leader>h", ":bprevious<CR>", opts)          -- Move to the previous buffer
vim.keymap.set("n", "<leader>w", ":w!<CR>", opts)                 -- Quick save
vim.keymap.set("n", "<leader><CR>", ":noh<CR>", opts)             -- Clear search highlight

-- Editing enhancements
vim.keymap.set("n", "0", "^", opts)                               -- Move cursor to the first non-blank character of the line

-- Automatically close parentheses and add cursor inside
vim.api.nvim_set_keymap('i', '(', '()<Esc>i', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '{', '{}<Esc>i', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '{<CR>', '{<CR>}<Esc>O', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '[', '[]<Esc>i', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<', '<><Esc>i', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', "'", "''<Esc>i", {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '"', '""<Esc>i', {noremap = true, silent = true})

-- cd into current directory
vim.api.nvim_set_keymap("n", "<leader>cd", ":cd %:p:h<CR>", {noremap = true, silent = true})
