return {
  "lervag/vimtex",
  lazy = false, -- recommended, since VimTeX config must run early
  init = function()
    -- Viewer settings (change according to your OS/viewer)
    vim.g.vimtex_view_method = "zathura" -- or "skim", "sioyek", etc.
    vim.g.vimtex_compiler_method = "latexmk"
    
    -- Optional quality-of-life
    vim.g.vimtex_quickfix_mode = 0
  end,
}

