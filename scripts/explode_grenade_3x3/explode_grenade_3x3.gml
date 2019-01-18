/// @description explode_grenade(radius, spd, x, y)
//var radius = argument0;
var spd = argument0;
var xx = argument1;
var yy = argument2;
var projteam = argument3;
var inst = argument4;
var clie = argument5;
var radius = 16;

var nwsplode = instance_create_layer(xx, yy, "Instances", oGrenadeSplode);
var nesplode = instance_create_layer(xx, yy, "Instances", oGrenadeSplode);
var nsplode = instance_create_layer(xx, yy, "Instances", oGrenadeSplode);
var swsplode = instance_create_layer(xx, yy, "Instances", oGrenadeSplode);
var sesplode = instance_create_layer(xx, yy, "Instances", oGrenadeSplode);
var ssplode = instance_create_layer(xx, yy, "Instances", oGrenadeSplode);
var esplode = instance_create_layer(xx, yy, "Instances", oGrenadeSplode);
var wsplode = instance_create_layer(xx, yy, "Instances", oGrenadeSplode);
var csplode = instance_create_layer(xx, yy, "Instances", oGrenadeSplode);
with(nwsplode)
{
	team = projteam;
	instance = inst;
	client = clie;
	explosion_radius = radius;
	move_towards_point(x - radius, y - radius, spd);
}
with(nesplode)
{
	team = projteam;
	instance = inst;
	client = clie;
	explosion_radius = radius;
	move_towards_point(x + radius, y - radius, spd);
}
with(nsplode)
{
	team = projteam;
	instance = inst;
	client = clie;
	explosion_radius = radius;
	move_towards_point(x, y - radius, spd);
}
with(swsplode)
{
	team = projteam;
	instance = inst;
	client = clie;
	explosion_radius = radius;
	move_towards_point(x - radius, y + radius, spd);
}
with(sesplode)
{
	team = projteam;
	instance = inst;
	client = clie;
	explosion_radius = radius;
	move_towards_point(x + radius, y + radius, spd);
}
with(ssplode)
{
	team = projteam;
	instance = inst;
	client = clie;
	explosion_radius = radius;
	move_towards_point(x, y + radius, spd);
}
with(esplode)
{
	team = projteam;
	instance = inst;
	client = clie;
	explosion_radius = radius;
	move_towards_point(x + radius, y, spd);
}
with(wsplode)
{
	team = projteam;
	instance = inst;
	client = clie;
	explosion_radius = radius;
	move_towards_point(x - radius, y, spd);
}
with(csplode)
{
	team = projteam;
	instance = inst;
	client = clie;
	explosion_radius = radius;
	center = true;
}