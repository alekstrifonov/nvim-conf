return {
  -- The main completion engine
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-buffer",   -- Suggestions from the current file
      "hrsh7th/cmp-nvim-lsp", -- Suggestions from Language Servers
      "micangl/cmp-vimtex",   -- Specific VimTeX suggestions (labels, cites)
    },
    config = function()
      local cmp = require('cmp')
      cmp.setup({
        sources = cmp.config.sources({
          { name = 'vimtex' },
          { name = 'buffer' }, -- This is the "words I've already wrote" part
        }),
        mapping = cmp.mapping.preset.insert({
          ['<Tab>'] = cmp.mapping.confirm({ select = true }),
        }),
      })
    end,
  },
}
