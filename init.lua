-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.opt.guicursor = "n-v-c:block-,i-ci-ve:block-blockwait700-blinkoff400-blinkon250,r-cr:hor20,o:hor50"
vim.o.clipboard = "unnamedplus"
vim.o.clipboard = "unnamedplus"
vim.o.mouse = ""
vim.o.tabstop = 4

vim.cmd("colorscheme tokyonight-night")
vim.defer_fn(function()
	vim.cmd([[hi Normal guibg = #000000]])
end, 0)

require("lazy").setup("plugins")

vim.api.nvim_set_keymap("n", "<C-v>", '"+p', { noremap = true, silent = true })
require("lazy").setup({ { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" } })

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
require("go").setup()
