///create_toggle( x, y, spr, sld, targets_list, init_state, reusable, visible, act_cond, prep_cond, action, act_cond_arg, prep_cond_arg, act_arg )
var _x = argument[0];
var _y = argument[1];
var _spr = argument[2];
var _sol = argument[3];
var _tar = argument[4];
var _init = argument[5];
var _reuse = argument[6];
var _vis = argument[7];
var _cond = argument[8]; 
var _prep = argument[9];
var _act = argument[10];
var _act_con_arg = argument[11];
var _prep_con_arg = argument[12];
var _act_arg = argument[13];


if(_tar != noone and !ds_exists(_tar, ds_type_list) and instance_exists(_tar)) 
{
    var temp = ds_list_create();
    ds_list_add(temp, _tar);
    _tar = ds_list_create();
    ds_list_copy(_tar, temp);
    ds_list_destroy(temp);
}


var _at = noone;
_at = collision_point(_x, _y, all, false, true);

var _s = instance_create(_x, _y, obj_toggle);
if( instance_exists(_s) )
{
    if(_tar == noone) 
    {
        if( ds_exists( _s.targets, ds_type_list) ) { ds_list_destroy(_s.targets); }
        _s.targets = noone;
    }
    else if( !ds_exists(_tar, ds_type_list) )
        { ds_list_add(_s.targets, _tar); }
    else 
        { ds_list_copy(_s.targets, _tar); }
    _s.sprite_index = _spr;
    _s.solid = _sol;
    if(_sol) { mp_grid_add_cell(global.grid, _x/global.gridSize, _y/global.gridSize); }
    _s.init_state = _init;
    _s.state = _init;
    _s.reusable = _reuse;
    _s.draw = _vis;
    _s.condition = _cond;
    _s.prepare = _prep;
    _s.action = _act;
    _s.act_con_arg = _act_con_arg;
    _s.prep_con_arg = _act_con_arg;
    _s.act_arg = _act_con_arg;
    
    if( script_get_name(_cond) == "targeted_action" ) 
    {
        _key = "k";
        if(global.gp_slot != -1) { _key = "b"; }
        _s.my_prompt = prompt(_s.x+_s.sprite_width/2, _s.y+_s.sprite_height/2-10, global.master.my_orange, 8, 1.25);
        _s.my_prompt.parent = _s;
    }
    
    if( _s.act_con_arg != "n/a" )
    {
        var _act_con_map = ds_map_create();
        ds_map_read( _act_con_map, string(_s.act_con_arg) );
        if( _act_con_map[? "type"] == "push_map" )
        {
            _s.places = ds_grid_create( _act_con_map[? "w"], _act_con_map[? "h"] );
            ds_grid_read(_s.places, _act_con_map[? "grid"]);
        }
    }
    
    
    //If there is somemthing there, make the toggle a faux child
    if(_at != noone and !object_is_ancestor(_at, obj_toggle) ) { _s.parent = _at; } 
    else { _s.parent = "none"; }
    
    return _s;
}
