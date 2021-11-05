// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerInputHub(){
	var _l = global.lvl;
	if (oGame.press){
		if (place_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), oPortal)){
				//SpawnCharacter(PLAYERCHAR.CERBERUS, _l.level0_1);
				room_goto(rChooseLevelDemo);
		}
	}
}