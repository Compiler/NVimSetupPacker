local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });	
end)

require('telescope').setup{
    defaults = {
        -- Globally ignore the .git directory and the include directory
        file_ignore_patterns = { "%.git/.*", "include/.*" },  
    },
    pickers = {
        find_files = {
            -- Respect .gitignore and exclude the include and .git directories
            find_command = { "rg", "--files", "--hidden", "--ignore-vcs", "--glob", "!**/include/**", "--glob", "!**/.git/**" }
        },
        live_grep = {
            -- Respect .gitignore and exclude the include and .git directories
            additional_args = function(opts)
                return { "--ignore-vcs", "--glob", "!**/include/**", "--glob", "!**/.git/**" }
            end
        }
    }
}
