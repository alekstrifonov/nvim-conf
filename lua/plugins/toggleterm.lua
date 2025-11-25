return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup {
      size = 50,
      open_mapping = [[<leader>tt]],
      direction = "float",
      float_opts = { border = "curved" },
      start_in_insert = true,
      persist_mode = true,
    }
    vim.keymap.set("n", "<leader>td", ":ToggleTerm dir=%:p:h<CR>")

  end,
}
