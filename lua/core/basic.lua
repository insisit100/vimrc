-- line number
vim.opt.number = true
vim.opt.relativenumber = true

-- auto change directory
vim.opt.autochdir = true

-- highlight cursor line
vim.opt.cursorline = true

-- indent
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.autoindent = true


vim.opt.listchars = {eol = '↲', tab = '▸ ', trail = '·'}
-- enable mouse
vim.opt.mouse = 'a'

-- clipboard
vim.cmd('set clipboard=unnamedplus')

-- search ignorecase
vim.opt.ignorecase = true
vim.opt.hlsearch = false
