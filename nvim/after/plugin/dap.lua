local dap = require("dap")
local dapui = require("dapui")

dap.configurations.java = {
	{
		type = "java",
		request = "attach",
		name = "Attach debug default",
		hostName = "localhost",
		port = "5005",
	},
}
dap.listeners.before.attach.dapui_config = function()
	dapui.open()
end

require("dapui").setup({
	layouts = {
		{
			elements = {
				"scopes",
				-- "breakpoints",
				-- "stacks",
				-- "watches",
			},
			size = 25,
			position = "bottom",
		},
		-- {
		-- 	elements = {
		-- 		"repl",
		-- 		"console",
		-- 	},
		-- 	size = 40, -- Adjust the width for vertical splits if needed
		-- 	position = "right", -- Keep these as vertical splits on the right
		-- },
	},
})

vim.keymap.set("n", "<F5>", dap.toggle_breakpoint)
vim.keymap.set("n", "<F6>", dap.continue)
vim.keymap.set("n", "<F7>", dap.step_into)
vim.keymap.set("n", "<F8>", dap.step_over)
vim.keymap.set("n", "<F9>", dap.step_out)
vim.keymap.set("n", "<F10>", dap.step_back)
vim.keymap.set("n", "<F12>", dapui.toggle)
