///load_player([deault_x, default_y, default_rot, default_myHealth])
with(obj_player)
{
    
    if( ds_map_exists(global.save, "player") ) 
    {
        var p = ds_map_create(); 
        ds_map_read(p, global.save[? "player"]); 

        x = p[? "x"];
        y = p[? "y"];
        goal_x = x;
        goal_y = y;
        oldX = x;
        oldY = y;
        rot = p[? "rot"];
        myHealth = p[? "myHealth"];
        ds_map_read( inventory, p[? "inventory"] );
        
        if( ds_map_exists(p, "state_machine") ) 
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
        
        if( ds_map_exists(p, "dodge_go") ) { global.player.dodge_go = p[? "dodge_go"]; }
        
        ds_map_destroy(p);
    }
    else 
    {
        switch(argument_count)
        {
            case 4:
                myHealth = argument[3];
            case 3:
                rot = argument[2];
            case 2:
                player_teleport(argument[0], argument[1]);
                break;
            default:
                player_teleport(0, 0);
        }
    }
}

