local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta

local in_mathzone = function()
  return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

return {
  -- FRACTION
  s({ trig = "ff", dscr = "Fraction", snippetType = "autosnippet", condition = in_mathzone },
    fmta([[\frac{<>}{<>}<>]], { i(1), i(2), i(0) })
  ),

  -- SUMMATION
  s({ trig = "sum", dscr = "Summation", snippetType = "autosnippet", condition = in_mathzone },
    fmta([[\sum_{<>}^{<>}<>]], { i(1), i(2), i(0) })
  ),

  -- PRODUCT
  s({ trig = "prod", dscr = "Product", snippetType = "autosnippet", condition = in_mathzone },
    fmta([[\prod_{<>}^{<>}<>]], { i(1), i(2), i(0) })
  ),

  -- SUPERSCRIPT (Triggers on **)
  s({ trig = "**", dscr = "Superscript", wordTrig = false, snippetType = "autosnippet", condition = in_mathzone },
    fmta([[^{<>}<>]], { i(1), i(0) })
  ),

  -- SUBSCRIPT (Triggers on __)
  s({ trig = "__", dscr = "Subscript", snippetType = "autosnippet", condition = in_mathzone },
    fmta([[_{<>}<>]], { i(1), i(0) })
  ),

  -- MATHCAL (MCA)
  s({ trig = "MCA", dscr = "Mathcal", snippetType = "autosnippet", condition = in_mathzone },
    fmta([[\mathcal{<>}<>]], { i(1), i(0) })
  ),

  -- MATHBB (MBB)
  s({ trig = "MBB", dscr = "Mathbb", snippetType = "autosnippet", condition = in_mathzone },
    fmta([[\mathbb{<>}<>]], { i(1), i(0) })
  ),

  -- UNDERSET
  s({ trig = "und", dscr = "Underset", snippetType = "autosnippet", condition = in_mathzone },
    fmta([[\underset{<>}{<>}<>]], { i(1), i(2), i(0) })
  ),

  -- OVERSET
  s({ trig = "ovr", dscr = "Overset", snippetType = "autosnippet", condition = in_mathzone },
    fmta([[\overset{<>}{<>}<>]], { i(1), i(2), i(0) })
  ),
  
  -- Sqrt
  s({ trig = "sq", dscr = "Square Root", snippetType = "autosnippet", condition = in_mathzone },
    fmta([[\sqrt{<>}<>]], { i(1), i(0) })
  ),
}
