local lsp = require("lsp-zero")
require('lspconfig').denols.setup{}


lsp.preset('recommended')
lsp.ensure_installed({
	"jedi_language_server",
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

lsp.setup()
