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

global.master.time = global.save[? "time"];
global.master.turn = global.save[? "turn"];

global.master.ui = global.save[? "ui"];
global.master.fow = global.save[? "fow"];
global.master.fow_pen = global.save[? "fow_pen"];

room_goto(global.save[? "room"]);

