///timer
if(alarm[0] < 1) 
{ 
    state = init_state; 
    return true;
} 
else  
{ 
    state = !init_state;
    return false;
}


