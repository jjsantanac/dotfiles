local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_dir = vim.fn.expand("~") .. "/.config/jdtls_workspaces/" .. project_name
local jdk_dir = os.getenv("JDTLS_JDK")
local java_formatter_dir = os.getenv("JDTLS_FORMATTER")
local java_importorder_dir = os.getenv("JDTLS_IMPORTORDER")

local config = {
	cmd = {
		jdk_dir,
		"-Declipse.application=org.eclipse.jdt.ls.core.id1",
		"-Dosgi.bundles.defaultStartLevel=4",
		"-Declipse.product=org.eclipse.jdt.ls.core.product",
		"-Dlog.protocol=true",
		"-Dlog.level=ALL",
		"-Xmx1g",
		"--add-modules=ALL-SYSTEM",
		"--add-opens",
		"java.base/java.util=ALL-UNNAMED",
		"--add-opens",
		"java.base/java.lang=ALL-UNNAMED",
		"-jar",
		vim.fn.expand("~")
			.. "/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_1.6.900.v20240613-2009.jar",
		"-configuration",
		vim.fn.expand("~") .. "/.local/share/nvim/mason/packages/jdtls/config_mac_arm",
		"-data",
		workspace_dir,
	},
	root_dir = vim.fs.root(0, { ".git", "mvnw", "gradlew, pom.xml" }),
	settings = {
		java = {
			format = {
				settings = {
					url = java_formatter_dir,
				},
			},
			imports = {
				order = {
					settings = {
						url = java_importorder_dir,
					},
				},
			},
		},
	},
	init_options = {
		bundles = {
			vim.fn.glob(vim.fn.expand("~") .. "/.config/java_debug/com.microsoft.java.debug.plugin-*.jar", 1),
		},
	},
}

config["on_attach"] = function(client, bufnr)
	require("jdtls").setup_dap({ hotcodereplace = "auto" })
end

require("jdtls").start_or_attach(config)
