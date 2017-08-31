///prompt(x, y, radius, key, color, bob_amount)
var _x = argument0;
var _y = argument1;
var _r = argument2;
var _k = argument3;
var _c = argument4;
var _bob = argument5;

var t = instance_create(_x, _y, obj_btn_prompt);
t.r = _r;
t.key = _k;
t.color = _c;
t.bob = _bob;

return t;
