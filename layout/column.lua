---------------------------------------------------------------------------
-- @author Young Hoon Kim &lt;rsyh93@gmail.com&gt;
-- @copyright 2013 Young Hoon Kim
-- @release @AWESOME_VERSION@
---------------------------------------------------------------------------

-- FIXME: Non-overflowed columns don't display correctly

-- Grab environment we need
local math = math
local table = table
local ipairs = ipairs
local tag = require("awful.tag")

-- Multi-Column layout module for awful
module("rsyh93.layout.column")

local column = {}

local function single_column(t, area)
    local start_y = area.y
    local start_h = area.height

    local other_height = 50
    local master_height = area.height - (#t - 1) * other_height
    for k, c in ipairs(t) do
        if k == 1 then
            area.height = master_height
        else
            area.y = area.y + area.height
            area.height = other_height
        end
        c:geometry(area)
    end

    area.y = start_y
    area.height = start_h
end

local function fcolumn(p)
    local cls = p.clients
    local area = p.workarea
    local n = #cls

    local t = tag.selected(p.screen)
    local nmaster = math.max(math.min(tag.getnmaster(t), #cls), 1)
    local mwfact = tag.getmwfact(t) --master width factor
    local ncol = tag.getncol(t)

    area.width = area.width / nmaster
    local current_column = {}
    local per_column = math.floor(n / nmaster)
    local overflow = n % nmaster

    local flooded = false
    for _, c in ipairs(cls) do
        table.insert(current_column, c)
        if flooded or (#current_column % per_column == 0 and overflow == 0) then
            single_column(current_column, area)
            current_column = {}
            area.x = area.x + area.width
            flooded = false
        elseif #current_column % per_column == 0 and not flooded then
                overflow = overflow - 1
                flooded = true
        end
    end
end

--- Multi-Column layout.
-- @param screen The screen to arrange.
name = "column"
function arrange(p)
    return fcolumn(p)
end
