return {
  -- add rose-pine
  { "rose-pine/neovim" },
  -- Configure LazyVim to load rose-pine
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  "LazyVim/LazyVim",
  opts = {
    style = "main",
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  },

  config = function(_, opts)
    require("rose-pine").setup(opts) -- opts here are passed from above
    require("notify").setup({
      background_colour = "#000000",
    })
    local colors = require("rose-pine.colors").setup({})
    vim.cmd("highlight WinSeparator guifg=" .. colors.bg_highlight)
    vim.cmd([[colorscheme rose-pine]])
  end,

  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "rose-pine",
  --   },
  -- },
}
