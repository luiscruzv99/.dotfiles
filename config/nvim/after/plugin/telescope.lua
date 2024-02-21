local telescope = require('telescope')
local todo = require('todo-comments')
todo.setup{}

telescope.setup{

    pickers = {
        find_files = {
            theme = 'dropdown'
        }
    }
}

telescope.load_extension('toggletasks')

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>gt', builtin.live_grep, {})
vim.keymap.set('n', '<leader>lb', builtin.buffers, {})
vim.keymap.set('n', '<leader>st', telescope.extensions.toggletasks.spawn, {})
