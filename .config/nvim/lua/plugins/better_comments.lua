return{
    "Djancyp/better-comments.nvim",

    config = function()
        require('better-comment').Setup({
            tags = {
                {
                    name = "*",
                    fg = "#a3be8c",
                    bg = "",
                    bold = false,
                    virtual_text = ""
                },
                {
                    name = "TODO",
                    fg = "#ffeda7",
                    bg = "",
                    bold = false,
                    virtual_text = ""
                }
            }
        })
    end
}

