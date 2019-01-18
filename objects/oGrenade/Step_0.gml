/// @description Insert description here
// You can write your code in this editor

if(point_distance(x, y, tox, toy) <= 4)
{
	instance_destroy();
	//instance_create_layer(x, y, "SplatteredPaint", oRegPaintSplattered);
	explode_grenade_3x3(2, x, y, team, instance, client);
	//var nwsplode = instance_create_layer(x, y, "Instances", oGrenadeSplode);
}
else if(point_distance(fromx, fromy, x, y) >= range)
{
	instance_destroy();
	explode_grenade_3x3(2, x, y, team, instance, client);
	//instance_create_layer(x, y, "SplatteredPaint", oRegPaintSplattered);
}
else
{
	speed = (range - point_distance(fromx, fromy, x, y)) / range * basespd + 1;
}