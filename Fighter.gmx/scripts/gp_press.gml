///gp_press

var toTest = 
    array(
        gp_face1,
        gp_face2,
        gp_face3,
        gp_face4,
        gp_shoulderl,
        gp_shoulderlb,
        gp_shoulderr,
        gp_shoulderrb,
        gp_select,
        gp_start,
        gp_stickl,
        gp_stickr,
        gp_padu,
        gp_padd,
        gp_padl,
        gp_padr
        );
    
for(var i = 0; i < array_length_1d(toTest); i++)
{
    if( gamepad_button_check( global.gp_slot, toTest[i] ) )
        { return toTest[i]; }
}

