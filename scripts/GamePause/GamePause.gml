// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GamePause(){
	//Pause the game
	if (press) 
		and ((instance_exists(oRoomIsMainRun)) or (instance_exists(oRoomIsFishing)))
		and (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),
		//draw_sprite(sPauseIcon, 0, RESOLUTION_W - 70, 10);
			RESOLUTION_W - 70, 10, RESOLUTION_W - 70 + 67, 10 + 36))
	{
		global.gamePaused = !global.gamePaused;
		if (global.gamePaused)
		{
			with (all)
			{
				gamePausedImageSpeed = image_speed;
				image_speed = 0;
			}
		}
		else
		{
			with(all)
			{
				image_speed = gamePausedImageSpeed;
			}
		}
	}
	
}