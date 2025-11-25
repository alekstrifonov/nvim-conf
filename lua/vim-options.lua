vim.opt.number = true
vim.opt.relativenumber = true
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader= " "
vim.opt.cursorline = true                          -- Highlight current line
vim.keymap.set("n", "<C-d>", "<C-d>zz", {desc = "Center cursor after moving down half-page"})
-- Make keymaps feel instant but still give you time to type leader combos
vim.o.timeout = true        -- enable timeout for mapped sequences
vim.o.timeoutlen = 300      -- default is 1000; 300ms feels much faster
vim.o.ttimeoutlen = 0       -- don't wait for terminal escape codes

