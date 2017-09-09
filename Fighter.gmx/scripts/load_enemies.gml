///load_enemies()

with(obj_enemy)
{
    if( typeof(global.save[? key1]) == "string" )
    {
        var me = ds_map_create();
        ds_map_read(me, global.save[? key1]);
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
        
        var peices = ds_list_create();
        ds_list_read(peices, me[? "peices"]);
        for( var i = 0; i < ds_list_size(peices); i++ )
        {
            var toLoad = peices[| i];
            var new = instance_create(0, 0, asset_get_index(toLoad[? "type"]));
            new.x = toLoad[? "x"];
            new.y = toLoad[? "y"];
            new.parent = id;
        }
        
        ds_list_destroy(peices);
        ds_map_destroy(me);
    }
}
