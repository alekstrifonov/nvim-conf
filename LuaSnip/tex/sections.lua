local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta

return {
  -- Section
  s({ trig = "sec", dscr = "Section", snippetType = "autosnippet" },
    fmta([[\section{<>}]], { i(1) })
  ),

  -- Subsection
  s({ trig = "ssec", dscr = "Subsection", snippetType = "autosnippet" },
    fmta([[\subsection{<>}]], { i(1) })
  ),

  -- Sub-subsection
  s({ trig = "sssec", dscr = "Sub-subsection", snippetType = "autosnippet" },
    fmta([[\subsubsection{<>}]], { i(1) })
  ),

  -- Paragraph
  s({ trig = "hpar", dscr = "Paragraph", snippetType = "autosnippet" },
    fmta([[\paragraph{<>}]], { i(1) })
  ),
}

