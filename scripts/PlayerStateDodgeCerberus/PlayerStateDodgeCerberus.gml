// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateDodgeCerberus(){
	sprite_index = spriteDodge;
	
	//Code for changing sprite index according to the traveling length

	moveDistanceRemaining = max(0, moveDistanceRemaining - dodgesp);
	
	var _totalFrames = sprite_get_number(sprite_index);  //How many frames is the roll
	image_index = min(((1 - (moveDistanceRemaining / dodgedist)) * _totalFrames), _totalFrames - 1);

	//Causes to bug out because it doesn't know from where to continue...
	//PlayerInputSkill();
	
	//Movement
	hsp = dodgesp;
	vsp = vsp + grav_current;


	//Trying to cap gravity effect
	if (sign(grav_current)) and (vsp > grav_high) vsp = grav_high;
	else if (!sign(grav_current)) and (vsp < grav_low)  vsp = grav_low;
	
	//Collision
	PlayerCollision();
	
	if (moveDistanceRemaining <= 0){
		state = lastState;
		lastState = PLAYERSTATE.DODGE;
	}
}