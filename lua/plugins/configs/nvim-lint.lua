local present, lint = pcall(require, "lint")

if not present then
	return
end

-- LINTER configuration
lint.linters_by_ft = {
	python = {'pycodestyle', 'vulture'},
	javascript = {'eslint'},
	typescript = {'eslint'}
}
vim.cmd [[ autocmd BufEnter,BufWritePost <buffer> lua require('lint').try_lint() ]]
