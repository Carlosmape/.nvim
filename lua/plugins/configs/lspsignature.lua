local present, lspsignature = pcall(require, "lsp_signature")

if not present then
	return
end

lspsignature.setup({
	hint_enable = false, -- virtual hint enable 
	handler_opts = {
		border = "none"   -- double, rounded, single, shadow, none
	},
	floating_window_above_cur_line = false,
	always_trigger = true,
})
