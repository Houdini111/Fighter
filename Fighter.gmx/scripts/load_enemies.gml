///load_enemies()

with(obj_enemy)
{
    if( typeof(global.save[? key]) == "string" )
    {
        var me = ds_map_create();
        ds_map_read(me, global.save[? key]);
        x = me[? "x"];
        y = me[? "y"];
        startX = x;
        startY = y;
        nextX = x;
        nextY = y;
        myHealth = me[? "myHealth"];
        timeSinceMove = me[? "timeSinceMove"];
        time_since_attack = me[? "time_since_attack"];
        canSee = me[? "canSee"];
        inRadius = me[? "inRadius"];
    }
}
