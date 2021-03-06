--------------------------------
-- jed's custom awesome theme --
--------------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()
local colors = xresources.get_current_theme()

local theme = {}

theme.font          = "Hermit 10"

theme.transparent   = "#FFFFFF00"
theme.bg_normal     = theme.transparent
theme.bg_focus      = colors["color8"]
theme.bg_urgent     = colors["color1"]
theme.bg_minimize   = "#444444"
theme.bg_systray    = theme.transparent

theme.fg_normal     = colors["foreground"]
theme.fg_focus      = colors["foreground"]
theme.fg_urgent     = colors["color1"]
theme.fg_minimize   = colors["color8"] 

theme.useless_gap   = dpi(10)
theme.border_width  = dpi(1)
theme.border_normal = colors["color8"]
theme.border_focus  = colors["foreground"]
theme.border_marked = colors["color1"]

theme.tasklist_bg_focus = theme.transparent
theme.taglist_bg  = theme.transparent
theme.taglist_bg_focus = theme.transparent
theme.taglist_fg_focus = "#FFFFFF"
theme.taglist_fg = colors["color5"]
theme.titlebar_bg    = colors["background"]
theme.titlebar_fg    = colors["color8"]
theme.titlebar_fg_focus = colors["foreground"]

theme.tooltip_bg_color = colors["background"]
theme.tasklist_bg = theme.transparent


-- There are other variable sets
-- overriding the apollo one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
local taglist_square_size = dpi(1)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path.."apollo/submenu.png"
theme.menu_height = dpi(20)
theme.menu_width  = dpi(150)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = themes_path.."apollo/titlebar/close.png"
theme.titlebar_close_button_focus  = themes_path.."apollo/titlebar/close.png"

theme.titlebar_minimize_button_normal = themes_path.."apollo/titlebar/minimize.png"
theme.titlebar_minimize_button_focus  = themes_path.."apollo/titlebar/minimize.png"

theme.titlebar_ontop_button_normal_inactive = themes_path.."apollo/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path.."apollo/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active   = themes_path.."apollo/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active    = themes_path.."apollo/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path.."apollo/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path.."apollo/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active   = themes_path.."apollo/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active    = themes_path.."apollo/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path.."apollo/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path.."apollo/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active   = themes_path.."apollo/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active    = themes_path.."apollo/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path.."apollo/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path.."apollo/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active   = themes_path.."apollo/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = themes_path.."apollo/titlebar/maximized_focus_active.png"

theme.wallpaper = themes_path.."apollo/background.jpg"

-- You can use your own layout icons like this:
theme.layout_fairh      = themes_path.."apollo/layouts/fairhw.png"
theme.layout_fairv      = themes_path.."apollo/layouts/fairvw.png"
theme.layout_floating   = themes_path.."apollo/layouts/floatingw.png"
theme.layout_magnifier  = themes_path.."apollo/layouts/magnifierw.png"
theme.layout_max        = themes_path.."apollo/layouts/maxw.png"
theme.layout_fullscreen = themes_path.."apollo/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path.."apollo/layouts/tilebottomw.png"
theme.layout_tileleft   = themes_path.."apollo/layouts/tileleftw.png"
theme.layout_tile       = themes_path.."apollo/layouts/tilew.png"
theme.layout_tiletop    = themes_path.."apollo/layouts/tiletopw.png"
theme.layout_spiral     = themes_path.."apollo/layouts/spiralw.png"
theme.layout_dwindle    = themes_path.."apollo/layouts/dwindlew.png"
theme.layout_cornernw   = themes_path.."apollo/layouts/cornernww.png"
theme.layout_cornerne   = themes_path.."apollo/layouts/cornernew.png"
theme.layout_cornersw   = themes_path.."apollo/layouts/cornersww.png"
theme.layout_cornerse   = themes_path.."apollo/layouts/cornersew.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.fg_urgent, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
