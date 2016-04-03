-------------------------------
--  "Zenburn" awesome theme  --
--    By Adrian C. (anrxc)   --
-------------------------------

-- Alternative icon sets and widget icons:
--  * http://awesome.naquadah.org/wiki/Nice_Icons

-- {{{ Main
theme = {}
theme.wallpaper = "/home/young/.config/awesome/rsyh93/zenburn/zenburn-background.png"
-- }}}

-- {{{ Styles
theme.font      = "sans 8"

-- {{{ Colors
theme.fg_normal  = "#232322"
theme.fg_focus   = "#EEEEEE"
theme.fg_urgent  = "#CC9393"
theme.bg_normal  = "#FFC900"
theme.bg_focus   = "#0F63CF"
theme.bg_urgent  = "#3F3F3F"
theme.bg_systray = theme.bg_normal
-- }}}

-- {{{ Borders
theme.border_width  = 2
theme.border_normal = "#544200"
theme.border_focus  = "#0F63CF"
theme.border_marked = "#55BB55"
-- }}}

-- {{{ Titlebars
theme.titlebar_fg_focus  = "#EEEEEE"
theme.titlebar_fg_normal = "#232322"
theme.titlebar_bg_focus  = "#0F63CF"
theme.titlebar_bg_normal = "#544200"
-- }}}

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
--theme.taglist_bg_focus = "#CC9393"
-- }}}

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.fg_widget        = "#AECF96"
--theme.fg_center_widget = "#88A175"
--theme.fg_end_widget    = "#FF5656"
--theme.bg_widget        = "#494B4F"
--theme.border_widget    = "#3F3F3F"
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = "#CC9393"
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = 15
theme.menu_width  = 100
-- }}}

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = "/home/young/.config/awesome/rsyh93/zenburn/taglist/color-squarefz.png"
theme.taglist_squares_unsel = "/home/young/.config/awesome/rsyh93/zenburn/taglist/color-squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
theme.awesome_icon           = "/home/young/.config/awesome/rsyh93/zenburn/color-awesome-icon.png"
theme.menu_submenu_icon      = "/usr/share/awesome/themes/default/submenu.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = "/home/young/.config/awesome/rsyh93/zenburn/layouts/color-tile.png"
theme.layout_tileleft   = "/home/young/.config/awesome/rsyh93/zenburn/layouts/color-tileleft.png"
theme.layout_tilebottom = "/home/young/.config/awesome/rsyh93/zenburn/layouts/color-tilebottom.png"
theme.layout_tiletop    = "/home/young/.config/awesome/rsyh93/zenburn/layouts/color-tiletop.png"
theme.layout_fairv      = "/home/young/.config/awesome/rsyh93/zenburn/layouts/color-fairv.png"
theme.layout_fairh      = "/home/young/.config/awesome/rsyh93/zenburn/layouts/color-fairh.png"
theme.layout_spiral     = "/home/young/.config/awesome/rsyh93/zenburn/layouts/color-spiral.png"
theme.layout_dwindle    = "/home/young/.config/awesome/rsyh93/zenburn/layouts/color-dwindle.png"
theme.layout_max        = "/home/young/.config/awesome/rsyh93/zenburn/layouts/color-max.png"
theme.layout_fullscreen = "/home/young/.config/awesome/rsyh93/zenburn/layouts/color-fullscreen.png"
theme.layout_magnifier  = "/home/young/.config/awesome/rsyh93/zenburn/layouts/color-magnifier.png"
theme.layout_floating   = "/home/young/.config/awesome/rsyh93/zenburn/layouts/color-floating.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = "/usr/share/awesome/themes/zenburn/titlebar/close_focus.png"
theme.titlebar_close_button_normal = "/usr/share/awesome/themes/zenburn/titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active  = "/usr/share/awesome/themes/zenburn/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = "/usr/share/awesome/themes/zenburn/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = "/usr/share/awesome/themes/zenburn/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = "/usr/share/awesome/themes/zenburn/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = "/usr/share/awesome/themes/zenburn/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = "/usr/share/awesome/themes/zenburn/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = "/usr/share/awesome/themes/zenburn/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = "/usr/share/awesome/themes/zenburn/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = "/usr/share/awesome/themes/zenburn/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = "/usr/share/awesome/themes/zenburn/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = "/usr/share/awesome/themes/zenburn/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = "/usr/share/awesome/themes/zenburn/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = "/usr/share/awesome/themes/zenburn/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = "/usr/share/awesome/themes/zenburn/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = "/usr/share/awesome/themes/zenburn/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = "/usr/share/awesome/themes/zenburn/titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

return theme
