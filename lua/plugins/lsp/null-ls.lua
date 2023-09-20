return {
	"jose-elias-alvarez/null-ls.nvim",
	event = "BufReadPre",
	config = function()
		local null_ls = require("null-ls")
		local formatting = null_ls.builtins.formatting

		null_ls.setup({
			debug = false,
			sources = {
				formatting.stylua,
				formatting.black,
				formatting.prettier,
			},
		})
	end
}
