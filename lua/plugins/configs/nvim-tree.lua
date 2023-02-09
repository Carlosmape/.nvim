local present, tree = pcall(require, "nvim-tree")

if not present then
	return
end


tree.setup({
	sort_by = "case_sensitive",
	disable_netrw = true,
	open_on_setup = true,
	view = {
		adaptive_size = true,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
	update_focused_file = {
		enable = true,
	},
})
