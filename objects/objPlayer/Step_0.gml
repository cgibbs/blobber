if (live_call()) return live_result;
// center coordinates for collision checks
col_x = x+32;
col_y = y+32;
// get current tile
currentCell = collision_circle(col_x, col_y, 20, objCell, false, true);

if (keyboard_check_pressed(vk_left))
{
	nextCell = collision_circle(col_x-tileSize, col_y, 20, objCell, false, true);
	if (!array_contains(unpassableWalls, currentCell.west)) {
		if (!array_contains(unpassableInsides, nextCell.inside)) {
			x = x - tileSize;
		} else {
			if (nextCell.inside != noone) appendToLog("test");
		}
	}
}
else if (keyboard_check_pressed(vk_right) and !array_contains(unpassableWalls, currentCell.east))
{
	nextCell = collision_circle(col_x+tileSize, col_y, 20, objCell, false, true);
	if (!array_contains(unpassableInsides, nextCell.inside)) {
		x = x + tileSize;
	} else {
		if (nextCell.inside != noone) appendToLog("test");
	}
}
else if (keyboard_check_pressed(vk_up) and !array_contains(unpassableWalls, currentCell.north))
{
	nextCell = collision_circle(col_x, col_y-tileSize, 20, objCell, false, true);
	if (!array_contains(unpassableInsides, nextCell.inside)) {
		y = y - tileSize;
	} else {
		if (nextCell.inside != noone) appendToLog("test");
	}
}
else if (keyboard_check_pressed(vk_down) and !array_contains(unpassableWalls, currentCell.south))
{
    nextCell = collision_circle(col_x, col_y+tileSize, 20, objCell, false, true);
	if (!array_contains(unpassableInsides, nextCell.inside)) {
		y = y + tileSize;
	} else {
		if (nextCell.inside != noone) appendToLog("test");
	}
}