
function ColorMyPencils(color)
    color = color or "rose-pine"
    local colors = require("catppuccin.palettes").get_palette()
    vim.cmd.colorscheme(color)
    print("Chosen color: ", color)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils('catppuccin')
