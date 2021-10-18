// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerInputDodge(){
	//Dodge skill was pressed
	if (key_grav) 
		and (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), RESOLUTION_W/2 + 130, RESOLUTION_H - 100, RESOLUTION_W/2 + 130 + 79, RESOLUTION_H - 100 + 77)){
			vsp = sign(grav_current) * -7; //Magic number
			moveDistanceRemaining = dodgedist;
			state = PLAYERSTATE.DODGE;
	}
}