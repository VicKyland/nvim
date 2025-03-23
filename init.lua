--    __                 
--   /  )         /)     
--  /   __ ____  // o _, 
-- (__/(_)/ / <_//_<_(_)_
--             />     /| 
--            </     |/  

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.cmd("filetype plugin indent on")
vim.cmd("syntax enable")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

require('options')
require('keymaps')

require('lazy').setup("plugins")

vim.cmd("colorscheme gruvbox")
