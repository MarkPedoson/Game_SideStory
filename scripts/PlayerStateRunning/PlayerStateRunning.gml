// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateRunning(){
	sprite_index = spriteRun;
	image_speed = 1;
	
	image_yscale = sign(grav_current);
	
	//Dodge ability
	PlayerInputDodge();
	
	//Skill ability
	if (charType != PLAYERCHAR.FISHING) PlayerInputSkill();
	
	//Switching gravity
	PlayerInputGravity();
	
	

	//Movement
	hsp = runsp;
	vsp = vsp + grav_current;


	//Trying to cap gravity effect
	if (sign(grav_current)) and (vsp > grav_high) vsp = grav_high;
	else if (!sign(grav_current)) and (vsp < grav_low)  vsp = grav_low;


	//Collision
	PlayerCollision();
}