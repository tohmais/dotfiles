lua << EOF
	local lsp = require "lspconfig"
	local coq = require "coq"
	local lsp_installer = require "nvim-lsp-installer"

	lsp_installer.on_server_ready(function(server)
		local opts = {coq.lsp_ensure_capabilities{
			on_attach = on_attach,
			flags = {
				debounce_text_changes = 150,
			}
		}}
		server:setup(opts)
	end)
EOF
