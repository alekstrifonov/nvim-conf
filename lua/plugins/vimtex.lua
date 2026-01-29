return {
  "lervag/vimtex",
  lazy = false, -- recommended, since VimTeX config must run early
  init = function()
    -- Viewer settings (change according to your OS/viewer)
    vim.g.vimtex_view_method = "sioyek" -- or "skim", "sioyek", etc.
    vim.g.vimtex_compiler_method = "latexmk"
    vim.g.vimtex_syntax_enabled = 1
    
    vim.g.vimtex_view_sioyek_exe = '/Applications/sioyek.app/Contents/MacOS/sioyek'
    vim.g.vimtex_callback_progpath = 'nvim'
    -- Optional quality-of-life
    vim.g.vimtex_quickfix_mode = 0
  end,
}

