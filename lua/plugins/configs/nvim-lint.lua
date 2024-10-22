local present, lint = pcall(require, "lint")

if not present then
	return
end

-- LINTER configuration
lint.linters_by_ft = {
	python = {'flake8', 'vulture'},
	javascript = {'eslint'},
	typescript = {'eslint'}
}
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    lint.try_lint()
  end,
})
