local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {

    s({trig = "BandLegacy", dscr = "Draws a band shape marginally more efficient"},
        t({"float Band(float scale, vec2 blur, float axis){",
            "   axis += 0.5;",
            "   scale += 0.5;",
            "   float s1 = smoothstep(scale + blur.x, scale - blur.x, axis);",
            "   float s2 = smoothstep(scale + blur.y, scale - blur.y, 1.-axis);",
            "   return s1*s2;",
            "}"})),


    s({trig = "BandOrthogonal", dscr = "Draws a band shape orthogonal to the direction vector"},
        t({"float BandOrthogonal(vec2 uv, float position, float thickness, vec2 blur, vec2 direction){",
            "   float halfThickness = thickness*0.5;",
            "   float leftEdge = position + halfThickness;",
            "   float rightEdge = position - halfThickness;",
            "   float axis = dot(normalize(direction), uv);",
            "",
            "   float left = smoothstep(leftEdge + blur.x, leftEdge - blur.x, axis);",
            "   float right = smoothstep(rightEdge + blur.y, rightEdge - blur.y, axis);",
            "   return left - right;",
            "}"})),


    s({trig = "BandAligned", dscr = "Draws a band shape aligned with the direction vector"},
        t({"float BandAligned(vec2 uv, float position, float thickness, vec2 blur, vec2 direction){",
            "    return BandOrthogonal(uv, position, thickness, blur, Perpendicular(direction));",
            "}"})),


    s({trig = "Rectangle", dscr = "Draws a rectangle shape"},
        t({"float Rectangle(vec2 uv, vec2 position, vec2 size, vec4 blur, vec2 orientation){",
            "   float xBand = BandOrthogonal(uv, position.x, size.x, blur.xy, orientation);",
            "   float yBand = BandAligned(uv, position.y, size.y, blur.zw, orientation);",
            "   return xBand * yBand;",
            "}"})),

    s({trig = "RectanglePerimeter", dscr = "Draws a rectangle shape"},
        t({"float RectanglePerimeter(vec2 uv, vec2 position, vec2 size, float thickness, vec4 blur, vec2 orientation){",
            "    float rect = Rectangle(uv, position, size + vec2(thickness), blur, orientation);",
            "    rect -= Rectangle(uv, position, size - vec2(thickness), blur, orientation);",
            "    return rect;",
            "}"})),


    s({trig = "Arc", dscr = "Draws an arc shape"},
        t({"float Arc(vec2 uv, vec2 position, float radius, float angle, float thickness, vec4 blur){",
            "    vec2 UVlocal = Rotate2D(angle/2.0)*uv + position;",
            "    vec2 orientation = vec2(1.0, 0.0);",
            "",
            "    float UVradius = length(UVlocal);",
            "    float UVangle = atan(UVlocal.y, UVlocal.x);",
            "    vec2 UVpolar = vec2(UVradius, UVangle);",
            "",
            "    float arc = Rectangle(UVpolar, vec2(0.0), vec2(radius + thickness, angle), blur, orientation);",
            "    arc -= Rectangle(UVpolar, vec2(0.0), vec2(radius - thickness, angle), blur, orientation);",
            "",
            "    return arc;",
            "}"})),


    s({trig = "Circle", dscr = "Draws a circle shape"},
        t({"float Circle(vec2 uv, float scale, float blur){",
            "   return smoothstep(scale + blur, scale - blur, length(uv));",
            "}"})),

    s({trig = "Circunference", dscr = "Draws a circunference shape"},
        t({"float Circunference(vec2 uv, float scale, float thickness, float blur){",
            "    float circunference = Circle(uv, scale + thickness/2.0, blur);",
            "    circunference -= Circle(uv, scale - thickness/2.0, blur);",
            "    return circunference;",
            "}"})),

}
