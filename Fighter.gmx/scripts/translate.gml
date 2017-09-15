///translate(input)
if( global.gp_slot == -1 )
{
    if( argument0 >= $41 and argument0 <= $5a ) { return string( chr(argument0) ); }
    else { return string(argument0); }
}
else
{
    switch( argument0 )
    {
        case gp_face1:
            return "A";
        case gp_face2:
            return "B";
        case gp_face3:
            return "X";
        case gp_face4:
            return "Y";
        case gp_shoulderl:
            return "LB";
        case gp_shoulderlb:
            return "LT";
        case gp_shoulderr:
            return "RB";
        case gp_shoulderrb:
            return "RT";
        case gp_select:
            return "SELECT";
        case gp_start:
            return "START";
        case gp_stickl:
            return "L_STK";
        case gp_stickr:
            return "R_STK";
        case gp_padu:
            return "D_UP";
        case gp_padd:
            return "D_DOWN";
        case gp_padl:
            return "D_LEFT";
        case gp_padr:
            return "D_RIGHT";
        case gp_axislh:
            return "L_STK_HOR";
        case gp_axislv:
            return "L_STK_VER";
        case gp_axisrh:
            return "R_STK_HOR";
        case gp_axisrv:
            return "R_STK_VER";
    }
}
