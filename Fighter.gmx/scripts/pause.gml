///pause()
global.master.previousRoom = room;
global.master.uiMode = global.master.ui;

var p = ds_map_create();
p[? "x"] = global.player.x;
p[? "y"] = global.player.y;
p[? "rot"] = global.player.rot;
p[? "myHealth"] = global.player.myHealth;
global.save[? "player"] = ds_map_write(p);

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
    global.save[? key] = ds_map_write(me);    
}

/*
with(obj_toggle_wall)
{
    global.save[? ]
}
*/

room_goto(rm_pause);

