// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateStarting(){
	sprite_index = spriteIdle;
	image_speed = 0.5;
	if (!alarm[0]) alarm[0] = 180;
	if (!oChasee.alarm[0]) oChasee.alarm[0] = 180;
	
}