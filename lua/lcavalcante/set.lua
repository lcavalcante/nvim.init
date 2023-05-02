vim.g.mapleader = " "

vim.opt.showmatch = true  -- show matching 
vim.opt.ignorecase = true  -- case insensitive
vim.opt.hlsearch = false  -- highlight search 
vim.opt.incsearch = true  -- incremental search

vim.opt.tabstop = 4  -- number of columns occupied by a tab 
vim.opt.softtabstop = 4  -- see multiple spaces as tabstops so <BS> does the right thing
vim.opt.shiftwidth = 4  -- width for autoindents
vim.opt.expandtab = true  -- converts tabs to white space
vim.opt.smartindent = true  -- indent based on syntax filetype etc

vim.opt.wrap = false -- wrap text in new line

vim.opt.nu = true  -- add line numbers
vim.opt.relativenumber = true -- relative numbers
vim.opt.cc = '88'  -- set an 80 column border for good coding style
vim.opt.clipboard = 'unnamedplus' -- using system clipboard
vim.opt.ttyfast = true   -- Speed up scrolling in Vim

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. '/.vim/undodir'
vim.opt.undofile = true

vim.opt.updatetime = 100  -- vim plugin update call in ms

-- modeline
-- modeline is that vimbang thing you can put on top of files
-- ex: # vim: set expandtab:
vim.opt.modeline = true


-- list charts for space tagbs ttc
vim.opt.list = false
vim.opt.listchars = {
	tab = "-> ",
	trail = '-',
	eol = '↵',
	space = '·',
	extends = '⟩',
	precedes = '⟨',
}

vim.opt.rtp:append('./fzf')

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
