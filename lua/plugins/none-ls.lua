return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.eslint_d,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.cppcheck,
				null_ls.builtins.diagnostics.cpplint,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.cmake_format,
			},
		})
		vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {})
		vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {})
	end,
}
