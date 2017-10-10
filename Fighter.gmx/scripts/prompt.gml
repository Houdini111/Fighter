///prompt(x, y, color, amplitude, frequency)
var _x = argument0;
var _y = argument1;
var _c = argument2;
var _amp = argument3;
var _frequency = argument4;

var t = instance_create(_x, _y, obj_btn_prompt);
t.color = _c;
t.bob_amt = _amp;
t.bob_freq = _frequency;

with(t)
{
    path = path_add();

    var travel_speed = bob_amt*bob_freq/room_speed;
    
    path_add_point(t.path, x, y, 100);
    path_add_point(t.path, x, y-bob_amt, 100);
    
    
    path_start(path, travel_speed, path_action_restart, true);
}


return t;
