// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerInputDodge(){
	//Dodge skill was pressed
	if (oGame.press) and (canDodge) 
	//draw_sprite(sDodgeIconEdge, 0, RESOLUTION_W/2 + 220, RESOLUTION_H - 100);
		and (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),
			RESOLUTION_W/2 + 220, RESOLUTION_H - 90, RESOLUTION_W/2 + 220 + 79, RESOLUTION_H - 90 + 77)){
			vsp = sign(grav_current) * dodgeHeight; //Magic number
			moveDistanceRemaining = dodgedist;
			DodgeCooldown();
			lastState = state;
			state = PLAYERSTATE.DODGE;
	}
}