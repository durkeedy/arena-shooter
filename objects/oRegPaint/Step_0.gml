/// @description Insert description here
// You can write your code in this editor

if(point_distance(x, y, tox, toy) <= 3)
{
	instance_destroy();
	instance_create_layer(x, y, "SplatteredPaint", oRegPaintSplattered);
}
else if(point_distance(fromx, fromy, x, y) >= range)
{
	instance_destroy();
	instance_create_layer(x, y, "SplatteredPaint", oRegPaintSplattered);
}
else
{
	speed = point_distance(x, y, tox, toy) / clamp(speed, point_distance(x, y, tox, toy), 10) * basespd;
}