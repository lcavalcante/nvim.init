local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
	'pyright',
	'rust_analyzer',
})

lsp.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
cmp.setup({
  mapping = {
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
    ['<Tab>'] = nil,
    ['<STab>'] = nil,
  }
})

local navic = require("nvim-navic")
lsp.on_attach(function(client, bufnr)
  if client.server_capabilities.documentSymbolProvider then
    navic.attach(client, bufnr)
  end
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>ve", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "<leader>vn", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "<leader>vp", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
  vim.keymap.set('n', '<leader>vf', function() vim.lsp.buf.format { async = true } end, opts)
end)

lsp.setup()
