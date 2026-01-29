local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta

local in_mathzone = function()
  return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

return {
  -- Inline Math
  s({ trig = "mk", dscr = "Inline Math", snippetType = "autosnippet" }, fmta([[\(<>\) <> ]], { i(1), i(2) })),

  -- Display Math (Removed the extra spaces inside \[ \])
  s(
    { trig = "dm", dscr = "Display Math", snippetType = "autosnippet" },
    fmta(
      [[
      \[
        <>
      \] <>
    ]],
      { i(1), i(2) }
    )
  ),

  -- Align Star (Removed the leading spaces in the string)
  s(
    { trig = "bsal", dscr = "Begin Align Star" },
    fmta(
      [[
      \begin{align*}
      <>
      \end{align*}
    ]],
      { i(1) }
    )
  ),

  -- Align (Numbered)
  s(
    { trig = "bal", dscr = "Begin Align" },
    fmta(
      [[
      \begin{align}
        <>
      \end{align}
    ]],
      { i(1) }
    )
  ),

  -- Itemize
  s(
    { trig = "bit;", dscr = "Begin Itemize" },
    fmta(
      [[
      \begin{itemize}
        \item <>
      \end{itemize}
    ]],
      { i(1) }
    )
  ),

  -- Enumerate
  s(
    { trig = "ben;", dscr = "Begin enumerate" },
    fmta(
      [[
      \begin{enumerate}
        \item <>
      \end{enumerate}
    ]],
      { i(1) }
    )
  ),

  -- Cases
  s(
    { trig = "bcas", dscr = "Begin Cases", snippetType = "autosnippet", condition = in_mathzone },
    fmta(
      [[
      \begin{cases}
        <> &, \text{ <> } <> \\
        <> &, \text{ <> } <>
      \end{cases}
    ]],
      { i(1), i(2), i(3), i(4), i(5), i(6) }
    )
  ),
}
