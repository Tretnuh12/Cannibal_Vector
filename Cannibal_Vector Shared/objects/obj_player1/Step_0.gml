//wrap around
with obj_player1
{
	if x > room_width
	x=0
	if x < 0
	x=room_width
}
with obj_player1
{
	if y > room_height
	y=0
	if y < 0
	y = room_height
}
//MOVE LEFT
if keyboard_check(vk_left) x-= spd;
//move right
if keyboard_check(vk_right) x+= spd;
// move up
if keyboard_check(vk_up) y-= spd;
// move down
if keyboard_check(vk_down)y+= spd;
//turbo
if keyboard_check(ord("W")) y-= turbo;
if keyboard_check(ord("A")) x-= turbo;
if keyboard_check(ord("S")) y+= turbo;
if keyboard_check(ord("D")) x+= turbo;
//Game Pad Right
if gamepad_axis_value(0,gp_axislh)>0.8
{
	if place_free(x+spd,y)
	{
		x+=spd;
	}
}	
	//Game Pad Left
if gamepad_axis_value(0,gp_axislh)<-0.8
{
	if place_free(x-spd,y)
	{
		x-=spd;
	}
}
//Game Pad Up
if gamepad_axis_value(0,gp_axislv)<-0.8
{
	if place_free(y-spd,x)
	{
		y-=spd;
	}
}
//Game Pad Down
if gamepad_axis_value(0,gp_axislv)>0.8
{
	if place_free(y+spd,x)
	{
		y+=spd;
	}
}
//button actions
if gamepad_button_check_pressed(0,gp_A) {spd += turbo;}
if gamepad_button_check_released(0,gp_A) {spd -= turbo;}
if gamepad_button_check_pressed(0,gp_X) instance_create_layer(x,y,"lay_shield",obj_shield)
if gamepad_button_check_released(0,gp_X) instance_destroy(obj_shield)
if gamepad_button_check_pressed(0,gp_shoulderlb) if (!instance_exists(obj_spear_r))
{
instance_create_layer(x,y,"instances",obj_spear)
} 
if gamepad_button_check_pressed(0,gp_shoulderrb) if (!instance_exists(obj_spear))
{
instance_create_layer(x,y,"instances",obj_spear_r)
} 
//change sprite under circumstances
if gamepad_button_check_pressed(0,gp_shoulderrb)
{
	sprite_index = atck;
}
if gamepad_button_check_released(0,gp_shoulderrb)
{
	sprite_index = sprite0;
}
if gamepad_button_check_pressed(0,gp_shoulderlb)
{
	sprite_index = atck;
}
if gamepad_button_check_released(0,gp_shoulderlb)
{
	sprite_index = sprite0;
}