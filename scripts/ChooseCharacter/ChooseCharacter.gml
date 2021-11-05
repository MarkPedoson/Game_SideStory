// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ChooseCharacter(){
	var _l = global.lvl;
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),
		0, 0, RESOLUTION_W/2 -1, RESOLUTION_H)){ //First half of the screen for Cerberus
			
		SpawnCharacter(PLAYERCHAR.CERBERUS, _l.level0_0);
	}
}