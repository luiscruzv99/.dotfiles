local tab = require('tabline')
local line = require('lualine')

tab.setup{
    enable = true,

    options = {
        section_separators = {'', ''},
        component_separators = {'', ''},
        show_tabs_always = false,
        show_devicons = true,
        show_filename_only = true,
    }
}

vim.cmd[[
set guioptions-=e 
set sessionoptions+=tabpages,globals 
]]

line.setup()

