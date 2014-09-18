---------------------------------------------------------------------------
-- @author Young Hoon Kim &lt;rsyh93@gmail.com&gt;
-- @copyright 2013 Young Hoon Kim
-- @release @AWESOME_VERSION@
---------------------------------------------------------------------------

-- Grab environment we need
local math = math
local ipairs = ipairs
local tag = require("awful.tag")

-- Three-column center focused layout
module("rsyh93.layout.centerpiece")

local column = {}

-- right-skewed .25 - .50 - .25
local function fcenterpiece(p)
    local cls = p.clients
    local area = p.workarea
    local n = #cls

    local t = tag.selected(p.screen)
    local nmaster = math.min(tag.getnmaster(t), #cls)
    local mwfact = tag.getmwfact(t) --master width factor
    local ncol = tag.getncol(t)

    local start_x = area.x
    local otherfact = (1 - mwfact) / 2
    local mwwidth = area.width * mwfact
    local otherwidth = area.width * otherfact

    for k, c in ipairs(cls) do
        if k == 1 then
            area.x = area.x + otherwidth
            area.width = mwwidth
        else
            k = k - 1
            if k < n / 2 then
                area.x = start_x
                area.width = otherwidth
            else
                area.x = start_x + mwwidth + otherwidth
                area.width = otherwidth
            end
        end
        c:geometry(area)
    end
end

--- Multi-Column layout.
-- @param screen The screen to arrange.
name = "centerpiece"
function arrange(p)
    return fcenterpiece(p)
end
