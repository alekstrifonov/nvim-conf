return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim" },
		config = function()
			require("neo-tree").setup({
				default_component_configs = {
					git_status = {
						symbols = {
							added = "", -- nf-fa-plus
							deleted = "", -- nf-fa-minus
							modified = "", -- nf-oct-dot_fill
							renamed = "➜", -- unicode arrow (safe)
							untracked = "", -- nf-fa-question
							ignored = "", -- nf-oct-file_symlink_file
							unstaged = "", -- nf-fa-exclamation
							staged = "", -- nf-fa-check
							conflict = "", -- nf-dev-git_compare
						},
					},
				},
			})

      vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>", { silent = true })
		end,
	},
}
