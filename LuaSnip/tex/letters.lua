local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

local tex_utils = {}
tex_utils.in_mathzone = function()  -- math context detection
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end


-- Helper for creating the snippets
local greek_letters = {
	a = "alpha",
	b = "beta",
	g = "gamma",
	d = "delta",
	e = "epsilon",
	ve = "varepsilon",
	z = "zeta",
	h = "eta",
	q = "theta",
	vq = "vartheta",
	i = "iota",
	k = "kappa",
	l = "lambda",
	m = "mu",
	n = "nu",
	x = "xi",
	p = "pi",
	vp = "varpi",
	r = "rho",
	vr = "varrho",
	s = "sigma",
	vs = "varsigma",
	t = "tau",
	u = "upsilon",
	f = "phi",
	vf = "varphi",
	c = "chi",
	y = "psi",
	w = "omega",
	G = "Gamma",
	D = "Delta",
	Q = "Theta",
	L = "Lambda",
	X = "Xi",
	P = "Pi",
	S = "Sigma",
	U = "Upsilon",
	F = "Phi",
	Y = "Psi",
	W = "Omega",
}

local snippets = {}

for trigger, command in pairs(greek_letters) do
	table.insert(
		snippets,
		s({
			trig = ";" .. trigger,
			snippetType = "autosnippet",
			condition = tex_utils.in_mathzone, }, {
			t("\\" .. command),
		})
	)
end

return snippets
