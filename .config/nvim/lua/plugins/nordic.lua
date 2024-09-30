return{
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require("nordic").setup({
            italic_comments = false,
            transparent = {
                bg = true
            },
        })
        require('nordic').load()
    end
}
