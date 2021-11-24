// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateHub(){
	sprite_index = spriteIdle;
	image_speed = 0.5;
	hsp = 0;
	
	//PlayerInputHub();
	
	//Collision
	PlayerCollision();
}