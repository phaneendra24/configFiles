local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("lazy").setup("plugins")

require("core.options")
require("core.remap")

require('telescope').setup{ defaults = { file_ignore_patterns = {"node_modules"} } }


local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)
lsp.setup()



local cmp = require('cmp')

local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
 mapping = {
     
 ['<Tab>'] = cmp_action.luasnip_supertab(),
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  } ---
  -- Add you own config here...
  ---
})
