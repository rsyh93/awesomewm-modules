-- Remember the milk
mytodolist = widget({ type = "textbox", name = "mytodolist" })
mytodolist.text = " | TODO"
local rtm = nil
function remove_rtm()
    if rtm~= nil then
        naughty.destroy(rtm)
        rtm = nil
    end
end

function update_rtm()
    rtminfo = awful.util.pread("rtm -p lsp status:incomplete")
    rtminfo = string.gsub(rtminfo, "Authenticating%.%.%. |[= ]*|%s*", "")
    rtminfo = string.gsub(rtminfo, "%$(%w+)", "%1")
    rtminfo = rtminfo:match( "(.-)%s*$") -- removed trailing whitespace
    local tmp = rtminfo
    rtminfo = "\n\n"
    for v,k in string.gmatch(tmp, "(%d+ [ %(]([ %d])[ %)] .-\n)") do
        if k == "1" then rtminfo = rtminfo .. "<span color = '#EA5200'>" .. v .. "</span>" 
        elseif k == "2" then rtminfo = rtminfo .. "<span color = '#0060BF'>" .. v .. "</span>" 
        elseif k == "3" then rtminfo = rtminfo .. "<span color = '#359AFF'>" .. v .. "</span>"
        else rtminfo = rtminfo .. v .. "" end
    end
end

function add_rtm()
    remove_rtm()
    if rtminfo == nil then update_rtm() end
    rtm = naughty.notify({
                           title = "Remember The Milk",
                           text = rtminfo,
                           bg = beautiful.bg_focus,
                           font = "Ubuntu 11",
                           timeout = 0,
                           screen = mouse.screen,
                          })
end
mytodolist:add_signal("mouse::enter", add_rtm)
mytodolist:add_signal("mouse::leave", remove_rtm)

