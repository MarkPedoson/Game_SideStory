// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerInputGravity(){
	//Switching gravity
	if (oGame.press) 
		and (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), RESOLUTION_W/2 - 270, RESOLUTION_H - 100, RESOLUTION_W/2 - 270 + 81, RESOLUTION_H - 100 + 82)){
		switch (grav_prev){
			case 1:
				if (!place_meeting(x, y+1, oFloor)) break;
				grav_current = grav_up;
				grav_prev = sign(grav_up);
				state = PLAYERSTATE.JUMPING;
				break;
			case -1:
				if (!place_meeting(x, y-1, oFloor)) break;
				grav_current = grav_down;
				grav_prev = sign(grav_down);
				state = PLAYERSTATE.JUMPING;
				break;
		}
	}
}