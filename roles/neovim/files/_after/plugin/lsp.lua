local lsp = require('lsp-zero').preset({
    name = 'recommended',
    set_lsp_keymaps = true,
    manage_nvim_cmp = true,
    suggest_lsp_servers = true,
})
local opts = { noremap = true, silent = true }

lsp.ensure_installed({
    'tsserver',
    'gopls',
    'tailwindcss',
    'lua_ls',
    'yamlls',
})

-- Fix Undefined global 'vim'
lsp.configure('lua_lsp', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

-- Fix key orderning issue
lsp.configure("yamlls", {
  settings = {
    yaml = {
      keyOrdering = false
    }
  }
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
})

lsp.on_attach(function(_, bufnr)
    local bufopts = { buffer = bufnr, remap = false }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format() end, bufopts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, bufopts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, bufopts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, bufopts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, bufopts)
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = {
        source = "always",
        prefix = '□',
    },
    severity_sort = true,
    float = {
        source = "always",
    },
})
