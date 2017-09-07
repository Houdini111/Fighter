///create_enemy_wall_toggle( enemy_id )
var t = instance_create(0, 0, obj_enemy_wall_toggle);
t.parent = argument0;
t.state = true;
t.init_state = true;
t.reusable = false;
return t;

