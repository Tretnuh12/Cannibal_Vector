// Move toward player
if (instance_exists(obj_player1)) 
{
	move_towards_point(obj_player1.x,obj_player1.y,eturbo);
}

if (place_meeting(x,y,obj_shield))
{
	eturbo = 0
}
if (!place_meeting(x,y,obj_shield))	if eturbo = 0
{
	eturbo = 3
}
if keyboard_check_pressed(vk_space) {eturbo += 12};
if keyboard_check_released(vk_space) {eturbo = 3};
// hitpoint counter
if hp <= 40
{
	eturbo+=0.03
}
if hp <= 0 
{
	instance_destroy(obj_evil)
}
//sprite change when hit
if (place_meeting(x,y,obj_spear)) 
{
	spritestate = 1
}
if (place_meeting(x,y,obj_spear_r))
{
	spritestate = 1
}
if spritestate = 1
{
	sprite_index = EE1hit
}
if (!place_meeting(x,y,obj_spear)) if (!place_meeting(x,y,obj_spear_r))
{
	spritestate = 0
}

if spritestate = 0 
{
	sprite_index = EE1
}
if spritestate = 1
{
	eturbo = 0
}