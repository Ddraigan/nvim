return {
	{
		"numToStr/Comment.nvim",
		config = true,
	},
	-- Detect tabstop and shiftwidth automatically
	{
		"tpope/vim-sleuth",
		event = "VeryLazy",
	},
	-- Icons, everything uses this one :)
	{
		"nvim-tree/nvim-web-devicons",
	},
	{
		"ahmedkhalf/project.nvim",
		name = "project_nvim",
		event = "VeryLazy",
		opts = {
			manual_mode = false,
			detection_methods = { "lsp", "pattern" },
			show_hidden = false,
		},
	},
	-- Toml support
	{
		"Saecki/crates.nvim",
		event = "VeryLazy",
	},
	-- emmet
	{
		"mattn/emmet-vim",
		event = "VeryLazy",
	},
	-- Additional Lua configuration
	{
		"folke/neodev.nvim",
		event = "VeryLazy",
	},
	-- Vim command hints
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {}
	}
}
