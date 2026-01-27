return {
    "GCBallesteros/NotebookNavigator.nvim",
    dependencies = {
        "echasnovski/mini.comment",
        "hkupty/iron.nvim", -- repl provider
        -- "akinsho/toggleterm.nvim", -- alternative repl provider
        -- "benlubas/molten-nvim", -- alternative repl provider
        "anuvyklack/hydra.nvim",
    },

    keys = {
        { "<leader>xa", "<cmd>lua require('notebook-navigator').run_all_cells()<cr>" },
        { "<leader>xj", "<cmd>lua require('notebook-navigator').run_cells_below()<cr>" },
        { "<leader>xc", "<cmd>lua require('notebook-navigator').run_cell()<cr>" },
        { "<leader>xm", "<cmd>lua require('notebook-navigator').run_and_move()<cr>j" }
    },

    event = "VeryLazy",
    config = function()
        -- require('notebook-navigator').setup({ activate_hydra_keys = "<leader>h" })

        require('iron.core').setup({
            config = {
                repl_open_cmd = require('iron.view').right("40%")
            }
        })

        vim.keymap.set('n', '<leader>rs', '<cmd>IronRepl<cr>')
        vim.keymap.set('n', '<leader>rr', '<cmd>IronRestart<cr>')
        vim.keymap.set('n', '<leader>rf', '<cmd>IronFocus<cr>')
        vim.keymap.set('n', '<leader>rh', '<cmd>IronHide<cr>')
    end,
}
