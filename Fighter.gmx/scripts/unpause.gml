///unpause()
with(obj_player)
{
    var p = ds_map_create();
    ds_map_read(p, global.save[? "player"]);
    player_teleport(p[? "x"], p[? "y"]);
    rot = p[? "rot"];
    myHealth = p[? "myHealth"];
    ds_map_destroy(p);
}
/*
with(obj_state)
{
    var temp = ds_map_create();
    ds_map_read(temp, global.save[? "player"]);
    ds_map_read(temp, temp[? "state_machine"]);
    if( temp[? "state"] == 6 ) { state = 6; }
    else { state = 0; }
    oldState = state;
    tree_depth = 0;
    enabled = temp[? "enabled"];
    alarm[0] = -1;
    alarm[1] = -1;
    alarm[2] = -1;
    alarm[9] = -1;
}
*/
global.master.time = global.save[? "time"];
global.master.turn = global.save[? "turn"];

global.master.ui = global.save[? "ui"];
global.master.fow = global.save[? "fow"];
global.master.fow_pen = global.save[? "fow_pen"];

room_goto(global.save[? "room"]);

