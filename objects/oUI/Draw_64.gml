/// @description Insert description here
// You can write your code in this editor
var _c = global.iCD;
var _p = global.currentPlayer;

if (room_get_name(room) != "rStartScreen"){
	//Player control
	if (!global.gamePaused){
		//Main run UI
		if (instance_exists(oRoomIsMainRun)){
			//Gravity weapon
			draw_sprite(sMovementIconEdge, 0, RESOLUTION_W/2 - 290, RESOLUTION_H - 90);
			
			//Skill Icon
			SkillIconDraw(_p.basicSkillIcon, _c.skillCDTimer, _p.skillCD, RESOLUTION_W/2 + 130, RESOLUTION_H - 90, _c.skillAmmoCounter);
			
			//Dodge Icon
			SkillIconDraw(_p.dodgeSkillIcon, _c.dodgeCDTimer, _p.dodgeCD, RESOLUTION_W/2 + 225, RESOLUTION_H - 90, _c.dodgeAmmoCounter);
			
			
		}
		//Fishing run UI
		if (instance_exists(oRoomIsFishing)){
			//Gravity weapon
			draw_sprite(sMovementIconEdge, 0, RESOLUTION_W/2 - 290, RESOLUTION_H - 90);
			
			//Skill icon is not used
			
			//Dodge icon
			SkillIconDraw(_p.dodgeSkillIcon, _c.dodgeCDTimer, _p.dodgeCD, RESOLUTION_W/2 + 225, RESOLUTION_H - 90, _c.dodgeAmmoCounter);
		}
	}

	//Main run UI 
	if (instance_exists(oRoomIsMainRun) or instance_exists(oRoomIsFishing)){
		//Meant to countdown in the beginning
		if (global.countdownCreate){
			if (_c.startingTimer <= 180) 
				and (_c.startingTimer > 120){
					draw_sprite(sCountdown, 0, RESOLUTION_W*0.5, RESOLUTION_H*0.5);
				}
			else if (_c.startingTimer <= 120) 
				and (_c.startingTimer > 60){
					draw_sprite(sCountdown, 1, RESOLUTION_W*0.5, RESOLUTION_H*0.5);
				}
			else if (_c.startingTimer <= 60) 
				and (_c.startingTimer > 0){
					draw_sprite(sCountdown, 2, RESOLUTION_W*0.5, RESOLUTION_H*0.5);
				}
		}
		if (!global.gamePaused) draw_sprite(sPauseIcon, 0, RESOLUTION_W - 70, 10);
	}


	//Pause screen
	if (global.gamePaused){
		draw_set_color(c_black);
		draw_set_alpha(0.75);
		draw_rectangle(0, 0, RESOLUTION_W, RESOLUTION_W, false);
		draw_set_alpha(1.0);
		draw_set_color(c_white);
		draw_sprite(sResumeIcon, 0, RESOLUTION_W - 70, 10);
		draw_sprite(sRetryButton, 0, RESOLUTION_W*0.5 - 62, 100);
		draw_sprite(sHubButton, 0, RESOLUTION_W*0.5 - 62, 250);
	
	}
}
