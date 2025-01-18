-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>r", ":w<CR>:!python %<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>r", ":sp<CR>:term python %<CR>", { noremap = true, silent = true })
