var player = argument0;

with(oMultiplayerController.clients[player])
{
	instance_destroy();
}
oMultiplayerController.clients[player] = noone;