local wk = require("which-key")

vim.g.mapleader = " "

-- General Keymaps
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<Space>", "<Nop>", opts)
vim.keymap.set("n", "<leader>w", ":w<CR>", opts)
vim.keymap.set("n", "<leader>q", ":wqa<CR>", opts)
vim.keymap.set("n", "L", "<cmd>bnext<CR>", opts)
vim.keymap.set("n", "<leader>bd", function()
	local current_buf = vim.api.nvim_get_current_buf()
	vim.cmd("bprevious")
	vim.cmd("bd " .. current_buf)
end)
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Register which-key mappings
wk.register({
	["<leader>"] = {
		f = {
			name = "+file",
			f = { "<cmd>Telescope find_files<cr>", "Find File" },
			g = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
		},
		l = {
			name = "+lsp",
			d = { vim.lsp.buf.definition, "Go to Definition" },
			r = { vim.lsp.buf.references, "References" },
			h = { vim.lsp.buf.hover, "Hover" },
			a = { vim.lsp.buf.code_action, "Code Action" },
			f = { vim.lsp.buf.format, "Format" },
			R = { vim.lsp.buf.rename, "Rename Symbol" },
		},
		g = {
			name = "+git",
			d = { "<cmd>DiffviewOpen<cr>", "Open Diffview" },
			h = { "<cmd>DiffviewFileHistory<cr>", "File History" },
			c = { "<cmd>DiffviewClose<cr>", "Close Diffview" },
		},
		e = { "<cmd>NvimTreeToggle<cr>", "Toggle File Explorer" },
	},
}, { mode = "n" }) -- apply only in normal mode
