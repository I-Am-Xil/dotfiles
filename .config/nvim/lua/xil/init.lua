require("xil.filetype")
require("xil.set")
require("xil.remap")
require("xil.lazy")
require("xil.globals")

-- add the next line to godot at setup.
-- --server ./godothost --remote-send "<C-\><C-N>:n {file}<CR>{line}G{col}|"
local gdproject = io.open(vim.fn.getcwd() .. "/project.godot", 'r')
if gdproject then
    io.close(gdproject)
    vim.fn.serverstart "./godothost"
end

