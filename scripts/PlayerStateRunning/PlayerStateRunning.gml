// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateRunning(){
	sprite_index = spriteRun;
	image_speed = 1;
	
	//Switching gravity
	if (key_grav){
		switch (grav_prev){
			case 1:
				if (!place_meeting(x, y+1, oFloor)) break;
				grav_current = grav_up;
				grav_prev = sign(grav_up);
				break;
			case -1:
				if (!place_meeting(x, y-1, oFloor)) break;
				grav_current = grav_down;
				grav_prev = sign(grav_down);
				break;
		}
	}

	hsp = runsp;
	vsp = vsp + grav_current;

	//Trying to cap gravity effect
	if (sign(grav_current)) and (vsp > grav_high) vsp = grav_high;
	else if (!sign(grav_current)) and (vsp < grav_low)  vsp = grav_low;


	//Collision
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