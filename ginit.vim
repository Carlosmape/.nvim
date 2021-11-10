" To reduce font size in Windows (nvim-qt)
if has("win32")
	execute join(["GuiFont! ", split(GuiFont, ":")[0], ":h10"], "")
endif
