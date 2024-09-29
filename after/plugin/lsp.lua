-- Mason configuration
require("mason").setup()

local lsp = require("lsp-zero")

-- Mason-lspconfig configuration
require("mason-lspconfig").setup({
    ensure_installed = {"lua_ls", "rust_analyzer", "clangd", "glslls"}, --qmlls, qml6_lsp
    handlers = {
    lsp.default_setup,
    clangd = function()
      require('lspconfig').clangd.setup({
        capabilities = {
          offsetEncoding = 'utf-8',
        },
      })   
    end,
  }
})

-- LSP Zero configuration

lsp.preset("recommended")

-- Fix Undefined global 'vim'
lsp.configure('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

lsp.configure('qmlls', {
  --cmd = {'/usr/bin/qmlls.exe'}
  --cmd = {'/mnt/c/Qt/6.7.2/mingw_64/bin/qmlls.exe', '--build_dir', 'C:/Users/luker/Code/build-videoenhanceai/'}
})



local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

cmp.setup({
  mapping = cmp_mappings,
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }
})
--lsp.setup_nvim_cmp({ mapping = cmp_mappings })

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    },
    float_border = 'rounded',
    verbose_diagnostics = true, -- More detailed diagnostic messages
    code_lens_refresh = true
})

lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "gb", "<C-t>", opts)
    vim.keymap.set("n", "[d", function() vim.lsp.buf.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.lsp.buf.goto_prev() end, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)

    -- auto complete in insert
    vim.keymap.set('i', '<C-Space>', '<C-x><C-o>', opts)
    -- vim.keymap.set('i', '<C-CR>', '<C-y>', opts)

    if client.name == "clangd" then
        vim.keymap.set("n", "<leader>fo", "<cmd>ClangdSwitchSourceHeader<CR>", opts)
    end
    --client.server_capabilities.semanticTokensProvider = nil

end)

local lspconfig = require('lspconfig')
lspconfig.qmlls.setup {
  --cmd = { "qmlls" },
  filetypes = { "qml" },
  root_dir = function(fname)
    return lspconfig.util.find_git_ancestor(fname) or vim.loop.os_homedir()
  end,
  settings = {}
}
lspconfig.clangd.setup({
  capabilities = {
    textDocument = {
      semanticHighlighting = false,
    },
    offsetEncoding = { 'utf-8' },
  },
  filetypes = {"c", "cpp"}, -- qml + js
  root_dir = lspconfig.util.root_pattern(
    '.clangd',
    '.clang-tidy',
    '.clang-format',
    'compile_commands.json',
    'compile_flags.txt',
    'configure.ac',
    '.git'
  ),
})

lsp.setup()


lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})








