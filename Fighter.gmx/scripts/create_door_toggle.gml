///create_door_toggle( toggle_x, toggle_y, target_x, target_y, target_state )

var toggle = instance_create(argument0, argument1, obj_basic_toggle);
var target = instance_create(argument2, argument3, obj_toggle_wall);

toggle.target = target;
target.toggle = toggle;

toggle.state = argument4;
target.state = argument4;
