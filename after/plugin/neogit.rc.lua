local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<C-b>', '<Cmd>Neogit kind=split<CR>', opts)

return {
	"TimUntersbereger/neogit",
	cmd = "Neogit",
	config = function()
		require("neogit").setup({
			kind = "vsplit",
			signs = {
				-- { CLOSED, OPENED }
				section = { " ", " " },
				item = { " ", " " },
				hunk = { "", "" },
			},
			integration = { diffview = true },
		})
	end,
}
