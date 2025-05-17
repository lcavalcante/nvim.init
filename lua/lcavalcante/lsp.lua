vim.lsp.enable('lua_ls')

--python
vim.lsp.enable('pyright')
vim.lsp.config('pyright', {
    settings = {
        pyright = {
          -- Using Ruff's import organizer
          disableOrganizeImports = true,
        },
    },
})
vim.lsp.enable('ruff')
