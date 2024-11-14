return {
  { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
  "folke/tokyonight.nvim",
  lazy = true,
  opts = { style = "night" },
  {
    "yorumicolors/yorumi.nvim",
    config = function()
      vim.cmd("colorscheme yorumi") -- Set the colorscheme
    end,
  },
},
  require("lazy").setup({
    "oxfist/night-owl.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      require("night-owl").setup()
      vim.cmd.colorscheme("night-owl")
    end,
  })
