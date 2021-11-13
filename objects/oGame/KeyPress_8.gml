/// @description Insert description here
// You can write your code in this editor
if (!global.gamePaused) and (instance_exists(oRoomIsMainRun) or instance_exists(oRoomIsFishing)){
	global.gamePaused = true;
	with (all)
			{
				gamePausedImageSpeed = image_speed;
				image_speed = 0;
			}
}
game_end();