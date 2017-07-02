//Reset game when enemy touches you
if (!place_meeting(x,y,obj_shield))
{
	instance_destroy(obj_player1);
}