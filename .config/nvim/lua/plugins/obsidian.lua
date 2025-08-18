return {
	"epwalsh/obsidian.nvim",
	version = "*",
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		workspaces = {
			{
				name = "personal",
				path = "~/e/Documents/Obsidian Vault",
			},
			{
				name = "work",
				path = "~/f/vaults/work",
			},
		},
		ui = { enable = false },
		templates = {
			folder = "templates",
			date_format = "%d-%m-%Y",
			time_format = "%H:%M",
		},

		-- 👇 this ensures frontmatter always has a date
		note_frontmatter_func = function(note)
			local out = {
				id = note.id,
				aliases = note.aliases,
				tags = note.tags,
				date = os.date("%d-%m-%Y %H:%M"), -- matches your template format
			}
			return out
		end,
	},
}
