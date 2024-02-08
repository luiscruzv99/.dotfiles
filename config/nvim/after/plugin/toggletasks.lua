local tasks = require('toggletasks')
local term = require('toggleterm')

term.setup{
    direction = 'float',
    float_opts = {
        border = 'curved',
    }
}

tasks.setup{}

