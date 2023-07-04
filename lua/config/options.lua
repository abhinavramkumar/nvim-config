-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- vim.opt.foldmethod = "syntax" -- syntax highlighting items specify folds
-- vim.opt.foldcolumn = "1" -- "defines 1 col at window left, to indicate folding
-- local javaScript_fold = 1 -- "activate folding by JS syntax
-- vim.opt.foldlevelstart = 99 -- "start file with all folds opened
vim.opt.foldlevel = 20
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevelstart = 99 -- "start file with all folds opened
