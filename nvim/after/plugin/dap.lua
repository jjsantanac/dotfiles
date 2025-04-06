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

dap.adapters.codelldb = {
	type = "executable",
	command = "codelldb",
}

dap.listeners.before.attach.dapui_config = function()
	dapui.open()
end

dap.listeners.before.launch.dapui_config = function()
	dapui.open()
end

require("dapui").setup({
	controls = {
		enabled = false,
	},
	layouts = {
		{
			elements = {
				"repl",
			},
			size = 60,
			position = "right",
		},
		{
			elements = {
				"console",
			},
			size = 20,
			position = "bottom",
		},
	},
})

vim.keymap.set("n", "<F5>", dap.toggle_breakpoint)
vim.keymap.set("n", "<F6>", dap.continue)
vim.keymap.set("n", "<F7>", dap.step_into)
vim.keymap.set("n", "<F8>", dap.step_over)
vim.keymap.set("n", "<F9>", dap.step_out)
vim.keymap.set("n", "<F10>", function()
	dapui.float_element("scopes", { enter = true, position = "center" })
end)
vim.keymap.set("n", "<F12>", dapui.toggle)
