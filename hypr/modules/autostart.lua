-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function ()
  hl.exec_cmd("$HOME/.config/waybar/launch.sh")
  hl.exec_cmd("awww-daemon")
  hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
  hl.exec_cmd("dunst")
  hl.exec_cmd("swayosd-server")
  hl.exec_cmd("hypridle")
  hl.exec_cmd("hyprsunset")
end)
