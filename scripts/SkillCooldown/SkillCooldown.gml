// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SkillCooldown(){
	//Lets settle cooldown
	var _c = global.iCD;

	_c.skillCDTimer = room_speed * skillCD;
	
	canSkill = false;
}