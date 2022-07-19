-- local present, cmp = pcall(require, "cmp")

-- if not present then
-- 	return
-- end

--Set statusbar
vim.cmd [[
function! LightlineFilename()
	let filename = FugitivePath() !=# '' ? FugitivePath() : '[No Name]'
	let modified = &modified ? ' +' : ''
	return filename . modified
endfunction
]]
vim.g.lightline = {
	colorscheme = 'jellybeans',
	component = { lineinfo = '%3l:%-2v%<', },
	active = { left = { { 'mode', 'paste' }, {'readonly', 'lightline_filename', 'gitbranch'} } },
	-- Custom features (defined here, used in the line above)
	component_function = {gitbranch = 'FugitiveHead', lightline_filename = 'LightlineFilename'},
	mode_map = { n = 'N', i = 'I', R = 'R', v = 'V', V = 'VL', c = 'C', s = 'S', S = 'SL', t = 'T' },
}
