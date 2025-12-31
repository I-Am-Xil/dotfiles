vim.g.mapleader = " "


vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


vim.keymap.set('n', "<leader>w", "mzgg=G`z<cmd>w<CR>")


vim.keymap.set('i', "jj", "<Esc>")


vim.keymap.set('n', "<leader>o", "o<Esc>")


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


vim.keymap.set("n", "<C-j>", "<C-d>zz")
vim.keymap.set("n", "<C-k>", "<C-u>zz")


vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


vim.keymap.set("x", "<leader>p", [["_dp]])


vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true } )
vim.keymap.set("n", "<F5>", "<cmd>!%<CR>", { silent = true } )
vim.keymap.set("n", "<F10>", "<cmd>!openscad % &disown<CR>", { silent = true } )
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>", { silent = true } )


vim.keymap.set("i", "<leader>(", "()<Left>")
vim.keymap.set("i", "<leader>{", "{}<Left>")
vim.keymap.set("i", "<leader>[", "[]<Left>")
vim.keymap.set("i", '<leader>"', '""<Left>')
vim.keymap.set("i", "<leader>'", "''<Left>")
vim.keymap.set("i", "<leader><", "<><Left>")
