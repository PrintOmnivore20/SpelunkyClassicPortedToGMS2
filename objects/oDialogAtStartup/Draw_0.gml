draw_set_font(global.myFontSmall);
draw_set_color(c_yellow);
draw_text(16,8,"DO YOU WANT TO LAUNCH\n       CONFIG?")

if (!file_exists("settings.cfg")) {
draw_set_color(c_red)
draw_text(16,24,"SETTINGS.CFG DOES\nNOT EXIST!")
}
if (!file_exists("keys.cfg")) {
draw_set_color(c_red)
draw_text(16,32,"KEYS.CFG DOES\nNOT EXIST!")
}