image_speed = 0;

if (self.open == true) {
	image_index = 1;
} else {
	image_index = 0;	
}

function bump(propagate=true) {
	show_debug_message("bumped door");
	col_x = x+32;
	col_y = y+32;
	nextDoor = collision_circle(col_x-tileSize, col_y, 20, objDoorEast, false, true);
	if (self.locked) {
		// check player inventory for key and unlock if found
	}
	
	if (!self.locked) {
		show_debug_message("opened door!")
		self.open = true;
		image_index = 1;
		if (nextDoor != noone and propagate == true) {
			nextDoor.bump(false); // prevents infinite loop
		}
	}
	
	// onOpen is activated when door is opened, has to have a bump method of its own
	// can be traps, encounters, anything that can be interacted with and produce a
	// tangible result
	if (self.onOpen != noone) {
		self.onOpen.bump();	
	}
}