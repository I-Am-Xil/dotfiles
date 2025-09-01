local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {

    s({trig = "Perpendicular", dscr = "Returns a counter clockwise perpendicular vector"},
        t({"vec2 Perpendicular(vec2 direction){",
            "    return vec2(-direction.y, direction.x);",
            "}"})),

    s({trig = "Perpendicular", dscr = "Returns a counter clockwise perpendicular vector"},
        t({"mat2 Rotate2D(float angle){",
            "    return mat2(cos(angle), -sin(angle),",
            "                sin(angle), cos(angle));",
            "}"})),





}
