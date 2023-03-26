vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require("nvim-tree").setup({
	filters = {
		dotfiles = true,
	},
})

vim.keymap.set("n", "<leader>ptt", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>pt", vim.cmd.NvimTreeFocus)



