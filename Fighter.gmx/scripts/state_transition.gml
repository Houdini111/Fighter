///state_transition( machine, key )
var _sm = argument0;
var _k = argument1;

/*
_sm.state = st[_sm.state, _k]; 
    
switch (_sm.state)
{
    case 3:  
        //0, 1, 2, 3
        //0, 0, 0
        p_attack(_sm.parent, 1);
        _sm.state = 0;
        break;
    case 5: 
        //0, 1, 2, 4, 5
        //0, 0, 1, 1
        p_attack(_sm.parent, 2, 1.3);
        _sm.state = 0;
        break;
    case 6: 
        //time -= 50;
        _sm.state = 0;
        break;
    case 9:
        //0, 1, 2, 4, 7, 8, 9
        //0, 0, 1, 0, 1, 1,    
        p_attack(_sm.parent, 3, 1.75);
        _sm.state = 0;
        break;
    default: 
        break;
}    
*/

with(_sm) 
{
    show_debug_message("TRANSITION"); 
    state = st[state, _k]; 
    
    switch (state)
    {
        case 3:  
            //0, 1, 2, 3
            //0, 0, 0
            p_attack(parent, 1);
            state = 0;
            break;
        case 5: 
            //0, 1, 2, 4, 5
            //0, 0, 1, 1
            p_attack(parent, 2, 1.3);
            state = 0;
            break;
        case 6: 
            //time -= 50;
            state = 0;
            break;
        case 9:
            //0, 1, 2, 4, 7, 8, 9
            //0, 0, 1, 0, 1, 1,    
            p_attack(parent, 3, 1.75);
            state = 0;
            break;
        default: 
            break;
    }           
}

