var paint = argument0;
var tox = argument1;
var toy = argument2;
var range = argument3;
var shot_by = argument4;

if(oMultiplayerController.clients[shot_by] != noone)
{
	with(oMultiplayerController.clients[shot_by])
	{
		var proj = instance_create_layer(torso.x, torso.y, "Instances", paint);
		//proj.togridx = 
		//proj.togridy =
		proj.tox = tox;
		proj.toy = toy;
		proj.range = range;
		with(proj)
		{
			move_towards_point(tox, toy, basespd);
		}
	}
}