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
                        ["@comment.qml"] = { fg = colors.overlay0, style = { "italic" } },
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

                        -- General highlights
                        ["@constructor"] = { fg = colors.sapphire },
                        ["@field"] = { fg = colors.rosewater },
                        ["@parameter"] = { fg = colors.maroon },
                        ["@variable.local"] = { fg = colors.mauve },
                        ["@storageclass"] = { fg = colors.yellow, style = { "bold" } },
                        ["@structure"] = { fg = colors.yellow },
                        ["@constant"] = { fg = colors.peach },
                        ["@conditional"] = { fg = colors.mauve, style = { "italic" } },
                        ["@repeat"] = { fg = colors.mauve, style = { "underline" } },
                        ["@annotation"] = { fg = colors.flamingo },
                        ["@attribute"] = { fg = colors.blue },
                        ["@event"] = { fg = colors.pink },
                    }
                end
            })
            vim.cmd.colorscheme "catppuccin"
            -- Set highlights directly after colorscheme is applied
            vim.api.nvim_create_autocmd("ColorScheme", {
                pattern = "catppuccin",
                callback = function()
                    vim.api.nvim_set_hl(0, "@variable", { fg = require("catppuccin.palettes").get_palette().red })
                    vim.api.nvim_set_hl(0, "@variable.qml", { fg = require("catppuccin.palettes").get_palette().red })
                    -- You can add more highlight settings here
                end
            })
        end
    }
    use { "rose-pine/neovim", as = "rose-pine", config = function() vim.cmd('colorscheme rose-pine') end}
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        requires = { {'nvim-lua/plenary.nvim'} }
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
end)
