return{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            auto_install = true,
            ensure_installed = {
                "c", "lua", "glsl", "latex", "python", "css", "gdscript", "gdshader", "bash"
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
