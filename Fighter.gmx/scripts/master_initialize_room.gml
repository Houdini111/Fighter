///master_initialize_room()

global.grid = mp_grid_create(0, 0, room_width/global.gridSize, room_height/global.gridSize, global.gridSize, global.gridSize);
surface_resize(global.player.fov_surf, room_width, room_height );
