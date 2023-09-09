local lsp = require('lsp-zero').preset({
	name = 'recommended',
	set_lsp_keymaps = false,
	suggest_lsp_servers = false,
	sign_icons = false})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})

end)

lsp.ensure_installed({
  -- Replace these with whatever servers you want to install
  'tsserver',
  'eslint',
  'rust_analyzer',
  'angularls@14.0.0',
  "html",
})


lsp.setup()
