///create_door_toggle( toggle_x, toggle_y, toggle_type, target_x, target_y, target_type, target_state )

var toggle = instance_create(argument0, argument1, argument2);
var target = instance_create(argument3, argument4, argument5);

toggle.target = target;
target.toggle = toggle;

toggle.state = argument6;
target.state = argument6;

toggle.length = 1;
