-- http://awesome.naquadah.org/wiki/Gizmoguy's_super-easy_acpi_battery_widget


-- Example init code:
--
--batterywidget = rsyh93.battery.widget
--batterywidget.timer:start()
--

local awful = require("awful")
local wibox = require("wibox")

local battery = {}

function battery.update()
	local fh = assert(io.popen("acpi | cut -d, -f2 -", "r"))
	battery.widget:set_text("Bat: " .. string.gsub(fh:read("*a"), "\n", " "))
	fh:close()
end

battery.widget = wibox.widget.textbox()
battery.timer = timer({timeout=5})
battery.timer:connect_signal("timeout", battery.update)

return battery


