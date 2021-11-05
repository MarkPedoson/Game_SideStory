// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerInputSkill(){
	//Dodge skill was pressed
	if (oGame.press) and (canSkill) 
	//draw_sprite(sDodgeIconEdge, 0, RESOLUTION_W/2 + 220, RESOLUTION_H - 100);
		and (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),
			RESOLUTION_W/2 + 130, RESOLUTION_H - 90, RESOLUTION_W/2 + 130 + 79, RESOLUTION_H - 90 + 77)){
			SkillCooldown();
			lastState = state;
			state = PLAYERSTATE.SKILL;
	}
}	