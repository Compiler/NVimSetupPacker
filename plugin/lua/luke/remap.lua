vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.api.nvim_set_keymap('n', '<leader>s', ':Startify<CR>', { noremap = true, silent = true })

