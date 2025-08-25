local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {


    s({trig = "SDF2D_Circle", dscr = "Draws a circle shaped SDF"},
        t({"float SDF2D_Circle(vec2 uv){",
            "    return length(uv) - 0.5;",
            "}"})),


    s({trig = "SDF2D_Band", dscr = "Draws a band shape"},
        t({"float SDF2D_Band(vec2 uv){",
            "float halfSize = 0.5;",
            "    return abs(uv.y) - halfSize;",
            "}"})),

    s({trig = "SDF2D_Ring", dscr = "Draws a 2D ring shape"},
        t({"float SDF2D_Ring(vec2 uv, float thickness){",
            "    float radius = 0.5;",
            "    float tube = 0.25*thickness;",
            "    return abs(length(uv) - radius + tube) - tube;",
            "}"})),

    s({trig = "SDF2D_Rectangle", dscr = "Draws a 2D ring shape"},
        t({"float SDF2D_Rectangle(vec2 uv, float cornerRadius){",
            "    vec2 hyperband = abs(uv) - 0.5 + cornerRadius;",
            "    return length(max(hyperband, 0.0)) + min(max(hyperband.x, hyperband.y), 0.0) - cornerRadius;",
            "}"})),





}
