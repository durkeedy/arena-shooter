/// @description Insert description here
// You can write your code in this editor

if(point_distance(x, y, tox, toy) <= 4)
{
	//instance_destroy();
	//instance_create_layer(x, y, "SplatteredPaint", oRegPaintSplattered);
	speed = 0;
	image_index = 1;
}
else if(point_distance(fromx, fromy, x, y) >= range)
{
	//instance_destroy();
	//instance_create_layer(x, y, "SplatteredPaint", oRegPaintSplattered);
	speed = 0;
	image_index = 1;
}
else
{
	speed = (range - point_distance(fromx, fromy, x, y)) / range * basespd + 1;
}