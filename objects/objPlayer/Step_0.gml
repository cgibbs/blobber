// get current tile

currentCell = collision_circle(x+32, y+32, 20, objCell, false, true);

if (keyboard_check_pressed(vk_left) and !array_contains(unpassableWalls, currentCell.west))
{
	nextCell = collision_circle(x+32-tileSize, y+32, 20, objCell, false, true);
	if (!array_contains(unpassableInsides, nextCell.inside)) {
		x = x - tileSize;
	} else {
		if (nextCell.inside != noone) appendToLog("test");
	}
}
else if (keyboard_check_pressed(vk_right) and !array_contains(unpassableWalls, currentCell.east))
{
	nextCell = collision_circle(x+32+tileSize, y+32, 20, objCell, false, true);
	if (!array_contains(unpassableInsides, nextCell.inside)) {
		x = x + tileSize;
	} else {
		if (nextCell.inside != noone) appendToLog("test");
	}
}
else if (keyboard_check_pressed(vk_up) and !array_contains(unpassableWalls, currentCell.north))
{
	nextCell = collision_circle(x+32, y+32-tileSize, 20, objCell, false, true);
	if (!array_contains(unpassableInsides, nextCell.inside)) {
		y = y - tileSize;
	} else {
		if (nextCell.inside != noone) appendToLog("test");
	}
}
else if (keyboard_check_pressed(vk_down) and !array_contains(unpassableWalls, currentCell.south))
{
    nextCell = collision_circle(x+32, y+32+tileSize, 20, objCell, false, true);
	if (!array_contains(unpassableInsides, nextCell.inside)) {
		y = y + tileSize;
	} else {
		if (nextCell.inside != noone) appendToLog("test");
	}
}