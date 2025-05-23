return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
		require("which-key").setup({
			icons = {
				breadcrumb = "",
				separator = "➜",
				group = "+",
			},
		})
	end,
}
