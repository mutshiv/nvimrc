return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",

	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
            local harpoon = require("harpoon")

            harpoon:setup()

            vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
            vim.keymap.set("n", "<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

            vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, {desc = "H Mark File 1"})
            vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, {desc = "H Mark File 2"})
            vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, {desc = "H Mark File 3"})
            vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, {desc = "H Mark File 4"})
            vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end, {desc = "H Mark File 5"})
        end
}
