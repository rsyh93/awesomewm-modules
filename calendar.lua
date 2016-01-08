-- Google Calendar
local gcal = {}

function gcal.remove()
    if gcal.notify ~= nil then
        naughty.destroy(gcal.notify)
        gcal.notify = nil
    end
end

function gcal.update()
    gcal.notify = naughty.notify({ title = "gcal", text = "Updating Google Calendar info...", bg = beautiful.bg_focus})
    gcal.info = awful.util.pread("gcalcli agenda `date +%x` `date -d tomorrow +%x`")
    gcal.info = string.gsub(gcal.info, "%[0m", "</span>")
    gcal.info = string.gsub(gcal.info, "%[0;33m", "<span>")
    gcal.info = string.gsub(gcal.info, "%[0;35m", "<span color = '" .. beautiful.fg_normal .. "'>")
    gcal.info = string.gsub(gcal.info, "%[0;36m", "<span color = '#1D1115'>")
    gcal.info = string.gsub(gcal.info, "%$(%w+)", "%1")
    gcal.info = gcal.info:match( "(.-)%s*$") -- removed trailing whitespace
end

function gcal.add()
    gcal.remove()
    if gcal.info == nil then gcal.update() end
    today = os.date("%A, %B %d, %Y") .. "\n"
    gcal.notify = naughty.notify({
                           title = today,
                           text = gcal.info,
                           timeout = 0,
                           bg = beautiful.bg_focus,
                           font = "Ubuntu 11",
                           screen = mouse.screen,
                          })
end

return gcal
