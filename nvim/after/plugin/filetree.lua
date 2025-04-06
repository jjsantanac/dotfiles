vim.keymap.set("n", "<leader>ft", ":Neotree position=current reveal=true<CR>")

require("neo-tree").setup({
	filesystem = {
		hijack_netrw_behavior = "open_current",
		follow_current_file = {
			enabled = true,
			leave_dirs_open = true,
		},
	},
	buffers = {
		follow_current_file = {
			enabled = true,
			leave_dirs_open = true,
		},
	},
})
