vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
            local colors = require("catppuccin.palettes").get_palette()
            require("catppuccin").setup({
                integrations = {
                    treesitter = true,
                },
                custom_highlights = function(colors)
                    return {
                        -- QML specific highlights
                        Comment = { fg = colors.red },
                        ["@property.qml"] = { fg = colors.yellow, style = { "italic" } },
                        ["@type.qml"] = { fg = colors.blue, style = { "bold" } },
                        ["@variable.qml"] = { fg = colors.red },
                        ["@variable.builtin.qml"] = { fg = colors.red, style = { "italic" } },
                        ["@variable.local.qml"] = { fg = colors.mauve },
                        ["@keyword.qml"] = { fg = colors.maroon, style = { "italic" } },
                        ["@keyword.operator.qml"] = { fg = colors.sky },
                        ["@keyword.return.qml"] = { fg = colors.pink, style = { "bold" } },
                        ["@function.qml"] = { fg = colors.green },
                        ["@function.builtin.qml"] = { fg = colors.peach, style = { "bold" } },
                        ["@method.qml"] = { fg = colors.blue },
                        ["@constructor.qml"] = { fg = colors.sapphire, style = { "bold" } },
                        ["@string.qml"] = { fg = colors.green },
                        ["@number.qml"] = { fg = colors.teal },
                        ["@boolean.qml"] = { fg = colors.mauve, style = { "italic" } },
                        ["@float.qml"] = { fg = colors.teal },
                        ["@comment.qml"] = {fg = colors.red},--{ fg = colors.overlay0, style = { "italic" } },
                        ["@operator.qml"] = { fg = colors.sky },
                        ["@punctuation.bracket.qml"] = { fg = colors.overlay2 },
                        ["@punctuation.delimiter.qml"] = { fg = colors.overlay1 },
                        ["@tag.qml"] = { fg = colors.red },
                        ["@tag.attribute.qml"] = { fg = colors.yellow },
                        ["@namespace.qml"] = { fg = colors.flamingo, style = { "bold" } },
                        ["@include.qml"] = { fg = colors.teal },
                        ["@preproc.qml"] = { fg = colors.maroon },
                        ["@debug.qml"] = { fg = colors.yellow, style = { "reverse" } },
                        ["@label.qml"] = { fg = colors.sapphire },
                        ["@text.title.qml"] = { fg = colors.blue, style = { "bold" } },
                        ["@text.literal.qml"] = { fg = colors.teal, style = { "italic" } },
                        ["@exception.qml"] = { fg = colors.red, style = { "bold" } },
                    }
                end
            })
            vim.cmd.colorscheme "catppuccin"
        end
    }
    use { "rose-pine/neovim", as = "rose-pine", config = function() vim.cmd('colorscheme rose-pine') end}


    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        requires = { {'nvim-lua/plenary.nvim'} },
        config = function()
            require('telescope').setup{
                defaults = {
                    -- Exclude files in 'include/' directory for both find_files and live_grep
                    file_ignore_patterns = { "include/.*" }  -- Optional for general ignoring
                },
                pickers = {
                    find_files = {
                        -- Explicitly tell find_files to exclude the include directory
                        find_command = { "rg", "--files", "--hidden", "--glob", "!**/include/**" }
                    },
                    live_grep = {
                        -- Exclude the include directory from live_grep search results
                        additional_args = function()
                            return { "--glob", "!**/include/**" }
                        end
                    }
                }
            }
        end
    }


    use { 'nvim-treesitter/playground' }
    use { 'theprimeagen/harpoon' }
    use { 'mbbill/undotree' }
    use { 'tpope/vim-fugitive' }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }
     use 'tikhomirov/vim-glsl'
end)
