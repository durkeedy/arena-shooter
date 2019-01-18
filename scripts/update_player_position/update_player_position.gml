var player = argument0;
var xx = argument1;
var yy = argument2;

if(oMultiplayerController.clients[player] != noone)
{
	with(oMultiplayerController.clients[player])
	{
		x = xx;
		y = yy;
	}
}