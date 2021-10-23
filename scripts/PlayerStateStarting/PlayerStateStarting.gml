// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateStarting(){
	sprite_index = spriteIdle;
	image_speed = 0.5;
	
	if (!global.countdownCreate) global.countdownCreate = true;
	
	
	//Collision
	PlayerCollision();
	
	if (canRun){
		global.countdownCreate = false;
		oChasee.hsp = runsp;
		state = PLAYERSTATE.RUNNING;
	}
}