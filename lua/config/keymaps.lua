vim.g.mapleader = " "

-- General Keymaps
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<Space>", "<Nop>", opts)
vim.keymap.set("n", "<leader>w", ":w<CR>", opts)
vim.keymap.set("n", "L", "<cmd>bnext<CR>", opts)
vim.keymap.set("i", "jj", "<esc>", opts)

vim.keymap.set("n", "<leader>bd", function()
	local current_buf = vim.api.nvim_get_current_buf()
	vim.cmd("bprevious")
	vim.cmd("bd " .. current_buf)
end, opts)

vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
vim.keymap.set("n", "<leader>e", "<cmd>Fyler<cr>")

-- Telescope keybinds
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)

-- LSP keybinds
vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, opts)
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.references, opts)
vim.keymap.set("n", "<leader>ch", vim.lsp.buf.hover, opts)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, opts)
vim.keymap.set("n", "<leader>cR", vim.lsp.buf.rename, opts)

-- Git / Diffview keybinds
vim.keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<cr>", opts)
vim.keymap.set("n", "<leader>gh", "<cmd>DiffviewFileHistory<cr>", opts)

vim.keymap.set("n", "<leader>mr", "<cmd>RenderMarkdown<CR>", { desc = "Render Markdown Preview" })
