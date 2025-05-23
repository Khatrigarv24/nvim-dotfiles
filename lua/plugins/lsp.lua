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
                    prefix = "●", -- Could be "●", "▎", "■", or any symbol
                    spacing = 2,
                },
                signs = true,
                underline = true,
                update_in_insert = false, -- optional: don't show diagnostics while typing
                severity_sort = true,
            })

            local lspconfig = require("lspconfig")

            -- Language servers for Go, Python, JS, TS
            local servers = {
                gopls = {},            -- Go
                pyright = {},          -- Python
                ts_ls = {},         -- JS/TS
            }

            for server, config in pairs(servers) do
                lspconfig[server].setup(config)
            end
        end,
    },
}

