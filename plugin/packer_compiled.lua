-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/luke/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?.lua;/home/luke/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?/init.lua;/home/luke/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?.lua;/home/luke/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/luke/.cache/nvim/packer_hererocks/2.1.1713484068/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/luke/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  catppuccin = {
    config = { "\27LJ\2\nÝ\21\0\1\4\0x\0Î\0015\1\3\0005\2\1\0009\3\0\0=\3\2\2=\2\4\0015\2\6\0009\3\5\0=\3\2\0025\3\a\0=\3\b\2=\2\t\0015\2\v\0009\3\n\0=\3\2\0025\3\f\0=\3\b\2=\2\r\0015\2\14\0009\3\0\0=\3\2\2=\2\15\0015\2\16\0009\3\0\0=\3\2\0025\3\17\0=\3\b\2=\2\18\0015\2\20\0009\3\19\0=\3\2\2=\2\21\0015\2\23\0009\3\22\0=\3\2\0025\3\24\0=\3\b\2=\2\25\0015\2\27\0009\3\26\0=\3\2\2=\2\28\0015\2\30\0009\3\29\0=\3\2\0025\3\31\0=\3\b\2=\2 \0015\2\"\0009\3!\0=\3\2\2=\2#\0015\2%\0009\3$\0=\3\2\0025\3&\0=\3\b\2=\2'\0015\2(\0009\3\n\0=\3\2\2=\2)\0015\2+\0009\3*\0=\3\2\0025\3,\0=\3\b\2=\2-\0015\2.\0009\3!\0=\3\2\2=\2/\0015\0021\0009\0030\0=\3\2\2=\0022\0015\0023\0009\3\19\0=\3\2\0025\0034\0=\3\b\2=\0025\0015\0026\0009\0030\0=\3\2\2=\0027\0015\0028\0009\3\0\0=\3\2\2=\0029\0015\2:\0009\3\26\0=\3\2\2=\2;\0015\2=\0009\3<\0=\3\2\2=\2>\0015\2@\0009\3?\0=\3\2\2=\2A\0015\2B\0009\3\0\0=\3\2\2=\2C\0015\2D\0009\3\5\0=\3\2\2=\2E\0015\2G\0009\3F\0=\3\2\0025\3H\0=\3\b\2=\2I\0015\2J\0009\0030\0=\3\2\2=\2K\0015\2L\0009\3\22\0=\3\2\2=\2M\0015\2N\0009\3\5\0=\3\2\0025\3O\0=\3\b\2=\2P\0015\2Q\0009\3*\0=\3\2\2=\2R\0015\2S\0009\3\n\0=\3\2\0025\3T\0=\3\b\2=\2U\0015\2V\0009\0030\0=\3\2\0025\3W\0=\3\b\2=\2X\0015\2Y\0009\3\0\0=\3\2\0025\3Z\0=\3\b\2=\2[\0015\2\\\0009\3*\0=\3\2\2=\2]\0015\2_\0009\3^\0=\3\2\2=\2`\0015\2a\0009\3\22\0=\3\2\2=\2b\0015\2c\0009\3\19\0=\3\2\2=\2d\0015\2e\0009\3\5\0=\3\2\0025\3f\0=\3\b\2=\2g\0015\2h\0009\3\5\0=\3\2\2=\2i\0015\2j\0009\3$\0=\3\2\2=\2k\0015\2l\0009\3\19\0=\3\2\0025\3m\0=\3\b\2=\2n\0015\2o\0009\3\19\0=\3\2\0025\3p\0=\3\b\2=\2q\0015\2r\0009\3F\0=\3\2\2=\2s\0015\2t\0009\3\n\0=\3\2\2=\2u\0015\2v\0009\3\29\0=\3\2\2=\2w\1L\1\2\0\v@event\1\0\1\afg\0\15@attribute\1\0\1\afg\0\16@annotation\1\0\1\afg\0\f@repeat\1\2\0\0\14underline\1\0\2\afg\0\nstyle\0\17@conditional\1\2\0\0\vitalic\1\0\2\afg\0\nstyle\0\14@constant\1\0\1\afg\0\15@structure\1\0\1\afg\0\18@storageclass\1\2\0\0\tbold\1\0\2\afg\0\nstyle\0\20@variable.local\1\0\1\afg\0\15@parameter\1\0\1\afg\0\v@field\1\0\1\afg\0\14rosewater\17@constructor\1\0\1\afg\0\19@exception.qml\1\2\0\0\tbold\1\0\2\afg\0\nstyle\0\22@text.literal.qml\1\2\0\0\vitalic\1\0\2\afg\0\nstyle\0\20@text.title.qml\1\2\0\0\tbold\1\0\2\afg\0\nstyle\0\15@label.qml\1\0\1\afg\0\15@debug.qml\1\2\0\0\freverse\1\0\2\afg\0\nstyle\0\17@preproc.qml\1\0\1\afg\0\17@include.qml\1\0\1\afg\0\19@namespace.qml\1\2\0\0\tbold\1\0\2\afg\0\nstyle\0\rflamingo\23@tag.attribute.qml\1\0\1\afg\0\r@tag.qml\1\0\1\afg\0\31@punctuation.delimiter.qml\1\0\1\afg\0\roverlay1\29@punctuation.bracket.qml\1\0\1\afg\0\roverlay2\18@operator.qml\1\0\1\afg\0\17@comment.qml\1\0\1\afg\0\15@float.qml\1\0\1\afg\0\17@boolean.qml\1\2\0\0\vitalic\1\0\2\afg\0\nstyle\0\16@number.qml\1\0\1\afg\0\tteal\16@string.qml\1\0\1\afg\0\21@constructor.qml\1\2\0\0\tbold\1\0\2\afg\0\nstyle\0\rsapphire\16@method.qml\1\0\1\afg\0\26@function.builtin.qml\1\2\0\0\tbold\1\0\2\afg\0\nstyle\0\npeach\18@function.qml\1\0\1\afg\0\ngreen\24@keyword.return.qml\1\2\0\0\tbold\1\0\2\afg\0\nstyle\0\tpink\26@keyword.operator.qml\1\0\1\afg\0\bsky\17@keyword.qml\1\2\0\0\vitalic\1\0\2\afg\0\nstyle\0\vmaroon\24@variable.local.qml\1\0\1\afg\0\nmauve\26@variable.builtin.qml\1\2\0\0\vitalic\1\0\2\afg\0\nstyle\0\18@variable.qml\1\0\1\afg\0\14@type.qml\1\2\0\0\tbold\1\0\2\afg\0\nstyle\0\tblue\18@property.qml\nstyle\1\2\0\0\vitalic\1\0\2\afg\0\nstyle\0\vyellow\fComment\1\0+\17@boolean.qml\0\16@number.qml\0\16@string.qml\0\21@constructor.qml\0\16@method.qml\0\26@function.builtin.qml\0\18@function.qml\0\24@keyword.return.qml\0\26@keyword.operator.qml\0\17@keyword.qml\0\24@variable.local.qml\0\26@variable.builtin.qml\0\18@variable.qml\0\14@type.qml\0\18@property.qml\0\17@conditional\0\v@event\0\15@attribute\0\16@annotation\0\f@repeat\0\fComment\0\14@constant\0\15@structure\0\18@storageclass\0\20@variable.local\0\15@parameter\0\v@field\0\17@constructor\0\19@exception.qml\0\22@text.literal.qml\0\20@text.title.qml\0\15@label.qml\0\15@debug.qml\0\17@preproc.qml\0\17@include.qml\0\19@namespace.qml\0\23@tag.attribute.qml\0\r@tag.qml\0\31@punctuation.delimiter.qml\0\29@punctuation.bracket.qml\0\18@operator.qml\0\17@comment.qml\0\15@float.qml\0\afg\1\0\1\afg\0\bredû\1\1\0\5\0\r\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0026\1\0\0'\3\3\0B\1\2\0029\1\4\0015\3\6\0005\4\5\0=\4\a\0033\4\b\0=\4\t\3B\1\2\0016\1\n\0009\1\v\0019\1\f\1'\3\3\0B\1\2\1K\0\1\0\16colorscheme\bcmd\bvim\22custom_highlights\0\17integrations\1\0\2\17integrations\0\22custom_highlights\0\1\0\1\15treesitter\2\nsetup\15catppuccin\16get_palette\24catppuccin.palettes\frequire\0" },
    loaded = true,
    path = "/home/luke/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/luke/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  harpoon = {
    loaded = true,
    path = "/home/luke/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/luke/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/luke/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/luke/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/luke/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/luke/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/luke/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/luke/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/luke/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rose-pine"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0" },
    loaded = true,
    path = "/home/luke/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/luke/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/luke/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/luke/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: rose-pine
time([[Config for rose-pine]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0", "config", "rose-pine")
time([[Config for rose-pine]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\nÝ\21\0\1\4\0x\0Î\0015\1\3\0005\2\1\0009\3\0\0=\3\2\2=\2\4\0015\2\6\0009\3\5\0=\3\2\0025\3\a\0=\3\b\2=\2\t\0015\2\v\0009\3\n\0=\3\2\0025\3\f\0=\3\b\2=\2\r\0015\2\14\0009\3\0\0=\3\2\2=\2\15\0015\2\16\0009\3\0\0=\3\2\0025\3\17\0=\3\b\2=\2\18\0015\2\20\0009\3\19\0=\3\2\2=\2\21\0015\2\23\0009\3\22\0=\3\2\0025\3\24\0=\3\b\2=\2\25\0015\2\27\0009\3\26\0=\3\2\2=\2\28\0015\2\30\0009\3\29\0=\3\2\0025\3\31\0=\3\b\2=\2 \0015\2\"\0009\3!\0=\3\2\2=\2#\0015\2%\0009\3$\0=\3\2\0025\3&\0=\3\b\2=\2'\0015\2(\0009\3\n\0=\3\2\2=\2)\0015\2+\0009\3*\0=\3\2\0025\3,\0=\3\b\2=\2-\0015\2.\0009\3!\0=\3\2\2=\2/\0015\0021\0009\0030\0=\3\2\2=\0022\0015\0023\0009\3\19\0=\3\2\0025\0034\0=\3\b\2=\0025\0015\0026\0009\0030\0=\3\2\2=\0027\0015\0028\0009\3\0\0=\3\2\2=\0029\0015\2:\0009\3\26\0=\3\2\2=\2;\0015\2=\0009\3<\0=\3\2\2=\2>\0015\2@\0009\3?\0=\3\2\2=\2A\0015\2B\0009\3\0\0=\3\2\2=\2C\0015\2D\0009\3\5\0=\3\2\2=\2E\0015\2G\0009\3F\0=\3\2\0025\3H\0=\3\b\2=\2I\0015\2J\0009\0030\0=\3\2\2=\2K\0015\2L\0009\3\22\0=\3\2\2=\2M\0015\2N\0009\3\5\0=\3\2\0025\3O\0=\3\b\2=\2P\0015\2Q\0009\3*\0=\3\2\2=\2R\0015\2S\0009\3\n\0=\3\2\0025\3T\0=\3\b\2=\2U\0015\2V\0009\0030\0=\3\2\0025\3W\0=\3\b\2=\2X\0015\2Y\0009\3\0\0=\3\2\0025\3Z\0=\3\b\2=\2[\0015\2\\\0009\3*\0=\3\2\2=\2]\0015\2_\0009\3^\0=\3\2\2=\2`\0015\2a\0009\3\22\0=\3\2\2=\2b\0015\2c\0009\3\19\0=\3\2\2=\2d\0015\2e\0009\3\5\0=\3\2\0025\3f\0=\3\b\2=\2g\0015\2h\0009\3\5\0=\3\2\2=\2i\0015\2j\0009\3$\0=\3\2\2=\2k\0015\2l\0009\3\19\0=\3\2\0025\3m\0=\3\b\2=\2n\0015\2o\0009\3\19\0=\3\2\0025\3p\0=\3\b\2=\2q\0015\2r\0009\3F\0=\3\2\2=\2s\0015\2t\0009\3\n\0=\3\2\2=\2u\0015\2v\0009\3\29\0=\3\2\2=\2w\1L\1\2\0\v@event\1\0\1\afg\0\15@attribute\1\0\1\afg\0\16@annotation\1\0\1\afg\0\f@repeat\1\2\0\0\14underline\1\0\2\afg\0\nstyle\0\17@conditional\1\2\0\0\vitalic\1\0\2\afg\0\nstyle\0\14@constant\1\0\1\afg\0\15@structure\1\0\1\afg\0\18@storageclass\1\2\0\0\tbold\1\0\2\afg\0\nstyle\0\20@variable.local\1\0\1\afg\0\15@parameter\1\0\1\afg\0\v@field\1\0\1\afg\0\14rosewater\17@constructor\1\0\1\afg\0\19@exception.qml\1\2\0\0\tbold\1\0\2\afg\0\nstyle\0\22@text.literal.qml\1\2\0\0\vitalic\1\0\2\afg\0\nstyle\0\20@text.title.qml\1\2\0\0\tbold\1\0\2\afg\0\nstyle\0\15@label.qml\1\0\1\afg\0\15@debug.qml\1\2\0\0\freverse\1\0\2\afg\0\nstyle\0\17@preproc.qml\1\0\1\afg\0\17@include.qml\1\0\1\afg\0\19@namespace.qml\1\2\0\0\tbold\1\0\2\afg\0\nstyle\0\rflamingo\23@tag.attribute.qml\1\0\1\afg\0\r@tag.qml\1\0\1\afg\0\31@punctuation.delimiter.qml\1\0\1\afg\0\roverlay1\29@punctuation.bracket.qml\1\0\1\afg\0\roverlay2\18@operator.qml\1\0\1\afg\0\17@comment.qml\1\0\1\afg\0\15@float.qml\1\0\1\afg\0\17@boolean.qml\1\2\0\0\vitalic\1\0\2\afg\0\nstyle\0\16@number.qml\1\0\1\afg\0\tteal\16@string.qml\1\0\1\afg\0\21@constructor.qml\1\2\0\0\tbold\1\0\2\afg\0\nstyle\0\rsapphire\16@method.qml\1\0\1\afg\0\26@function.builtin.qml\1\2\0\0\tbold\1\0\2\afg\0\nstyle\0\npeach\18@function.qml\1\0\1\afg\0\ngreen\24@keyword.return.qml\1\2\0\0\tbold\1\0\2\afg\0\nstyle\0\tpink\26@keyword.operator.qml\1\0\1\afg\0\bsky\17@keyword.qml\1\2\0\0\vitalic\1\0\2\afg\0\nstyle\0\vmaroon\24@variable.local.qml\1\0\1\afg\0\nmauve\26@variable.builtin.qml\1\2\0\0\vitalic\1\0\2\afg\0\nstyle\0\18@variable.qml\1\0\1\afg\0\14@type.qml\1\2\0\0\tbold\1\0\2\afg\0\nstyle\0\tblue\18@property.qml\nstyle\1\2\0\0\vitalic\1\0\2\afg\0\nstyle\0\vyellow\fComment\1\0+\17@boolean.qml\0\16@number.qml\0\16@string.qml\0\21@constructor.qml\0\16@method.qml\0\26@function.builtin.qml\0\18@function.qml\0\24@keyword.return.qml\0\26@keyword.operator.qml\0\17@keyword.qml\0\24@variable.local.qml\0\26@variable.builtin.qml\0\18@variable.qml\0\14@type.qml\0\18@property.qml\0\17@conditional\0\v@event\0\15@attribute\0\16@annotation\0\f@repeat\0\fComment\0\14@constant\0\15@structure\0\18@storageclass\0\20@variable.local\0\15@parameter\0\v@field\0\17@constructor\0\19@exception.qml\0\22@text.literal.qml\0\20@text.title.qml\0\15@label.qml\0\15@debug.qml\0\17@preproc.qml\0\17@include.qml\0\19@namespace.qml\0\23@tag.attribute.qml\0\r@tag.qml\0\31@punctuation.delimiter.qml\0\29@punctuation.bracket.qml\0\18@operator.qml\0\17@comment.qml\0\15@float.qml\0\afg\1\0\1\afg\0\bredû\1\1\0\5\0\r\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0026\1\0\0'\3\3\0B\1\2\0029\1\4\0015\3\6\0005\4\5\0=\4\a\0033\4\b\0=\4\t\3B\1\2\0016\1\n\0009\1\v\0019\1\f\1'\3\3\0B\1\2\1K\0\1\0\16colorscheme\bcmd\bvim\22custom_highlights\0\17integrations\1\0\2\17integrations\0\22custom_highlights\0\1\0\1\15treesitter\2\nsetup\15catppuccin\16get_palette\24catppuccin.palettes\frequire\0", "config", "catppuccin")
time([[Config for catppuccin]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
