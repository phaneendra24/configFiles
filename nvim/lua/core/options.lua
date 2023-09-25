local o = vim.opt
o.guicursor=""
o.number = true
o.relativenumber = true

o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.autoindent = true

o.wrap = true

o.ignorecase = true
o.smartcase = true

o.cursorline = true

o.termguicolors = true
o.background = "dark"
o.signcolumn = "yes"

o.backspace = "indent,eol,start"

o.clipboard:append("unnamedplus")

o.splitright = true
o.splitbelow = true
o.iskeyword:append("-")

vim.cmd[[colorscheme tokyonight]]


vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
