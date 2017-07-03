//game reset button
if gamepad_button_check_pressed(0,gp_select)
{
	game_restart()
}
//max number of object
if (instance_number(obj_spear) > 1) 
{
     with (instance_find(obj_spear, 1)) 
	 {
           instance_destroy()
     }
}

if (instance_number(obj_spear_r) > 1) 
{
     with (instance_find(obj_spear_r, 1)) 
	 {
           instance_destroy()
     }
}