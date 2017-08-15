///getEnemyTimeChange(equation, timeSinceStartOfTurn, timeLimit, time)
switch ( argument0 )
{
    case 0:
        return argument1/1000;
        break;
    case 1:
        return power(argument1, 3.7)/500000000000; 
        break;
    case 2: 
        if(argument2/2 < argument3)  //First half of the peicewise
            { return (0.178*power(argument1, 3) - 0.0203*power(argument1, 2) + 1*argument1 + 0.2985)/100000000; }
        else
            { return (0.4194*power(argument1, 4) - 9.4338*power(argument1, 3) + 81.049*power(argument1, 2) - 311.5*argument1 + 449.88)/100000000; } 
        break;
    case 3:
        return abs(sin(argument1/400))*7;
    case 4:
        return sin(argument1/125)*6.5 +2;          
}
