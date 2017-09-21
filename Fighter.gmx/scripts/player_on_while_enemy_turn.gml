///player_on_while_enemy_turn()

if( global.master.turn == 'e' and collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_player, false, true) != noone )
{ return true; }
else { return false; }
