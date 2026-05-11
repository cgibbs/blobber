global.inventory = ds_grid_create(10, 2);
// this empties the inventory every time item menu is created, we need to fix that later
ds_grid_clear(global.inventory, 0); 

global.inventory[# 0, 0] = "Apple";
global.inventory[# 0, 1] = 2;

global.inventory[# 1, 0] = "Sword";
global.inventory[# 1, 1] = 1;

global.inventory[# 2, 0] = "A Different Apple";
global.inventory[# 2, 1] = 5;


itemButtonH = 30;