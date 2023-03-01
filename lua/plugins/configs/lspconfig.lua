local present, lspconfig = pcall(require, "lspconfig")

if not present then
	return
end

-----------------------------------------------------------
-- This plugin is automatically configured by mason-nvim --
-----------------------------------------------------------

-- nvim-cmp supports additional completion capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

