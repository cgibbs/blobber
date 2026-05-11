var guiw = display_get_gui_width();
var guih = display_get_gui_height();

if state = states.battleStart {
	writeToGui(guiw/2, guih/2, "Battle Start", c_white, true);
}