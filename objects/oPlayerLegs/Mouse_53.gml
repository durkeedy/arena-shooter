/// @description Insert description here
// You can write your code in this editor
if(gun != noone && gun.canShoot && !keyboard_check(vk_shift))
{
	var proj = instance_create_layer(torso.x, torso.y, "Instances", oRegPaint);
	//proj.togridx = 
	//proj.togridy =
	proj.tox = round(mouse_x);
	proj.toy = round(mouse_y);
	proj.range = gun.range;
	proj.team = oClient.number; //EVENTUALLY CHANGE THIS DEPENDING ON THE SERVER
	proj.client = oClient.number;
	proj.instance = proj.id;
	with(proj)
	{
		move_towards_point(tox, toy, basespd);
	}
	gun.canShoot = false;
	gun.alarm[0] = gun.reload;
	client_send_shot(oRegPaint, proj.tox, proj.toy, proj.range, proj.id);
}