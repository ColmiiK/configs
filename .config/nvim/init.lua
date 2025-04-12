-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd.colorscheme("catppuccin")

------------
-- Macros --
------------

local esc = vim.api.nvim_replace_termcodes("<Esc>", true, true, true)

vim.fn.setreg(
	"l",
	"yoconsole.log('" .. esc .. "pa:" .. esc .. "la, " .. esc .. "p"
)
vim.fn.setreg(
	"k",
	"yoassert("
		.. esc
		.. "pa !== undefined, '"
		.. esc
		.. "pa must exist"
		.. esc
		.. ""
)
