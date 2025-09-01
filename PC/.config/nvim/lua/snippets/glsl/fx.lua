local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {


    s({trig = "FX_Noise", dscr = "Creates a salt and pepper noise effect"},
        t({"float FX_Noise(vec2 uv, float seed, float density){",
            "    vec2 p = floor(uv);",
            "    p += seed;",
            "    p = fract(p*vec2(123.34, 456.21));",
            "    p += dot(p, p+45.32);",
            "    return step(1.0 - density, fract(p.x*p.y));",
            "}"
        })),

    s({trig = "FX_Posterize", dscr = "Creates a salt and pepper noise effect"},
        t({"vec3 FX_Posterize(vec3 color, float samples){",
            "    return floor(color*samples)/samples;",
            "}"
        })),

    s({trig = "FX_Posterize", dscr = "Creates a salt and pepper noise effect"},
        t({"float FX_GammaCorrection(float value){",
            "    return pow(value, 1.0/2.2);",
            "}"
        })),

}

