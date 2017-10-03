///create_toggle( x, y, sprite, solid, ds_list_of_targets, init_state, reusable, visible, activate_condition, prepare_condition, action[, options_map] )
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

var _act_con_arg = "n/a";
var _prep_con_arg = "n/a";
var _act_arg = "n/a";


if(argument_count == 12)
{
    var _opt = ds_map_create();
    ds_map_read(_opt, argument[11]);
    if(ds_map_exists(_opt, "activate_condition")) { _act_con_arg = _opt[? "activate_condition"]; }
    if(ds_map_exists(_opt, "prepare_condition")) { _prep_con_arg = _opt[? "prepare_condition"]; }
    if(ds_map_exists(_opt, "action")) { _act_arg = _opt[? "action"]; }
    ds_map_destroy(_opt);
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
        { for(var i = 0; i < ds_list_size(_tar); i++) { ds_list_add(_s.targets, _tar[| i]); } }
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
        _s.my_prompt = prompt(_s.x+_s.sprite_width/2, _s.y+_s.sprite_height/2-10, 15, "U", global.master.my_orange, 5);
        instance_deactivate_object(_s.my_prompt);
    }
    
        //If there is somemthing there, make the toggle a faux child
    if(_at != noone and !object_is_ancestor(_at, obj_toggle) ) { _s.parent = _at; } 
    else { _s.parent = "none"; }
    
    return _s;
}
