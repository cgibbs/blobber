if (live_call()) return live_result;
// center coordinates for collision checks
col_x = x+32;
col_y = y+32;
// get current tile
currentCell = collision_circle(col_x, col_y, 20, objCell, false, true);

if (keyboard_check_pressed(vk_left))
{
	doorWest = collision_circle(col_x, col_y, 20, objDoorWest, false, true);
	wallWest = collision_circle(col_x, col_y, 20, objWallWest, false, true);
	blockers = collision_circle(col_x-tileSize, col_y, 20, unpassableObjects, false, true);
	if (doorWest != noone and !doorWest.open) {
		show_debug_message("bumped door");
		doorWest.bump();
	} else if (blockers != noone) {
		show_debug_message("blocked!");
		if (variable_instance_exists(blockers,"bump")) {
			blockers.bump();	
		}
	} else if (wallWest != noone) {
		if (wallWest.onBump) {
			show_debug_message("bumped the wall");
			wallWest.onBump.bump();	// interact with walls if they have a way to do so
		} else {
			show_debug_message("blocked!");
		}
	} else {
		x -= tileSize;
	}
}
else if (keyboard_check_pressed(vk_right))
{
	doorEast = collision_circle(col_x, col_y, 20, objDoorEast, false, true);
	wallEast = collision_circle(col_x, col_y, 20, objWallEast, false, true);
	blockers = collision_circle(col_x + tileSize, col_y, 20, unpassableObjects, false, true);
	if (doorEast != noone and !doorEast.open) {
		show_debug_message("bumped door");
		doorEast.bump();
	} else if (blockers != noone) {
		show_debug_message("blocked!");
		if (variable_instance_exists(blockers,"bump")) {
			blockers.bump();	
		}
	} else if (wallEast != noone) {
		if (wallEast.onBump) {
			show_debug_message("bumped the wall");
			wallEast.onBump.bump();	// interact with walls if they have a way to do so
		} else {
			show_debug_message("blocked!");
		}
	} else {
		x += tileSize;
	}
}
else if (keyboard_check_pressed(vk_up))
{
	doorNorth = collision_circle(col_x, col_y, 20, objDoorNorth, false, true);
	wallNorth = collision_circle(col_x, col_y, 20, objWallNorth, false, true);
	blockers = collision_circle(col_x, col_y - tileSize, 20, unpassableObjects, false, true);
	if (doorNorth != noone and !doorNorth.open) {
		show_debug_message("bumped door");
		doorNorth.bump();
	} else if (blockers != noone) {
		show_debug_message("blocked!");
		if (variable_instance_exists(blockers,"bump")) {
			blockers.bump();	
		}
	} else if (wallNorth != noone) {
		if (wallNorth.onBump) {
			show_debug_message("bumped the wall");
			wallNorth.onBump.bump();	// interact with walls if they have a way to do so
		} else {
			show_debug_message("blocked!");
		}
	} else {
		y -= tileSize;
	}
}
else if (keyboard_check_pressed(vk_down))
{
    doorSouth = collision_circle(col_x, col_y, 20, objDoorSouth, false, true);
	wallSouth = collision_circle(col_x, col_y, 20, objWallSouth, false, true);
	blockers = collision_circle(col_x, col_y + tileSize, 20, unpassableObjects, false, true);
	if (doorSouth != noone and !doorSouth.open) {
		show_debug_message("bumped door");
		doorSouth.bump();
	} else if (blockers != noone) {
		show_debug_message("blocked!");
		if (variable_instance_exists(blockers,"bump")) {
			blockers.bump();	
		}
	} else if (wallSouth != noone) {
		if (wallSouth.onBump) {
			show_debug_message("bumped the wall");
			wallSouth.onBump.bump();	// interact with walls if they have a way to do so
		} else {
			show_debug_message("blocked!");
		}
	} else {
		y += tileSize;
	}
}