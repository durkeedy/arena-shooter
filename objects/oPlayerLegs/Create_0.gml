/// @description Insert description here
// You can write your code in this editor
//Player
basespd = 20;
spd = basespd;

gridx = 1; //these are not accurate because of random spawns/respawns
gridy = 1;

torso = instance_create_layer(x, y, "Players", oPlayerTorso);
depth = -500;
torso.depth = -1000;
//Gun
gun = noone;
//reload = noone;
//range = noone;

//checks
canMove = true;
//canShoot = true;
image_speed = 0;

team = noone;
canBeSplatted = true;