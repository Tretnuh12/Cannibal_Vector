// Move toward player
if (instance_exists(obj_player1)) 
{
	move_towards_point(obj_player1.x,obj_player1.y,eturbo);
}
if (place_meeting(x,y,obj_shield))
{
	espd = -3
}
if (!place_meeting(x,y,obj_shield))	
{
	espd = 3
}
if keyboard_check_pressed(vk_space) {eturbo += 12};
if keyboard_check_released(vk_space) {eturbo = 3};