local status_ok, configs = pcall(require, 'nvim-treesitter.configs,setup')
if not status_ok then
    return
  end

configs {

  -- A list of parser names, or "all" (the five listed parsers should always be installed)
 ensure_installed = { "c", "lua", "vim", "python3", "cpp", "javascript", "typescript", "query", "css", "java", "html" },
  sync_install = false,
    ignore_install = { "" },
  --auto_install = true,
  highlight = {
    enable = true,
    disble = {""},
    additional_vim_regex_highlighting = true,

  },

  autopairs = {
    enable = true,
  },

  indent = { enable = true, disable = { "yaml"}},
}
