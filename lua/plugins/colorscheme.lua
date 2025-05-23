return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000, -- load before other plugins
        config = function()
            require("rose-pine").setup({
                variant = "main", -- "main" | "moon" | "dawn"
                dark_variant = "main",
                disable_background = false,
                disable_float_background = false,
                highlight_groups = {
                    NotifyINFOBorder = { fg = "#9ccfd8" },
                    NotifyINFOTitle = { fg = "#9ccfd8" },
                    NotifyINFOIcon = { fg = "#9ccfd8" },

                    NotifyWARNBorder = { fg = "#f6c177" },
                    NotifyWARNTitle = { fg = "#f6c177" },
                    NotifyWARNIcon = { fg = "#f6c177" },

                    NotifyERRORBorder = { fg = "#eb6f92" },
                    NotifyERRORTitle = { fg = "#eb6f92" },
                    NotifyERRORIcon = { fg = "#eb6f92" },

                    NotifyDEBUGBorder = { fg = "#3e8fb0" },
                    NotifyDEBUGTitle = { fg = "#3e8fb0" },
                    NotifyDEBUGIcon = { fg = "#3e8fb0" },

                    NotifyTRACEBorder = { fg = "#c4a7e7" },
                    NotifyTRACETitle = { fg = "#c4a7e7" },
                    NotifyTRACEIcon = { fg = "#c4a7e7" },
                },       disable_italics = false,
            })

      vim.cmd("colorscheme rose-pine")
    end,
  },
}

