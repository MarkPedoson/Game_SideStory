// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DodgeCooldown(){
	//Lets settle cooldown
	var _c = global.iCD;
	//If first ammo used, normal
	if (_c.dodgeCDTimer == 0) and (_c.dodgeAmmoCounter == dodgeAmmo){
		_c.dodgeCDTimer = room_speed * dodgeCD;
	}
	_c.dodgeAmmoCounter -= 1;
	
	if (_c.dodgeAmmoCounter <= 0) canDodge = false;
}