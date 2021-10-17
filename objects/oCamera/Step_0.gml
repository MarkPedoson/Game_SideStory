/// @description Insert description here
// You can write your code in this editor
//Following the target
if (instance_exists(follow)){
	xTo = follow.x;
}

//Trying to get closer to the target, slowing down in the process
x += (xTo - x);

//Update camera
camera_set_view_pos(cam, x, y);

with(player){
	if (x < other.x){
		game_restart();
	}
}
