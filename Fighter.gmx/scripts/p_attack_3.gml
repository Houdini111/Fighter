///p_attack(player, pattern)
_pl = argument0;
_pa = argument1;
_mult = argument2;

_hit = ds_list_create();

if( _pa == 1 )
{
    if(rot == 0) //Right
        { ds_list_add( _hit, collision_point(x+global.gridSize, y, obj_enemy, false, true) ); }
    else if(rot == 90) //Up
        { ds_list_add( _hit, collision_point(x, y-global.gridSize, obj_enemy, false, true) ); }
    else if(rot == 180) //Left
        { ds_list_add( _hit, collision_point(x-global.gridSize, y, obj_enemy, false, true) ); }
    else if(rot == 270) //Down
        { ds_list_add( _hit, collision_point(x, y+global.gridSize, obj_enemy, false, true) ); }
    
    e = ds_list_find_value(_hit, 0);
    
    if( ds_list_find_value(_hit, 0) != noone ) { e.myHealth -= damage_calculation(_pl, e, _mult); }
}

else if( _pa == 2 )
{
    if(rot == 0) //Right
        { ds_list_add( _hit, collision_point(x+global.gridSize, y, obj_enemy, false, true) ); }
    else if(rot == 90) //Up
        { ds_list_add( _hit, collision_point(x, y-global.gridSize, obj_enemy, false, true) ); }
    else if(rot == 180) //Left
        { ds_list_add( _hit, collision_point(x-global.gridSize, y, obj_enemy, false, true) ); }
    else if(rot == 270) //Down
        { ds_list_add( _hit, collision_point(x, y+global.gridSize, obj_enemy, false, true) ); }
    
    e = ds_list_find_value(_hit, 0);
        
    if( e != noone ) { e.myHealth -= damage_calculation(_pl, e, _mult); }
}

else if( _pa == 3 )
{
    if(rot == 0) //Right
    { 
        ds_list_add( _hit, collision_point(x+global.gridSize, y, obj_enemy, false, true) ); 
        ds_list_add( _hit, collision_point(x+global.gridSize*2, y, obj_enemy, false, true) ); 
    }
    else if(rot == 90) //Up
    { 
        ds_list_add( _hit, collision_point(x, y-global.gridSize, obj_enemy, false, true) ); 
        ds_list_add( _hit, collision_point(x, y-global.gridSize*2, obj_enemy, false, true) ); 
    }
    else if(rot == 180) //Left
    { 
        ds_list_add( _hit, collision_point(x-global.gridSize, y, obj_enemy, false, true) ); 
        ds_list_add( _hit, collision_point(x-global.gridSize*2, y, obj_enemy, false, true) ); 
    }
    else if(rot == 270) //Down
    { 
        ds_list_add( _hit, collision_point(x, y+global.gridSize, obj_enemy, false, true) ); 
        ds_list_add( _hit, collision_point(x, y+global.gridSize*2, obj_enemy, false, true) ); 
    }
    
    for(i = 0; i < ds_list_size(_hit); i++)
    {
        e = ds_list_find_value(_hit, i);
        if( e != noone ) { e.myHealth -= damage_calculation(_pl, e, _mult); }
    }
}
