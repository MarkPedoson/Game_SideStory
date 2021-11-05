/// @description Insert description here
// You can write your code in this editor
//Following the target
if (instance_exists(follow)) and (instance_exists(oRoomIsMainRun)){
	xTo = follow.x;
	x += (xTo - x);
}
else if (instance_exists(oRoomIsHub)){
	x = 0;
	y = 0;
}

//Update camera
camera_set_view_pos(cam, x, y);


if (instance_exists(player)){
	with(player){
		if (x < other.x) 
			or (x > other.x + RESOLUTION_W + 10)
			or (y < other.y)
			or (y > RESOLUTION_H + 10){
				room_restart();
		}
	}
}
