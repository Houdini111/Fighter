///unpause()


global.player.x = global.save[? "player_x"];
global.player.y = global.save[? "player_y"];
global.player.rot = global.save[? "player_rot"];

global.master.time = global.save[? "time"];

global.master.turn = global.save[? "turn"];

global.master.ui = global.save[? "ui"];

room_goto(global.save[? "room"]);

