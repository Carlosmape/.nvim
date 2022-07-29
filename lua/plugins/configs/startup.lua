
local present, startup = pcall(require, "startup")

if not present then
	return
end
-- Built in functions instance
local functions = require("startup.functions")

-- Array of headers (will be randomized)
local headers = {
	{
		' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
		' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
		' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
		' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
		' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
		' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
	},
	{
		"ooooo      ooo                     oooooo     oooo  o8o                   ",
		"`888b.     `8'                      `888.     .8'   `¨'                   ",
		" 8 `88b.    8   .ooooo.   .ooooo.    `888.   .8'   oooo  ooo. .oo.  .oo.  ",
		" 8   `88b.  8  d88' `88b d88' `88b    `888. .8'    `888  `888P¨Y88bP¨Y88b ",
		" 8     `88b.8  888ooo888 888   888     `888.8'      888   888   888   888 ",
		" 8       `888  888    .o 888   888      `888'       888   888   888   888 ",
		"o8o        `8  `Y8bod8P' `Y8bod8P'       `8'       o888o o888o o888o o888o",
	},
	{
		".s    s.                      .s    s.                ",
		"      SS. .s5SSSs.  .s5SSSs.        SS. s.  .s5ssSs.  ",
		"sSs.  S%S       SS.       SS. sS    S%S SS.    SS SS. ",
		"SS`S. S%S sS    `:; sS    S%S SS    S%S S%S sS SS S%S ",
		"SS `S.S%S SSSs.     SS    S%S SS    S%S S%S SS :; S%S ",
		"SS  `sS%S SS        SS    S%S  SS   S%S S%S SS    S%S ",
		"SS    `:; SS        SS    `:;  SS   `:; `:; SS    `:; ",
		"SS    ;,. SS    ;,. SS    ;,.   SS  ;,. ;,. SS    ;,. ",
		":;    ;:' `:;;;;;:' `:;;;;;:'    `:;;:' ;:' :;    ;:' ",
	},
	{
		"@@@  @@@  @@@@@@@@   @@@@@@   @@@  @@@  @@@  @@@@@@@@@@ ",
		"@@@@ @@@  @@@@@@@@  @@@@@@@@  @@@  @@@  @@@  @@@@@@@@@@@",
		"@@!@!@@@  @@!       @@!  @@@  @@!  @@@  @@!  @@! @@! @@!",
		"!@!!@!@!  !@!       !@!  @!@  !@!  @!@  !@!  !@! !@! !@!",
		"@!@ !!@!  @!!!:!    @!@  !@!  @!@  !@!  !!@  @!! !!@ @!@",
		"!@!  !!!  !!!!!:    !@!  !!!  !@!  !!!  !!!  !@!   ! !@!",
		"!!:  !!!  !!:       !!:  !!!  :!:  !!:  !!:  !!:     !!:",
		":!:  !:!  :!:       :!:  !:!   ::!!:!   :!:  :!:     :!:",
		" ::   ::   :: ::::  ::::: ::    ::::     ::  :::     :: ",
		"::    :   : :: ::    : :  :      :      :     :      :  ",
	},
	{
		" ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓",
		" ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒",
		"▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░",
		"▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ ",
		"▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒",
		"░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░",
		"░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░",
		"   ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   ",
		"         ░    ░  ░    ░ ░        ░   ░         ░   ",
		"                                ░                  ",
	},
	{
		" ,ggg, ,ggggggg,                    ,ggg,         ,gg                     ",
		"dP¨¨Y8,8P¨¨¨¨¨Y8b                  dP´`Y8a       ,8P                      ",
		"Yb, `8dP'     `88                  Yb, `88       d8'                      ",
		" `´  88'       88                   `´  88       88gg                     ",
		"     88        88                       88       88`´                     ",
		"     88        88   ,ggg,     ,ggggg,   I8       8Igg    ,ggg,,ggg,,ggg,  ",
		"     88        88  i8´ `8i   dP´  `Y8ggg`8,     ,8'88   ,8´ `8P´ `8P´ `8, ",
		"     88        88  I8, ,8I  i8'    ,8I   Y8,   ,8P 88   I8   8I   8I   8I ",
		"     88        Y8, `YbadP' ,d8,   ,d8'    Yb,_,dP_,88,_,dP   8I   8I   Yb,",
		"     88        `Y8888P¨Y888P¨Y8888P´       `Y8P´ 8P´`Y88P'   8I   8I   `Y8",
	},
	{
		"                              :                                        ",
		"L.                     ,;    t#,                                       ",
		"EW:        ,ft       f#i    ;##W.              t                       ",
		"E##;       t#E     .E#t    :#L:WE              Ej            ..       :",
		"E###t      t#E    i#W,    .KG  ,#D  t      .DD.E#,          ,W,     .Et",
		"E#fE#f     t#E   L#D.     EE    ;#f EK:   ,WK. E#t         t##,    ,W#t",
		"E#t D#G    t#E :K#Wfff;  f#.     t#iE#t  i#D   E#t        L###,   j###t",
		"E#t  f#E.  t#E i##WLLLLt :#G     GK E#t j#f    E#t      .E#j##,  G#fE#t",
		"E#t   t#K: t#E  .E#L      ;#L   LW. E#tL#i     E#t     ;WW; ##,:K#i E#t",
		"E#t    ;#W,t#E    f#E:     t#f f#:  E#WW,      E#t    j#E.  ##f#W,  E#t",
		"E#t     :K#D#E     ,WW;     f#D#;   E#K:       E#t  .D#L    ###K:   E#t",
		"E#t      .E##E      .D#;     G#t    ED.        E#t :K#t     ##D.    E#t",
		"..         G#E        tt      t     t          E#t ...      #G      .. ",
		"            fE                                 ,;.          j          ",
		"             ,                                                         ",
	}
}
local h = math.random(1, #(headers))

--Startup configuration, custom Dashboard
startup.setup({
	-- every line should be same width without escaped \
	header = {
		type = "text",
		oldfiles_directory = false,
		align = "center",
		fold_section = false,
		title = "Header",
		margin = 5,
		content = headers[h],
		highlight = "Statement",
		default_color = "",
		oldfiles_amount = 0,
	},
    header2 = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Quote",
        margin = 5,
        content = functions.quote(),
        highlight = "Constant",
        default_color = "",
        oldfiles_amount = 0,
    },	-- name which will be displayed and command
	body = {
		type = "mapping",
		oldfiles_directory = false,
		align = "center",
		fold_section = false,
		title = "Basic Commands",
		margin = 5,
		content = {
			{ "🗂 Find File", "Telescope find_files", "<leader>ff" },
			{ "🔎 Find Word", "Telescope live_grep", "<leader>lg" },
			{ "📋 Recent Files", "Telescope oldfiles", "<leader>of" },
			{ "🗃 File Browser", "NvimTreeOpen", "<leader>fb" },
			{ "📄 New File", "lua require'startup'.new_file()", "<leader>nf" },
			{ "📑 New From Template", "LoadTemplate", "<leader>nt" },
			{ "🎨 Colorschemes", "Telescope colorscheme", "<leader>cs" },
			{ "📦 Packer Install", "PackerInstall", "<leader>pi" },
			{ "📥 Packer Update", "PackerUpdate", "<leader>pm" },
			{ "🔮 Mason Install/Update", "Mason", "<leader>m" },
		},
		highlight = "String",
		default_color = "",
		oldfiles_amount = 0,
	}, 
	footer = {
		type = "text",
		oldfiles_directory = false,
		align = "center",
		fold_section = false,
		title = "Footer",
		margin = 5,
		content = {functions.packer_plugins(), },
		highlight = "Number",
		default_color = "",
		oldfiles_amount = 0,
	}, 
	options = {
		mapping_keys = true,
		cursor_column = 0.5,
		empty_lines_between_mappings = true,
		disable_statuslines = true,
		paddings = { 1, 3, 3, 0 },
	},
	mappings = {
		execute_command = "<CR>",
		open_file = "o",
		open_file_split = "<c-o>",
		open_section = "<TAB>",
		open_help = "?",
	},
	colors = {
		background = "#1f2227",
		folded_section = "#56b6c2",
	},
	parts = { "header", "header2", "body", "footer" },
})
