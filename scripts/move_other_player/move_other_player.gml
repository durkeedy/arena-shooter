var client = argument0;
var dir = argument1;
var xx = argument2;
var yy = argument3;

if(oMultiplayerController.clients[client] != noone)
{
	with(oMultiplayerController.clients[client])
	{
		x = xx;
		y = yy;
		switch(dir)
		{
			case NORTH:
				event_user(0);
			break;
			
			case SOUTH:
				event_user(1);
			break;
			
			case EAST:
				event_user(2);
			break;
			
			case WEST:
				event_user(3);
			break;
		
		}
	}
}