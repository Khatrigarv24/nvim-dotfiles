return {
	"MeanderingProgrammer/markdown.nvim",
	name = "render-markdown",
	ft = { "markdown" },
	config = function()
		require("render-markdown").setup({})

		-- Auto render on save
		vim.api.nvim_create_autocmd("BufWritePost", {
			pattern = "*.md",
			callback = function()
				vim.cmd("RenderMarkdown")
			end,
		})
	end,
	dependencies = { "nvim-treesitter/nvim-treesitter" },
}
