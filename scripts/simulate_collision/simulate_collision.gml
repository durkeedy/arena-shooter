var splatted = argument0;
var team = argument1;
var inst = argument2;
var splatter = argument3;

with(oSplatterer)
{
	if(inst == instance && client == splatter)
	{
		instance_destroy();
	}
}

//player back to holding
update_player_position(splatted, 112, 112);
