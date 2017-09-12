///pause()
global.master.previousRoom = room;
global.master.uiMode = global.master.ui;

var p = ds_map_create();
p[? "x"] = global.player.x;
p[? "y"] = global.player.y;
p[? "rot"] = global.player.rot;
p[? "myHealth"] = global.player.myHealth;
if( global.player.state == 6 ) { p[? "state"] = 6; }
else { p[? "state"] = 0; }
global.save[? "player"] = ds_map_write(p);
ds_map_destroy(p);

global.save[? "time"] = global.master.time;

global.save[? "turn"] = global.master.turn;
global.master.turn = "pause";

global.save[? "ui"] = global.master.ui;
global.save[? "fow"] = global.master.fow;
global.save[? "fow_pen"] = global.master.fow_pen;

global.save[? "room"] = room;

global.master.fow = false;

with(obj_enemy)
{
    var me = ds_map_create();
    me[? "alive"] = true;
    ds_map_replace(me, "x", x);
    ds_map_replace(me, "y", y);
    ds_map_replace(me, "myHealth", myHealth);
    ds_map_replace(me, "timeSinceMove", timeSinceMove);
    ds_map_replace(me, "time_since_attack", time_since_attack);
    ds_map_replace(me, "canSee", canSee);
    ds_map_replace(me, "inRadius", inRadius);
    var segments = ds_list_create();
    with(obj_rhy_base)
    {
        if(parent == other.id)
        {
            var this = ds_map_create();
            this[? "type"] = object_get_name(object_index);
            this[? "x"] = x;
            this[? "y"] = y;
            ds_list_add(segments, this);
        }
    }
    me[? "peices"] = ds_list_write(segments);
    ds_list_destroy(segments);
    global.save[? key1] = ds_map_write(me);    
    ds_map_destroy(me);
}

/*
with(obj_basic_toggle)
{
    var me = ds_map_create();
    me[? "state"] = state;
    me[? "target_type"] = object_get_name(target.object_index);
    me[? "target_x"] = target.x;
    me[? "target_y"] = target.y;
    global.save[? key] = ds_map_write(me);
    ds_map_destroy(me);
}

with(obj_floor_trigger)
{
    var me = ds_map_create();
    me[? "alive"] = true;
    me[? "ready"] = ready;
    
    //me[? "action"] = action;
    //me[? "resuable"] = resuable;
    //me[? "visible"] = visible;
    //me[? "image_xscale"] = image_xscale;
    //me[? "image_yscale"] = image_yscale;
    
    global.save[? key] = ds_map_write(me);
    ds_map_destroy(me);
}

with(obj_multiwall_toggle)
{
    var me = ds_map_create();
    me[? "alive"] = true;
    me[? "init_state"] = init_state;
    me[? "state"] = state;
    
    global.save[? key] = ds_map_write(me);
    ds_map_destroy(me);
}
*/

with(obj_toggle)
{
    var me = ds_map_create();
    
    me[? "alive"] = true;
    //me[? "sprite"] = sprite_index;
    me[? "solid"] = solid;
    //if(targets == noone) { me[? "targets"] = noone; }
    //else { me[? "targets"] = ds_list_write(targets); }
    //me[? "initial_state"] = init_state;
    me[? "state"] = state;
    //me[? "reusable"] = reusable;
    me[? "visible"] = visible;
    //me[? "condition"] = condition;
    //me[? "prepare"] = prepare;
    //me[? "action"] = action;
    
    //me[? "act_con_arg"] = act_con_arg;
    //me[? "prep_con_arg"] = prep_con_arg;
    //me[? "act_arg"] = act_arg;
    
    
    if(targets != noone)
    {
        var temp = ds_list_create();
        
        for(var i = 0; i < ds_list_size(targets); i++)
        {
            var this = ds_map_create();
            this[? "active"] = targets[| i].active;
            this[? "sprite"] = targets[| i].sprite_index;
            ds_list_add(temp, ds_map_write(this));
            ds_map_destroy(this);
        }
        me[? "targets_info"] = ds_list_write(temp);
        ds_list_destroy(temp);
    }
    
    
    global.save[? key] = ds_map_write(me);
    ds_map_destroy(me);
}

room_goto(rm_pause);

