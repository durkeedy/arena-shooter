/// @description Insert description here
// You can write your code in this editor

if(point_distance(fromx, fromy, x, y) >= explosion_radius)
{
	instance_destroy();
	instance_create_layer(x, y, "SplatteredPaint", oGrenadeSplattered);
}
else if(center)
{
	instance_destroy();
	instance_create_layer(x, y, "SplatteredPaint", oGrenadeSplattered);
}