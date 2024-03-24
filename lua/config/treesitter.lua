require('nvim-treesitter.configs').setup({
  -- A list of parser names, or "all". The listed parsers are commonly used ones.
  -- To delete a language, remove it below and uninstall all and then reinstall
  ensure_installed = {"javascript", "typescript", "html", "css", "scss", "gitignore", "json", "python", "c", "lua", "vim", "vimdoc", "query"},

  -- Install parsers synchronously (only applies to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering a buffer
  auto_install = true,
  highlight = {
      enable = true,  -- Enable highlighting using Tree-sitter
      additional_vim_regex_highlighting = false,  -- Avoid using both Tree-sitter and Vim regex for highlighting for performance reasons
  },
})
