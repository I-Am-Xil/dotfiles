return{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            auto_install = true,
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "heex", "html", "glsl", "latex", "python", "asm", "css", "gdscript", "gdshader", "bash", "css", "javascript", "rust" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })

        vim.treesitter.language.register("glsl", { "frag" })

    end
}
