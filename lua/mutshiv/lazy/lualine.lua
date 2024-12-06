return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional for icons
        config = function()
            require('lualine').setup {
                options = {
                    theme = 'codedark', -- Automatically chooses a theme based on your colorscheme
                    section_separators = '', -- Customize as you like
                    component_separators = '|',
                },
                sections = {
                    lualine_a = { 'mode', 'FugitiveHead' },                   -- Displays the current mode
                    lualine_b = { 'branch' },                 -- Displays the current Git branch
                    lualine_c = { 'filename' },               -- Shows the current file name
                    lualine_x = { 'encoding', 'fileformat', 'filetype' }, -- Additional file info
                    lualine_y = { 'progress' },               -- Show progress in the file
                    lualine_z = { 'location' },               -- Cursor location
                },
            }
        end
    }
}
