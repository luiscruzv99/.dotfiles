local lsp = require("lsp-zero")
--require('lspconfig').denols.setup{}


lsp.preset('recommended')
lsp.ensure_installed({
	"pylsp",
	"tsserver",
	"eslint",
	"lua_ls"
})

local cmp = require("cmp")
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-Space>'] = cmp.mapping.complete(),
    ['<Enter>'] = cmp.mapping.confirm({select=true})
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.format_on_save({
    format_opts={
        async = false,
        timeout = 10000,
    },
    servers = {
        ['pylsp'] = {'python'}
    }
})
lsp.setup()
