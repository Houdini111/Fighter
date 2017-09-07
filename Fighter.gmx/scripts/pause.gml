///pause()
global.master.previousRoom = room;
global.master.uiMode = global.master.ui;

var p = ds_map_create();
p[? "x"] = global.player.x;
p[? "y"] = global.player.y;
p[? "rot"] = global.player.rot;
p[? "myHealth"] = global.player.myHealth;
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

with(obj_basic_toggle)
{
    var key = "obj_basic_toggle_"+string(x)+"_"+string(y);
    var me = ds_map_create();
    me[? "state"] = state;
    me[? "target_type"] = object_get_name(target.object_index);
    me[? "target_x"] = target.x;
    me[? "target_y"] = target.y;
    global.save[? key] = ds_map_write(me);
    ds_map_destroy(me);
}

room_goto(rm_pause);

