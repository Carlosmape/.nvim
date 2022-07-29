local present, mason = pcall(require, "mason")

if not present then
	return
end

mason.setup()

-- Mason-lspconfig
local present, masonlspconfig = pcall(require, "mason-lspconfig")
if not present then
	return
end

masonlspconfig.setup({
    ensure_installed = { 'rust_analyzer', 'pyright', 'tsserver', 'bashls' }
})
