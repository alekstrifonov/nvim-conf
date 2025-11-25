return {
    -- Telescope
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.6",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- devicons dependency
            "nvim-telescope/telescope-ui-select.nvim", -- optional UI select extension
        },
        config = function()
            local telescope = require("telescope")
            local builtin = require("telescope.builtin")

            -- Keymaps
            vim.keymap.set("n", "<C-p>", builtin.find_files, {})
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

            telescope.setup({
                defaults = {
                    prompt_prefix = "🔍 ",       -- nice icon in prompt
                    selection_caret = " ",      -- devicon for selection
                    path_display = { "smart" },
                    file_ignore_patterns = {"venv", "__pycache__"},
                },
                pickers = {
                    find_files = {
                        hidden = true,
                    },
                },
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })

            -- Load extensions
            telescope.load_extension("ui-select")
        end,
    },

    -- nvim-web-devicons standalone setup
    {
        "nvim-tree/nvim-web-devicons",
        config = function()
            require("nvim-web-devicons").setup({ default = true })
        end,
    },
}
