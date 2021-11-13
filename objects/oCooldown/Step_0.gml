/// @description Insert description here
// You can write your code in this editor
var currentChar = global.currentPlayer;

if (!global.gamePaused) {
	if(currentChar != -1) and ((instance_exists(oRoomIsMainRun)) 
		or (instance_exists(oRoomIsFishing))) {
		
		//Code for starting the countdown timer
		if (!currentChar.canRun) and (instance_exists(oRoomIsMainRun) or instance_exists(oRoomIsFishing)){
			if (startingTimer > 0) startingTimer--;
			else if (startingTimer == 0){
				startingTimer = -1;
				currentChar.canRun = true;
			}
		}
		
		//Looking at which character we using
		if (currentChar.charType == PLAYERCHAR.CERBERUS){
			//Dodge ammo cooldown
			if (dodgeAmmoCounter < currentChar.dodgeAmmo) and (instance_exists(oRoomIsMainRun)){
				//Counting down
				if (dodgeCDTimer > 0) dodgeCDTimer--; //Countdown cooldown as long as we need to
				else if (dodgeCDTimer == 0){
					if (currentChar.canDodge != true) currentChar.canDodge = true; //just in case it is not previously set
					dodgeAmmoCounter += 1;
					if (dodgeAmmoCounter < currentChar.dodgeAmmo) dodgeCDTimer = currentChar.dodgeCD * room_speed;  //Double check if we have now added too many, if not do it again
				}
			}
			//Skill cooldown
			if (!currentChar.canSkill) and (instance_exists(oRoomIsMainRun)){
				if (skillCDTimer > 0) skillCDTimer--;
				else if (skillCDTimer == 0){
					currentChar.canSkill = true;
				}
			}
		}
		if (currentChar.charType == PLAYERCHAR.FISHING){
			//Dodge ammo cooldown
			if (dodgeAmmoCounter < currentChar.dodgeAmmo) and (instance_exists(oRoomIsFishing)){
				//Counting down
				if (dodgeCDTimer > 0) dodgeCDTimer--; //Countdown cooldown as long as we need to
				else if (dodgeCDTimer == 0){
					if (currentChar.canDodge != true) currentChar.canDodge = true; //just in case it is not previously set
					dodgeAmmoCounter += 1;
					if (dodgeAmmoCounter < currentChar.dodgeAmmo) dodgeCDTimer = currentChar.dodgeCD * room_speed;  //Double check if we have now added too many, if not do it again
				}
			}
		}
	}
}