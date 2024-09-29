vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.api.nvim_set_keymap('n', '<leader>o', '``', { noremap = true, silent = true })

-- Map <leader>m to run :!make

--nnoremap <leader>m :wa<CR>:botright split term://make<CR>i
--wa<CR>:botright split term://make<CR>i

--vim.api.nvim_set_keymap('n', '<leader>m', ':wa<CR>:!make<CR>', { noremap = true, silent = true })

--vim.api.nvim_set_keymap('n', '<leader>m', ':wa<CR>:botright resize +10 | split term://make<CR>i', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<leader>m', ':wa<CR>:botright split term://make<CR>:resize -10<CR>i', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<leader>m', ':wa<CR>:botright split term://make<CR>:resize 10<CR>i', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>m', ':wa<CR>:botright split term://make<CR>:resize ' .. math.floor(vim.o.lines / 4) .. '<CR>i', { noremap = true, silent = true })
--/mnt/c/Users/19146/Code/Cast/CastEngine
