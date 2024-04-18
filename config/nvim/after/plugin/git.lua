local diff = require('diffview')
local git = require('neogit')

git.setup {

    commit_view = {
        kind = "floating",
        verify_commit = os.execute("which gpg") == 0,
    },
    commit_editor = {
        kind = "floating",
    }
}

diff.setup {}

vim.keymap.set('n', '<leader>gg', git.open, {})
