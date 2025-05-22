vim.lsp.enable('lua_ls')

-- python
vim.lsp.enable('basedpyright')
vim.lsp.config('basedpyright', {
    settings = {
        basedpyright = {
            -- Using Ruff's import organizer
            disableOrganizeImports = true,
        },
    },
})
vim.lsp.enable('ruff')

-- zig
vim.lsp.enable('zls')
