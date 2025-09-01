local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {


    s({trig = "MASK_SoftEdge", dscr = "Creates a soft edge mask"},
        t({"float MASK_SoftEdge(float sdf, float blur){",
            "    return smoothstep(0, -blur, sdf);",
            "}"
        })),

    s({trig = "MASK_HardEdge", dscr = "Creates a hard edge mask"},
        t({"float MASK_HardEdge(float sdf){",
            "    return step(0, -sdf);",
            "}"
        })),
}


