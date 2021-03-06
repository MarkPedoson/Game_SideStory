// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GamePausedScreen(){
	if (press)
		and ( global.gamePaused)
		and ((instance_exists(oRoomIsMainRun)) or (instance_exists(oRoomIsFishing))){
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),
				//draw_sprite(sRetryButton, 0, RESOLUTION_W*0.5 - 62, 100);
				RESOLUTION_W*0.5 - 62, 100, RESOLUTION_W*0.5 - 62 + 125, 100 + 36)){
					global.gamePaused = !global.gamePaused;
					room_restart();
			}
			else if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),
				//draw_sprite(sHubButton, 0, RESOLUTION_W*0.5 - 62, 250);
				RESOLUTION_W*0.5 - 62, 250, RESOLUTION_W*0.5 - 62 + 125, 250 + 36)){
					global.gamePaused = !global.gamePaused;
					SpawnCharacter(global.currentChosenChar, global.lvl.level0_0);
			}
	}
}