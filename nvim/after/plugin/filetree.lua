vim.keymap.set("n", "<leader>ft", ":Neotree position=current reveal=true<CR>")
require("neo-tree").setup({
	filesystem = {
		hijack_netrw_behavior = "open_current",
		-- "open_current",
		-- "disabled",
		follow_current_file = {
			enabled = true, -- This will find and focus the file in the active buffer every time
			--               -- the current file is changed while the tree is open.
			leave_dirs_open = true, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
		},
	},
	buffers = {
		follow_current_file = {
			enabled = true, -- This will find and focus the file in the active buffer every time
			--              -- the current file is changed while the tree is open.
			leave_dirs_open = true, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
		},
	},
})
