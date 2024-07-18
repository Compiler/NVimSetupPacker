
function ColorMyPencils(color)
    color = color or "rose-pine"
    local colors = require("catppuccin.palettes").get_palette()
    vim.cmd.colorscheme(color)
    print("Chosen color: ", color)
    vim.api.nvim_set_hl(0, "Comment", { fg = "#5DAD55" })
    vim.api.nvim_set_hl(0, "@property", { fg = "#FE400B", italic=true })
    vim.api.nvim_set_hl(0, "@operator", { fg = "#ffffff", bold=true })
    vim.api.nvim_set_hl(0, "@function", { fg = "#90BBE9", italic=true })
    vim.api.nvim_set_hl(0, "@function.method.call", { fg = "#7CB1E8", italic=true })
    vim.api.nvim_set_hl(0, "@variable", { fg = colors.peach, italic=true })
    vim.api.nvim_set_hl(0, "@variable.member", { fg = "#DF7F34", italic=true })
    vim.api.nvim_set_hl(0, "@variable.builtin", { fg = colors.red, italic=true })
    vim.api.nvim_set_hl(0, "@keyword", { fg = "orange", bold=true })
    vim.api.nvim_set_hl(0, "@keyword.conditional", { fg = "#CE4224", bold=true })
    vim.api.nvim_set_hl(0, "@keyword.repeat", { fg = "#CE4224", bold=true })
    vim.api.nvim_set_hl(0, "@keyword.modifier", { fg = "orange", bold=true, italic=true })
    vim.api.nvim_set_hl(0, "@type", { fg = "#00FFFF", bold=true })
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils('catppuccin-mocha')
