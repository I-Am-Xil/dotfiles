local snippets = {}
for _, file in ipairs({"misc", "mask", "math", "sdf2d", "fx"}) do
    vim.list_extend(snippets, require("snippets.glsl." .. file))
end
return snippets
