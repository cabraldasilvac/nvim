require'nvim-treesitter.configs'.setup {

  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "python", "cpp", "javascript", "typescript", "query", "css", "java", "html" },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
