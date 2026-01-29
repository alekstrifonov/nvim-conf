local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.have_nerd_font = true

require("vim-options")
require("lazy").setup("plugins") -- This automatically loads lua/plugins/luasnip.lua
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})

vim.opt.guicursor = "n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50"
