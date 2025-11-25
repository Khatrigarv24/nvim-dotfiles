return {
	{
		"williamboman/mason.nvim",
		config = true,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		config = true,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.diagnostic.config({
				virtual_text = {
					prefix = "●",
					spacing = 2,
				},
				signs = true,
				underline = true,
				update_in_insert = false,
				severity_sort = true,
			})

			-- Define servers (server name -> config)
			local servers = {
				gopls = {}, -- Go
				pyright = {}, -- Python
				tsserver = {}, -- JS/TS (changed from ts_ls)
				cssls = {}, -- CSS
			}

			-- Register each server config and enable it
			for server, cfg in pairs(servers) do
				-- Set the server config in the new API
				-- you can also put these files in your `~/.config/nvim/lsp/<name>.lua`
				-- but setting directly here is fine.
				vim.lsp.config[server] = cfg

				-- Enable the server so it activates for its filetypes
				-- Note: vim.lsp.enable accepts either a string or a table like { server }
				vim.lsp.enable(server)
			end
		end,
	},
}
