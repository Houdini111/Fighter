///peice(peice_id, parent_id, delay_in_ms)

var t = instance_create(0, 0, argument0);
ds_list_add( global.rhy, t);
t.parent = argument1;
t.y += argument2/10*global.master.rhy_speed;
