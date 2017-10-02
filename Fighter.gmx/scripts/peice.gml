///peice(peice_obj, parent_id, time_til_arrival_in_ms[, from_top?])

var t = instance_create(0, 0, argument[0]);
ds_list_add( global.rhy, t);
t.parent = argument[1];
var dist = t.dist_in_one_sec*global.master.rhy_speed*argument[2]/1000;

if(argument_count == 4 and argument[4]) 
    { t.y = t.top+dist+(t.dist_in_one_sec*global.master.rhy_speed); }
else if( argument_count == 3 )
    { t.y = t.top+dist; }
