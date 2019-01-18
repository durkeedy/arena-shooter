/// draw_gui_button_sprite(sprite, index, x, y, width, height, main_view);
var sp = argument[0];
var in = argument[1];
var xx = argument[2];
var yy = argument[3];
var ww = argument[4];
var hh = argument[5];
var vi = 0;
if argument_count > 6 vi = argument[6];

var mx = mouse_x;
var my = mouse_y;

mx -= view_xport[vi];
my -= view_yport[vi];

mx -= (display_get_gui_width()) / (view_wport[vi]);
my -= (display_get_gui_height()) / (view_hport[vi]);

var on = mx > xx && mx < xx+ww && my > yy && my < yy+hh;

draw_sprite_ext(sp, in, xx, yy, ww/sprite_get_width(sp),
    hh/sprite_get_height(sp), 0, c_white, 1);
draw_set_color(c_black);
draw_text_ext(xx + 24 , yy + 2, "Ready", -1, 50);


var r = 0;
if on r = 1;
if (on && mouse_check_button_pressed(mb_left)) 
{
	if (in == 0)
	{
		draw_sprite_ext(sp, 1, xx, yy, ww/sprite_get_width(sp), hh/sprite_get_height(sp), 0, c_white, 1);
		oClient.ready = false;		
	}
	else
	{
		draw_sprite_ext(sp, 0, xx, yy, ww/sprite_get_width(sp), hh/sprite_get_height(sp), 0, c_white, 1);
		oClient.ready = true;
	}
	client_send_ready_state(oClient.ready);
	r = 2;
}

if on && mouse_check_button(mb_left) r = 3;
if on && mouse_check_button_released(mb_left) r = 4;

return r;