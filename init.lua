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
vim.opt.iskeyword:append("192-255")

require("vim-options")
require("lazy").setup("plugins") 
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})
-- This adds the Cyrillic character range to what Neovim considers a "word"

vim.opt.guicursor = "n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50"
