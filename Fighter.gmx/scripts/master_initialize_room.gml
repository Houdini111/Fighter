///master_initialize_room()

global.grid = mp_grid_create(0, 0, room_width/global.gridSize, room_height/global.gridSize, global.gridSize, global.gridSize);
if( surface_exists(global.player.fov_surf) ) { surface_resize(global.player.fov_surf, room_width, room_height); }
if( surface_exists(global.master.grid_surf) ) { surface_resize(global.master.grid_surf, room_width, room_height); }

mp_grid_add_instances(global.grid, obj_impassable, false);
