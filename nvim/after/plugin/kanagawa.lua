require("kanagawa").setup({
	keywordStyle = { italic = false },
	commentStyle = { italic = false },
	colors = {
		theme = {
			all = {
				ui = {
					bg_gutter = "none",
					bg_m3 = "#2A2A37",
				},
			},
		},
	},
	overrides = function(colors)
		local theme = colors.theme
		return {
			LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
			MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
			Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
			PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
			PmenuSbar = { bg = theme.ui.bg_m1 },
			PmenuThumb = { bg = theme.ui.bg_p2 },
			["@variable.builtin"] = { italic = false },
		}
	end,
})
