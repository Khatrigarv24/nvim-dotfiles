return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    vim.opt.termguicolors = true

    require("bufferline").setup({
      options = {
        mode = "buffers",
        numbers = "none",
        diagnostics = "nvim_lsp",
        separator_style = "thin", -- or "thin" | "thick"
        show_buffer_close_icons = false,
        show_close_icon = false,
        color_icons = true,
      },
    })
  end,
}

