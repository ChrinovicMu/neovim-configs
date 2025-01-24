-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

--vim.opt.guicursor = "n-v-c:block-,i-ci-ve:block-blockwait700-blinkoff400-blinkon250,r-cr:hor20,o:hor50"
vim.o.clipboard = "unnamedplus"
vim.o.clipboard = "unnamedplus"
vim.o.mouse = ""
vim.o.tabstop = 4
vim.opt.list = false
vim.opt.cursorline = false
vim.opt.termguicolors = true
vim.cmd("colorscheme quiet")
vim.defer_fn(function()
  vim.cmd([[hi Normal guibg = #000000]])
end, 0)

require("lazy").setup("plugins")

vim.api.nvim_set_keymap("n", "<C-v>", '"+p', { noremap = true, silent = true })
require("lazy").setup({ { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" } })

vim.opt.guicursor = "n-v-c:block,i-ci-ve:block-blinkwait700-blinkoff400-blinkon250"

vim.cmd("highlight Visual guibg=#0000FF guifg=NONE")

require("lazy").setup({
  {
    "boganworld/crackboard.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crackboard").setup({
        session_key = "",
      })
    end,
  },
})

vim.cmd([[
  highlight Function guifg=#A9A9A9 ctermfg=2
]])

vim.cmd([[
  highlight Comment guifg=#505050 ctermfg=235
]])
require("go").setup()

vim.cmd([[
  highlight Type guifg=#707070 ctermfg=246
]])

require("go").setup()

require("lualine").setup({
  options = {
    theme = {
      normal = { c = { fg = "#ffffff", bg = "#000000" } },
      insert = { c = { fg = "#000000", bg = "#808080" } }, -- Gray for insert mode
      visual = { c = { fg = "#ffffff", bg = "#ADD8E6" } },
      replace = { c = { fg = "#ffffff", bg = "#ff0000" } },
    },
  },
})
