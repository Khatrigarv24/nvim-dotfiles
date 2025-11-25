return {
	"A7Lavinraj/fyler.nvim",
	dependencies = { "nvim-mini/mini.icons" },
	branch = "stable", -- Use stable branch for production
	lazy = false, -- Necessary for `default_explorer` to work properly
	opts = {},
	config = function()
		require("fyler").setup()

		vim.api.nvim_create_autocmd("VimEnter", {
			callback = function()
				local arg = vim.fn.argv(0)
				if arg ~= "" and vim.fn.isdirectory(arg) == 1 then
					-- schedule so this runs after netrw's own VimEnter handlers
					vim.schedule(function()
						-- if the current buffer is netrw, wipe it out
						if vim.bo.filetype == "netrw" then
							-- use bdelete! so we don't get stuck
							vim.cmd("bdelete!")
						end
						-- open Flyer
						vim.cmd("Fy")
					end)
				end
			end,
		})
	end,
}
