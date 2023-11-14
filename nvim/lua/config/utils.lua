local M = {}

M.dump = function(o)
	if type(o) == "table" then
		local s = "{ "
		for k, v in pairs(o) do
			if type(k) ~= "number" then
				k = '"' .. k .. '"'
			end
			s = s .. "[" .. k .. "] = " .. M.dump(v) .. ","
		end
		return s .. "} "
	else
		return tostring(o)
	end
end

local function opts(desc, bufnr)
	return { desc = "[LSP]: " .. desc, buffer = bufnr, noremap = true, silent = true }
end

M.on_attach = function(client, bufnr)
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts("Go To Declaration", bufnr))
	-- vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts("Go To Definition", bufnr))
	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts("Hover", bufnr))
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts("Go To Implementation", bufnr))
	vim.keymap.set("n", "ga", vim.lsp.buf.code_action, opts("Code Action", bufnr))
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts("Rename", bufnr))
	-- vim.keymap.set("n", "gr", vim.lsp.buf.references, opts("Go To References", bufnr))
	vim.keymap.set("n", "<leader>df", vim.diagnostic.goto_next, opts("Go To Next Diagnostic", bufnr))
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts("Code Actions", bufnr))
	--[[ vim.keymap.set("n", "<space>fM", function()
					vim.lsp.buf.format({ async = true })
				end, opts("Format", bufnr)) ]]
end

return M