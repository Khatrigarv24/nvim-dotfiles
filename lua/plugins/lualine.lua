return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        variant = "moon", -- "main" | "moon" | "dawn"
        dark_variant = "moon", -- force "moon" for dark mode
        disable_background = true, -- transparent background
        disable_float_background = true,
        disable_italics = false, -- use italics
        highlight_groups = {
          -- Custom highlights
          Normal = { bg = "none" },
          NormalNC = { bg = "none" },
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          Pmenu = { bg = "none" },
          SignColumn = { bg = "none" },
          VertSplit = { bg = "none" },
          StatusLine = { bg = "none" },
        },
      })

      vim.cmd("colorscheme rose-pine")
    end,
  },
}

