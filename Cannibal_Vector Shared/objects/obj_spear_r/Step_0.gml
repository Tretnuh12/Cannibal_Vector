//wrap around

{
	if x > room_width
	x=0
	if x < 0
	x=room_width
}

{
	if y > room_height
	y=0
	if y < 0
	y = room_height
}
//movement		
x+= sspd
sspd = 10 		