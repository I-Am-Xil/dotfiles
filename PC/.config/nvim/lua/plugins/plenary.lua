return {
    'nvim-lua/plenary.nvim',

    config = function ()
        vim.keymap.set('n', "<leader>t", "<Plug>PlenaryTestFile")
    end
}
