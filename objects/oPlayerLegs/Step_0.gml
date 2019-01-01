/// @description Insert description here
// You can write your code in this editor
torso.image_angle = point_direction(x, y, mouse_x, mouse_y);
torso.x = x;
torso.y = y;

if(canMove)
{
	if(keyboard_check(ord("W")) && !place_meeting(x, y, oTerrain))
	{
		if(mouse_y > y)
		{
			spd = basespd*2; //half as fast
		}
		else
		{
			spd = basespd;
		}
		image_speed = 0;
		sprite_index = sLegsUp;
		image_index++;
		if(image_index > 4)
		{
			image_index = 0;
		}
		gridy--;
		y -= 16;
		canMove = false;
		alarm[0] = spd;
	}
	else if(keyboard_check(ord("S")) && !place_meeting(x, y, oTerrain))
	{
		if(mouse_y < y)
		{
			spd = basespd*2; //half as fast
		}
		else
		{
			spd = basespd;
		}
		image_speed = 0;
		sprite_index = sLegsDown;
		image_index++;
		if(image_index > 4)
		{
			image_index = 0;
		}
		gridy++;
		y += 16;
		canMove = false;
		alarm[0] = spd;
	}
	else if(keyboard_check(ord("A")) && !place_meeting(x, y, oTerrain))
	{
		if(mouse_x > x)
		{
			spd = basespd*2; //half as fast
		}
		else
		{
			spd = basespd;
		}
		image_speed = 0;
		sprite_index = sLegsLeft;
		image_index++;
		if(image_index > 4)
		{
			image_index = 0;
		}
		gridx--;
		x -= 16;
		canMove = false;
		alarm[0] = spd;
	}
	else if(keyboard_check(ord("D")) && !place_meeting(x, y, oTerrain))
	{
		if(mouse_x < x)
		{
			spd = basespd*2; //half as fast
		}
		else
		{
			spd = basespd;
		}
		image_speed = 0;
		sprite_index = sLegsRight;
		image_index++;
		if(image_index > 4)
		{
			image_index = 0;
		}
		gridx++;
		x += 16;
		canMove = false;
		alarm[0] = spd;
	}
	else
	{
		//image_speed = 1;
		//sprite_index = sPlayerDownIdle;
		image_index = 0;
	}
}
if(gun != noone)
{
	with(gun)
	{
		sprite_index = noone;
		x = other.x;
		y = other.y;
	}
}

//depth = -y;