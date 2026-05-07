if (!surface_exists(surf)) {
	surf = surface_create(sprite_width, sprite_height);
}

surface_set_target(surf);

draw_sprite(sprite_index, image_index, sprite_xoffset, sprite_yoffset);

if (self.north == objDoor) {
	gpu_set_colourwriteenable(1, 1, 1, 0);
	draw_sprite_ext(sprDoor, 0, 0, 0, 1, 1, 0, c_white, 1);
	gpu_set_colourwriteenable(1, 1, 1, 1);
}

if (self.west == objDoor) {
	gpu_set_colourwriteenable(1, 1, 1, 0);
	draw_sprite_ext(sprDoor, 0, 0, 64, 1, 1, 90, c_white, 1);
	gpu_set_colourwriteenable(1, 1, 1, 1);
}

if (self.south == objDoor) {
	gpu_set_colourwriteenable(1, 1, 1, 0);
	draw_sprite_ext(sprDoor, 0, 64, 64, 1, 1, 180, c_white, 1);
	gpu_set_colourwriteenable(1, 1, 1, 1);
}

if (self.east == objDoor) {
	gpu_set_colourwriteenable(1, 1, 1, 0);
	draw_sprite_ext(sprDoor, 0, 64, 0, 1, 1, 270, c_white, 1);
	gpu_set_colourwriteenable(1, 1, 1, 1);
}

if (self.north == objOpenDoor) {
	gpu_set_colourwriteenable(1, 1, 1, 0);
	draw_sprite_ext(sprOpenDoor, 0, 0, 0, 1, 1, 0, c_white, 1);
	gpu_set_colourwriteenable(1, 1, 1, 1);
}

if (self.west == objOpenDoor) {
	gpu_set_colourwriteenable(1, 1, 1, 0);
	draw_sprite_ext(sprOpenDoor, 0, 0, 64, 1, 1, 90, c_white, 1);
	gpu_set_colourwriteenable(1, 1, 1, 1);
}

if (self.south == objOpenDoor) {
	gpu_set_colourwriteenable(1, 1, 1, 0);
	draw_sprite_ext(sprOpenDoor, 0, 64, 64, 1, 1, 180, c_white, 1);
	gpu_set_colourwriteenable(1, 1, 1, 1);
}

if (self.east == objOpenDoor) {
	gpu_set_colourwriteenable(1, 1, 1, 0);
	draw_sprite_ext(sprOpenDoor, 0, 64, 0, 1, 1, 270, c_white, 1);
	gpu_set_colourwriteenable(1, 1, 1, 1);
}

if (self.north == objWall) {
	gpu_set_colourwriteenable(1, 1, 1, 0);
	draw_sprite_ext(sprWall, 0, 0, 0, 1, 1, 0, c_white, 1);
	gpu_set_colourwriteenable(1, 1, 1, 1);
}

if (self.west == objWall) {
	gpu_set_colourwriteenable(1, 1, 1, 0);
	draw_sprite_ext(sprWall, 0, 0, 64, 1, 1, 90, c_white, 1);
	gpu_set_colourwriteenable(1, 1, 1, 1);
}

if (self.south == objWall) {
	gpu_set_colourwriteenable(1, 1, 1, 0);
	draw_sprite_ext(sprWall, 0, 64, 64, 1, 1, 180, c_white, 1);
	gpu_set_colourwriteenable(1, 1, 1, 1);
}

if (self.east == objWall) {
	gpu_set_colourwriteenable(1, 1, 1, 0);
	draw_sprite_ext(sprWall, 0, 64, 0, 1, 1, 270, c_white, 1);
	gpu_set_colourwriteenable(1, 1, 1, 1);
}

if (self.inside != noone) {
	gpu_set_colourwriteenable(1, 1, 1, 0);
	draw_sprite_ext(object_get_sprite(self.inside), 0, 0, 0, 1, 1, 0, c_white, 1);
	gpu_set_colourwriteenable(1, 1, 1, 1);	
}




surface_reset_target();
draw_surface(surf, x - sprite_xoffset, y - sprite_yoffset);