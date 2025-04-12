local present, lspconfig = pcall(require, "lspconfig")

if not present then
	return
end

-----------------------------------------------------------
-- This plugin is automatically configured by mason-nvim --
-----------------------------------------------------------

-- nvim-cmp supports additional completion capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()

local present, cpm_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not present then
	return
end

capabilities = cpm_nvim_lsp.default_capabilities(capabilities)

