-- Google Calendar
local gcal = nil

function remove_gcal()
    if gcal~= nil then
        naughty.destroy(gcal)
        gcal = nil
    end
end

function update_gcal()
    naughty.notify({ title = "gcal", text = "Updating Google Calendar info...", bg = beautiful.bg_focus})
    gcalinfo = awful.util.pread("gcalcli agenda `date +%x` `date -d tomorrow +%x`")
    gcalinfo = string.gsub(gcalinfo, "%[0m", "</span>")
    gcalinfo = string.gsub(gcalinfo, "%[0;33m", "<span>")
    gcalinfo = string.gsub(gcalinfo, "%[0;35m", "<span color = '" .. beautiful.fg_normal .. "'>")
    gcalinfo = string.gsub(gcalinfo, "%[0;36m", "<span color = '#1D1115'>")
    gcalinfo = string.gsub(gcalinfo, "%$(%w+)", "%1")
    gcalinfo = gcalinfo:match( "(.-)%s*$") -- removed trailing whitespace
end

function add_gcal()
    remove_gcal()
    if gcalinfo == nil then update_gcal() end
    today = os.date("%A, %B %d, %Y") .. "\n"
    gcal = naughty.notify({
                           title = today,
                           text = gcalinfo,
                           timeout = 0,
                           bg = beautiful.bg_focus,
                           font = "Ubuntu 11",
                           screen = mouse.screen,
                          })
end

