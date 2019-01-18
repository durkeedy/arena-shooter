var inst = instance_find(oSpawn, irandom(instance_number(oSpawn) - 1));

oClient.player.x = inst.x;
oClient.player.y = inst.y;
oClient.inGame = true;

with(oCamera)
{
	x = inst.x;
	y = inst.y;
	camera_set_view_pos(cam, x - view_w_half, y - view_h_half);
}
//update_GUI_position();


client_send_position(oClient.player.x, oClient.player.y);