/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(vk_shift))
{
	//create object to center screen on
	//camera_set_view_pos(view_camera[0], mouse_x - camera_get_view_width(view_camera[0]), mouse_y - camera_get_view_height(view_camera[0]));//= mouse_x;
	//view_current.y = mouse_y;
	if(abs(mouse_x - oPlayerLegs.x) < view_w_half && abs(mouse_y - oPlayerLegs.y) < view_h_half)
	{
		x = mouse_x; 
		y = mouse_y;
		camera_set_view_pos(cam, x - view_w_half, y-view_h_half);
		//update_GUI_position();
	}
}