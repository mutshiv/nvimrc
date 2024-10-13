return {
  "nvim-telescope/telescope.nvim",

  tag = "0.1.8",

  dependencies = {
  	"nvim-lua/plenary.nvim"
  },
	config = function () 
		vim.keymap.set("n", "<leader>pg", function()
		  local builtin = require('telescope.builtin')
		  builtin.grep_string({ search = vim.fn.input("Grep > ") })
		  vim.keymap.set('n', "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
		end)
	end,
}
