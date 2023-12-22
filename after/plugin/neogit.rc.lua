local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Neogit keybindings Stage Status
map('n', '<C-b>', '<Cmd>Neogit kind=split<CR>', opts)
-- map('n', '<C-s>, <Cmd>Neogit<CR>', opts)

return {
	"TimUntersbereger/neogit",
	cmd = "Neogit",
	config = function()
		require("neogit").setup({
			kind = "vsplit",
			signs = {
				-- { CLOSED, OPENED }:q
				-- 
				section = { " ", " " },
				item = { " ", " " },
				hunk = { "", "" },
			},
			integration = { diffview = true },
		})
	end,
}
