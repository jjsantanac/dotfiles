require("lualine").setup({
	options = {
		theme = "auto",
		component_separators = { "|" },
		section_separators = { "|" },
	},
	sections = {
		lualine_a = {
			{ "mode" },
		},
		lualine_b = { { "filename" } },
		lualine_c = {},
		lualine_x = {},
		lualine_y = { "branch", "diagnostics" },
		lualine_z = {
			"location",
			"progress",
		},
	},
	inactive_sections = {
		lualine_a = { "filename" },
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = { "location" },
	},
})
