-- Mason and Mason-LSPConfig are used to manage LSP servers easily.
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "pyright", "tsserver", "html", "cssls", "lua_ls" },
    automatic_installation = true,
})

-- Common options for LSP keymaps
local opts = { noremap=true, silent=true }

-- Common function to attach LSP keymaps to the current buffer
local on_attach = function(_, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

    -- LSP-related keymaps
    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', '<space>ca', '<Cmd>lua vim.lsp.buf.code_action()<CR>', opts)
end

-- Enhanced capabilities for autocompletion with nvim-cmp
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Setup each LSP server
local servers = { 'pyright', 'tsserver', 'html', 'cssls', 'lua_ls' }
for _, lsp in ipairs(servers) do
  require('lspconfig')[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- Specific settings for Lua development in Neovim
require('lspconfig')['lua_ls'].setup{
    on_attach = on_attach,
    settings = {
        Lua = {
            runtime = { version = 'LuaJIT' },
            diagnostics = { globals = {'vim'} },
            workspace = { library = vim.api.nvim_get_runtime_file("", true) },
            telemetry = { enable = false },
        },
    },
}

