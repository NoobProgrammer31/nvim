return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.shfmt,
				-- null_ls.builtins.formatting.beautysh, 
        -- cant figure out why beautysh isnt working will do later #todo, similar for shellcheck
				-- null_ls.builtins.diagnostics.shellcheck,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
