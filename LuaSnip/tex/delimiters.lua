local ls = require("luasnip")
local fmta = require("luasnip.extras.fmt").fmta
local s = ls.snippet

local in_mathzone = function()
  return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

return {
  -- Parentheses ()
  s(
    { trig = "lrp", condition = in_mathzone, dscr = "left/right parentheses", snippetType = "autosnippet" },
    fmta([[\left( <> \right)]], { i(1) })
  ),

  -- Curly Braces <>
  s(
    { trig = "lrc", condition = in_mathzone, dscr = "left/right curly braces", snippetType = "autosnippet" },
    fmta([[\left\{ <> \right\}]], { i(1) })
  ),

  -- Angle Brackets <>
  s(
    { trig = "lra", condition = in_mathzone, dscr = "left/right angle brackets", snippetType = "autosnippet" },
    fmta([[\left\langle <> \right\rangle]], { i(1) })
  ),

  -- Absolute Value ||
  s(
    { trig = "abs", condition = in_mathzone, dscr = "absolute value", snippetType = "autosnippet" },
    fmta([[\left| <> \right|]], { i(1) })
  ),

  -- Norm || ||
  s(
    { trig = "nrm", condition = in_mathzone, dscr = "norm", snippetType = "autosnippet" },
    fmta([[\left\| <> \right\|]], { i(1) })
  ),

  -- Ceil ⌈⌉
  s(
    { trig = "ceil", condition = in_mathzone, dscr = "ceil", snippetType = "autosnippet" },
    fmta([[\left\lceil <> \right\rceil]], { i(1) })
  ),

  -- Floor ⌊⌋
  s(
    { trig = "floor", condition = in_mathzone, dscr = "floor", snippetType = "autosnippet" },
    fmta([[\left\lfloor <> \right\rfloor]], { i(1) })
  ),
}
