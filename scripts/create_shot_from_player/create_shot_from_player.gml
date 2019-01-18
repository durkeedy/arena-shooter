var paint = argument0;
var tox = argument1;
var toy = argument2;
var range = argument3;
var instance = argument4;
var shot_by = argument5;

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
		proj.team = oMultiplayerController.clients[shot_by].team;
		proj.client = shot_by;
		proj.instance = instance;
		with(proj)
		{
			move_towards_point(tox, toy, basespd);
		}
	}
}