// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ChooseLevel(){
	var _l = global.lvl;
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),
		160, 117,291,248)){
			
		SpawnCharacter(PLAYERCHAR.CERBERUS, _l.level0_1);
	}
}