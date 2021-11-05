// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateJumping(){
	sprite_index = spriteJump;
	
	//Once player collides switch back
	if (place_meeting(x, y-1, oFloor) and !sign(grav_current)) 
		or (place_meeting(x, y+1, oFloor) and sign(grav_current)) {
			lastState = state;
			state = PLAYERSTATE.RUNNING;
		}
	
	//Dodge ability
	PlayerInputDodge();
	
	//Skill ability
	PlayerInputSkill();
	
	//Movement
	hsp = runsp;
	vsp = vsp + grav_current;


	//Trying to cap gravity effect
	if (sign(grav_current)) and (vsp > grav_high) vsp = grav_high;
	else if (!sign(grav_current)) and (vsp < grav_low)  vsp = grav_low;
	
	//Collision
	PlayerCollision();
}