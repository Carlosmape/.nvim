local present, autopairs = pcall(require, "nvim-autopairs")


if not present then
	return
end

autopairs.setup()
require('nvim-autopairs').setup({
})
-- change default fast_wrap
autopairs.setup({
  	ignored_next_char = "", -- will ignore alphanumeric and `.` symbol
    fast_wrap = {
      map = '<M-e>',
      chars = { '{', '[', '(', '"', "'" },
      pattern = [=[[%'%"%)%>%]%)%}%,]]=],
      end_key = '$',
      keys = 'qwertyuiopzxcvbnmasdfghjkl',
      check_comma = true,
      highlight = 'Search',
      highlight_grey='Comment'
    },
})
