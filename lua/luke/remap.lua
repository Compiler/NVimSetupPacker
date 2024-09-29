vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.api.nvim_set_keymap('n', '<leader>o', '``', { noremap = true, silent = true })

-- Map <leader>m to run :!make
vim.api.nvim_set_keymap('n', '<leader>m', ':wa<CR>:!make<CR>', { noremap = true, silent = true })

--/mnt/c/Users/19146/Code/Cast/CastEngine
