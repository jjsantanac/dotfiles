local dap = require("dap")
local dapui = require("dapui")

dap.adapters.codelldb = {
	type = "executable",
	command = "codelldb",
}

dap.configurations.python = {
	{
		type = "python",
		request = "attach",
		name = "Attach remote",
		connect = {
			host = "127.0.0.1",
			port = 5678,
		},
		justMyCode = false,
		pathMappings = {
			{
				localRoot = vim.fn.getcwd(),
				remoteRoot = "/app",
			},
		},
	},
}

dap.listeners.before.attach.dapui_config = function()
	dapui.open()
end

dap.listeners.before.launch.dapui_config = function()
	dapui.open()
end

dap.listeners.after.event_terminated.dapui_config = function()
	dapui.close()
end

require("dapui").setup({
	layouts = {
		{
			elements = {
				"console",
			},
			size = 20,
			position = "bottom",
		},
	},
})

require("dap-python").setup("uv")

vim.keymap.set("n", "<F5>", dap.toggle_breakpoint)
vim.keymap.set("n", "<F6>", dap.continue)
vim.keymap.set("n", "<F7>", dap.step_into)
vim.keymap.set("n", "<F8>", dap.step_over)
vim.keymap.set("n", "<F9>", dap.step_out)
vim.keymap.set("n", "<F10>", function()
	dapui.float_element("scopes", { enter = true, position = "center" })
end)
vim.keymap.set("n", "<F12>", dapui.toggle)
vim.keymap.set("n", "<F24>", dap.repl.toggle)
