return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "pyright" },
			})
		end,
	},
	{
		{
			"neovim/nvim-lspconfig",
			config = function()
				-- Neovim 0.11 uses vim.lsp.config and vim.lsp.enable
				-- instead of the old setup() function.

				-- 1. Setup TexLab for LaTeX support
				vim.lsp.config("texlab", {
					-- You can add specific settings here later if needed
				})
				vim.lsp.enable("texlab")

				-- 2. Setup Lua (for your Neovim config editing)
				vim.lsp.config("lua_ls", {
					settings = {
						Lua = {
							diagnostics = { globals = { "vim" } },
						},
					},
				})
				vim.lsp.enable("lua_ls")

				-- Global mappings for LSP
				vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
				vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			end,
		},
	},
}
