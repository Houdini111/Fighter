///state_transition( machine, key )
var _sm = argument0;
var _k = argument1;

with(_sm) 
{
    if(enabled)
    {
        oldState = state;
        state = st[state, _k]; 
        tree_depth++;
        
        if( _k == 0 or _k == 1 or _k == 2 ) 
        {
            if( alarm[0] == -1 and alarm[1] == -1 and alarm[2] == -1 )
                { alarm[_k] = t_speed; }
        }
        
        switch (state)
        {
            case -1:
                //time -= 50;
                state = 0;
                break;
            case 7:     //Light physical combo
                //0, 1, 4, 7, 
                //0, 0, 0
                p_attack(parent, 1);
                break;
            case 9:     //Light heal
                //0, 3, 6, 9
                //2, 0, 0 
                parent.myHealth += parent.maxHealth*0.1;
                state = 0;
                break;
            case 10:    //Light magic combo
                //0, 2, 5, 8, 10 
                //1, 0, 0, 1
                p_attack(parent, 2, 1.35);
                state = 0;
                break;
            case 12:     //Light physical combo 2
                //0, 1, 4, 7, 
                //0, 0, 0
                p_attack(parent, 1, 1.2);
                state = 0;
                break;
            case 16:     //Medium Magic Combo 1
                //0, 2, 13, 14, 15, 16
                //1, 1, 0,  1,  0 
                p_attack(parent, 3, 1.6);
                state = 0;
                break;
            default: 
                break;
        }
    }
}
