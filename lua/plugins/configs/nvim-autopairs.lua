local present, autopairs = pcall(require, "nvim-autopairs")


if not present then
	return
end

-- change default fast_wrap
autopairs.setup({
  	ignored_next_char = "", -- will ignore alphanumeric and `.` symbol
    fast_wrap = {
      map = '<M-e>',
      chars = { '{', '[', '(', '"', "'" },
      pattern = [=[[%'%"%)%>%]%)%}%,]]=],
      end_key = '$',
      keys = 'qwertyuiopasdfghjklñzxcvbnm',
      check_comma = true,
      highlight = 'Search',
      highlight_grey='Comment'
    },
})
