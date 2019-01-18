/// @description move West
alarm[0] = room_seconds(1);

image_speed = 0;
sprite_index = sLegsLeft;
image_index++;
if(image_index > 4)
{
	image_index = 0;
}
//x -= 16;