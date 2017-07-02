//wrap around
with obj_spear
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
//movement
x-=10