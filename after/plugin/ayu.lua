local cmd = vim.cmd
local set = vim.opt

set.termguicolors = true

cmd[[colorscheme ayu]]

require('ayu').setup({
    mirage = true,
    dark = true,
    overrides = { },
})

return{
    config = function ()
        vim.cmd.colorscheme'ayu'
    end
}
