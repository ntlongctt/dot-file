local setup, indent_blankline = pcall(require, "indent_blankline")
if not setup then
	return
end

-- rainbow mode
-- vim.opt.termguicolors = true
-- vim.cmd([[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]])
-- vim.cmd([[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]])
-- vim.cmd([[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]])
-- vim.cmd([[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]])
-- vim.cmd([[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]])
-- vim.cmd([[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]])
--
-- vim.opt.list = true
-- vim.opt.listchars:append("space:⋅")
-- vim.opt.listchars:append("eol:↴")
--
-- indent_blankline.setup({
-- 	space_char_blankline = " ",
-- 	char_highlight_list = {
-- 		"IndentBlanklineIndent1",
-- 		"IndentBlanklineIndent2",
-- 		"IndentBlanklineIndent3",
-- 		"IndentBlanklineIndent4",
-- 		"IndentBlanklineIndent5",
-- 		"IndentBlanklineIndent6",
-- 	},
-- })

-- show line in function context
-- vim.opt.list = true
-- vim.opt.listchars:append("space:⋅")
-- vim.opt.listchars:append("eol:↴")
--
-- indent_blankline.setup({
-- 	space_char_blankline = " ",
-- 	show_current_context = true,
-- 	show_current_context_start = true,
-- })

-- background highlight
-- vim.opt.termguicolors = true
-- vim.cmd([[highlight IndentBlanklineIndent1 guibg=#1f1f1f gui=nocombine]])
-- vim.cmd([[highlight IndentBlanklineIndent2 guibg=#1a1a1a gui=nocombine]])
--
-- require("indent_blankline").setup({
-- 	char = "",
-- 	char_highlight_list = {
-- 		"IndentBlanklineIndent1",
-- 		"IndentBlanklineIndent2",
-- 	},
-- 	space_char_highlight_list = {
-- 		"IndentBlanklineIndent1",
-- 		"IndentBlanklineIndent2",
-- 	},
-- 	show_trailing_blankline_indent = false,
-- })

-- normal case
vim.opt.list = true
vim.opt.listchars:append("space:⋅")!~@
vim.opt.listchars:append("eol:↴") 

require("indent_blankline").setup({
	show_end_of_line = true,
	space_char_blankline = " ",
})
