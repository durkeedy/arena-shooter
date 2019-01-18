/// @description Insert description here
// You can write your code in this editor
//if(gun != noone && gun.canShoot && !keyboard_check(vk_shift))
//{
//	var proj = instance_create_layer(torso.x, torso.y, "Instances", oGrenade);
//	//proj.togridx = 
//	//proj.togridy =
//	proj.tox = round(mouse_x);
//	proj.toy = round(mouse_y);
//	proj.range = gun.range;
//	proj.team = oClient.number;
//	proj.client = oClient.number;
//	with(proj)
//	{
//		move_towards_point(tox, toy, basespd);
//	}
//	gun.canShoot = false;
//	gun.alarm[0] = gun.reload;
//	client_send_shot(oGrenade, proj.tox, proj.toy, proj.range, proj.id);
//}

//created issues because the grenade is not one object through its full life cycle
//if a grenade on one client explodes and splats a player, but that grenade
//hasnt exploded on another client, then that client will error because a null pointer