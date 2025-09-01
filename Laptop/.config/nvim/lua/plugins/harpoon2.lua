return{
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
        local harpoon = require("harpoon")

        harpoon:setup()

        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
        vim.keymap.set("n", "<leader>r", function() harpoon:list():remove() end)

        vim.keymap.set("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        vim.keymap.set("n", "<leader>p", function() harpoon:list():prev() end)
        vim.keymap.set("n", "<leader>np", function() harpoon:list():next() end)

        vim.keymap.set("n", "<leader>ma", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<leader>ms", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<leader>md", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<leader>mf", function() harpoon:list():select(4) end)
    end
}
