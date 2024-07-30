vim.g.initial_cwd = vim.fn.getcwd()
print(vim.g.initial_cwd)
local builtin = require('telescope.builtin')

-- Helper function to use the initial working directory
local function telescope_initial_cwd(telescope_func)
    return function()
        telescope_func({ cwd = vim.g.initial_cwd })
    end
end

-- Update keymappings
vim.keymap.set('n', '<leader>ff', telescope_initial_cwd(builtin.find_files), {})
vim.keymap.set('n', '<leader>gf', telescope_initial_cwd(builtin.git_files), {})
vim.keymap.set('n', '<leader>fg', telescope_initial_cwd(builtin.live_grep), {})
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ 
        search = vim.fn.input("Grep > "),
        cwd = vim.g.initial_cwd
    })
end)

-- Debug print
vim.keymap.set('n', '<leader>ff', function()
    print("Initial working directory: " .. vim.g.initial_cwd)
    print("Current working directory: " .. vim.fn.getcwd())
    telescope_initial_cwd(builtin.find_files)()
end, {})
