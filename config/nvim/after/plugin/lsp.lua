local lsp = require("lsp-zero")
require('lspconfig').intelephense.setup{
    stubs = {
        "bcmath",
                "bz2",
                "calendar",
                "Core",
                "curl",
                "date",
                "dba",
                "dom",
                "enchant",
                "fileinfo",
                "filter",
                "ftp",
                "gd",
                "gettext",
                "hash",
                "iconv",
                "imap",
                "intl",
                "json",
                "ldap",
                "libxml",
                "mbstring",
                "mcrypt",
                "mysql",
                "mysqli",
                "password",
                "pcntl",
                "pcre",
                "PDO",
                "pdo_mysql",
                "Phar",
                "readline",
                "recode",
                "Reflection",
                "regex",
                "session",
                "SimpleXML",
                "soap",
                "sockets",
                "sodium",
                "SPL",
                "standard",
                "superglobals",
                "sysvsem",
                "sysvshm",
                "tokenizer",
                "xml",
                "xdebug",
                "xmlreader",
                "xmlwriter",
                "yaml",
                "zip",
                "zlib",
                "wordpress",
                "woocommerce",
                "acf-pro",
                "acf-stubs",
                "wordpress-globals",
                "wp-cli",
                "genesis",
                "polylang",
            "sbi"},
            diagnostics = {enable = true}

}


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
        ['pylsp'] = {'python'},
        ['php'] = {'intelephense'}
    }
})
lsp.setup()
