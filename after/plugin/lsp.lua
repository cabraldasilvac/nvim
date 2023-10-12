local lsp = require('lsp-zero')

lsp.preset("recommended")

lsp.on_attach(function(client, bufnr)
lsp.default_keymaps({buffer = bufnr})
--
end)

lsp.set_preferences({
    suggest_lsp_servers = false,
    setup_servers_on_start = true,
    set_lsp_keymaps = true,
    configure_diagnostics = true,
    cmp_capabilities = true,
    manage_nvim_cmp = true,
    call_servers = 'local',
    sign_icons = {
        error = '✘',
        warn = '▲',
        hint = '⚑',
        info = '',
      },
    })

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'tsserver', 'rust_analyzer', 'eslint', 'clangd'},
  handlers = {
    lsp.default_setup,
    lua_ls = function()

local lua_opts = lsp.nvim_lua_ls()
require('lspconfig').lua_ls.setup(lua_opts)
    end,
  },
})
