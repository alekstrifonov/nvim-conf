--return {
--  {
--    "hrsh7th/nvim-cmp",
--    dependencies = {
--      "hrsh7th/cmp-nvim-lsp",
--      "hrsh7th/cmp-buffer",
--      "micangl/cmp-vimtex",
--      "saadparwaiz1/cmp_luasnip",
--    },
--    config = function()
--      local cmp = require("cmp")
--      local luasnip = require("luasnip")
--
--      -- Helper function to check for mathzone
--      local in_mathzone = function()
--        return vim.fn["vimtex#syntax#in_mathzone"]() == 1
--      end
--
--      cmp.setup({
--        -- This 'enabled' function controls the whole menu
--        -- But we can also filter sources individually below
--        snippet = {
--          expand = function(args)
--            luasnip.lsp_expand(args.body)
--          end,
--        },
--        -- ... window and mapping config ...
--
--        sources = cmp.config.sources({
--          { name = "vimtex" },
--          { name = "luasnip" },
--          {
--            name = "buffer",
--            -- This is the "Magic" part:
--            -- Disable the buffer source if we are in a mathzone
--            entry_filter = function()
--              return not in_mathzone()
--            end,
--            option = {
--              keyword_pattern = [[\k\+]],
--            }
--          },
--        }),
--      })
--    end,
--  },
--}
return {
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")
			require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = "vimtex" },
					{ name = "luasnip" },
					{
						name = "buffer",
						option = {
							-- This regex tells cmp to look for any character that isn't a space,
							-- including Cyrillic/Unicode characters.
							keyword_pattern = [[\k\+]],
						},
					},
				}),
			})
		end,
	},
}
