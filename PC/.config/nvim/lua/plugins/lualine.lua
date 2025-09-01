return{
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    config = function ()
        require('lualine').setup({
            options = {
                icons_enabled = true,
                section_separators = { left = "", right = ""},
            },
            sections = {
                lualine_c = {{
                    "filename",
                    file_status = true,
                    path = 1
                }},
                lualine_x = {"filetype"}
            }
        })
    end
}
