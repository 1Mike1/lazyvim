return {
  "folke/tokyonight.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  opts = {
    style = "night",
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  },

  config = function(_, opts)
    require("tokyonight").setup(opts) -- opts here are passed from above
    require("notify").setup({
      background_colour = "#000000",
    })
    local colors = require("tokyonight.colors").setup({})
    vim.cmd("highlight WinSeparator guifg=" .. colors.bg_highlight)
    vim.cmd([[colorscheme tokyonight]])
  end,
}
