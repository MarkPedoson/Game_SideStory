// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerCollision(){
	//Collision with objects
	if (place_meeting(x+hsp, y, oFloor)){
		while (!place_meeting(x+(sign(hsp)), y, oFloor)){
				x += sign(hsp);
		}
		hsp = 0;
	}
	x += hsp;

	if (place_meeting(x, y+vsp, oFloor)){
		while (!place_meeting(x, y+(sign(vsp)), oFloor)){
				y += sign(vsp);
		}
		vsp = 0;
	}
	y += vsp;

}