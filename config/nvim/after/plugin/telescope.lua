local telescope = require('telescope')

telescope.setup{

    pickers = {
        find_files = {
            theme = 'dropdown'
        }
    }
}


local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>gt', builtin.live_grep, {})
vim.keymap.set('n', '<leader>lb', builtin.buffers, {})
