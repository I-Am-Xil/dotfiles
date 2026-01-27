return{
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require("nordic").setup({
            italic_comments = false,
            transparent = { bg = true, float = true},
            on_palette = function (palette)
                palette.cyan = {
                    base = '#66e0df', --fields
                    bright = '#49c7c6', --command mode
                    dim = '#80B3B2'
                }
                palette.red = {
                    base = "#d0002e", --preproc
                    bright = "#d92649", --Visual lualine and warnings
                    dim = '#B74E58'
                }
                palette.orange = {
                    base = '#e87a2d', --everything it seems
                    bright = '#00ff00', --Normal lualine
                    dim = '#CB775D'
                }
                palette.yellow = {
                    base = '#feda3f', --i don't remember but it looks ok like this
                    bright = '#feda3f',
                    dim = '#feda3f'
                }
                palette.green = {
                    base = '#95d44d', --strings
                    bright = '#95d44d',
                    dim = '#97B67C'
                }
                palette.magenta = {
                    base = '#B48EAD',
                    bright = '#d664c8', --Scalars and constants
                    dim = '#A97EA1'
                }
                palette.blue0 = "#5462c2" --'self' for some reason
                palette.blue1 = "#37a1ea" --:Ex dirs
                palette.blue2 = "#37a1ea" --functions
            end,
        })
        require("nordic").load()
    end
}
