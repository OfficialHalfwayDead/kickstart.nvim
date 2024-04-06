-- set up leader key before all plugins
vim.g.mapleader      = ' '
vim.g.maplocalleader = ' '

-- :help lazy.nvim.txt
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system {
		'git',
		'clone',
		'--filter=blob:none',
		'https://github.com/folke/lazy.nvim.git',
		'--branch=stable',
		lazypath,
	}
end
vim.opt.rtp:prepend(lazypath)

require("lsp-etc")
require("plugins")

all_plugins = {}
require('lazy').setup(all_plugins)

require("bindings")
