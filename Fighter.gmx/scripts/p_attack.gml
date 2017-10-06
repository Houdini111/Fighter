///p_attack(player, pattern[, _bonus_atk_mult])
var _pl = argument[0];
var _pa = argument[1];
var _b = "n/a";

if(argument_count == 3) { _b = argument[2]; }

var _hit = ds_list_create();

if( _pa == 1 )
{
    if(_pl.rot == 0) //Right
        { ds_list_add( _hit, collision_point(_pl.x+global.gridSize, _pl.y, obj_enemy, false, true) ); }
    else if(_pl.rot == 90) //Up
        { ds_list_add( _hit, collision_point(_pl.x, _pl.y-global.gridSize, obj_enemy, false, true) ); }
    else if(_pl.rot == 180) //Left
        { ds_list_add( _hit, collision_point(_pl.x-global.gridSize, _pl.y, obj_enemy, false, true) ); }
    else if(_pl.rot == 270) //Down
        { ds_list_add( _hit, collision_point(_pl.x, _pl.y+global.gridSize, obj_enemy, false, true) ); }
    
    var e = ds_list_find_value(_hit, 0);
    
    if( ds_list_find_value(_hit, 0) != noone ) 
    { 
        var damage = 0;
        if( _b == "n/a" ) { damage = damage_calculation(_pl, e); }
        else { damage = damage_calculation(_pl, e, _b); }
        //show_debug_message(damage);
        e.myHealth -= damage;
    } 
}

else if( _pa == 2 )
{
    if(_pl.rot == 0) //Right
        { ds_list_add( _hit, collision_point(_pl.x+global.gridSize, _pl.y, obj_enemy, false, true) ); }
    else if(_pl.rot == 90) //Up
        { ds_list_add( _hit, collision_point(_pl.x, _pl.y-global.gridSize, obj_enemy, false, true) ); }
    else if(_pl.rot == 180) //Left
        { ds_list_add( _hit, collision_point(_pl.x-global.gridSize, _pl.y, obj_enemy, false, true) ); }
    else if(_pl.rot == 270) //Down
        { ds_list_add( _hit, collision_point(_pl.x, _pl.y+global.gridSize, obj_enemy, false, true) ); }
    
    var e = ds_list_find_value(_hit, 0);
        
    if( ds_list_find_value(_hit, 0) != noone ) 
    { 
        var damage = 0;
        if( _b == "n/a" ) { damage = damage_calculation(_pl, e); }
        else { damage = damage_calculation(_pl, e, _b); }
        //show_debug_message(damage);
        e.myHealth -= damage;
    }
}

else if( _pa == 3 )
{
    if(_pl.rot == 0) //Right
    { 
        ds_list_add( _hit, collision_point(_pl.x+global.gridSize, _pl.y, obj_enemy, false, true) ); 
        ds_list_add( _hit, collision_point(_pl.x+global.gridSize*2, _pl.y, obj_enemy, false, true) ); 
    }
    else if(_pl.rot == 90) //Up
    { 
        ds_list_add( _hit, collision_point(_pl.x, _pl.y-global.gridSize, obj_enemy, false, true) ); 
        ds_list_add( _hit, collision_point(_pl.x, _pl.y-global.gridSize*2, obj_enemy, false, true) ); 
    }
    else if(_pl.rot == 180) //Left
    { 
        ds_list_add( _hit, collision_point(_pl.x-global.gridSize, _pl.y, obj_enemy, false, true) ); 
        ds_list_add( _hit, collision_point(_pl.x-global.gridSize*2, _pl.y, obj_enemy, false, true) ); 
    }
    else if(_pl.rot == 270) //Down
    { 
        ds_list_add( _hit, collision_point(_pl.x, _pl.y+global.gridSize, obj_enemy, false, true) ); 
        ds_list_add( _hit, collision_point(_pl.x, _pl.y+global.gridSize*2, obj_enemy, false, true) ); 
    }
    
    for(i = 0; i < ds_list_size(_hit); i++)
    {
        var damage = 0;
        var e = ds_list_find_value(_hit, i);
        if( e != noone ) 
        { 
            if( _b == "n/a" ) { damage = damage_calculation(_pl, e); }
            else { damage = damage_calculation(_pl, e, _b); }
            //show_debug_message(damage);
            e.myHealth -= damage;
        }
    }
}

for(var i = 0; i < ds_list_size(_hit); i++)
{
    if( _hit[| i] != noone )
    {
        var _count;
        if( _b == "n/a" ) { _count = damage_calculation(_pl, _hit[| i]); }
        else { _count = damage_calculation(_pl, _hit[| i], _b); }
        _count/=10;
        p_hit_part( _hit[| i].x, _hit[| i].y, point_direction( global.player.x, global.player.y, _hit[| i].x, _hit[| i].y ), _count );
    }
}
