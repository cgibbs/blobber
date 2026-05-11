draw_self();

// need structs for items so this can dynamically create "use item" buttons to click on
if (global.itemMenuActive == true) {
	for (var i = 0; i < ds_grid_width(global.inventory)-1; i++) {
		if (global.inventory[# i, 0] != 0) {
			writeToGui(x+20,y+20+itemButtonH*i, global.inventory[# i, 0], c_black, false);
		}
	}
}

