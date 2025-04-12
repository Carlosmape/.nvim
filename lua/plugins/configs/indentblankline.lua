local present, ibl = pcall(require, "lspconfig")

if not present then
	return
end
ibl.setup()
