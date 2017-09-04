///pause()
global.master.previousRoom = room;
global.master.uiMode = global.master.ui;

global.save[? "player_x"] = global.player.x;
global.save[? "player_y"] = global.player.y;
global.save[? "player_rot"] = global.player.rot;

global.save[? "time"] = global.master.time;

global.save[? "turn"] = global.master.turn;
global.master.turn = "pause";

global.save[? "ui"] = global.master.ui;

global.save[? "room"] = room;

/*
with(obj_enemy)
{
    global.save[? string(object_get_name(id)) + ] = global.master.time;    
}
*/
/*
with(obj_toggle_wall)
{
    global.save[? ]
}
*/

room_goto(rm_pause);

