/// @description Insert description here
// You can write your code in this editor
if (!global.gamePaused) {
	if(instance_exists(currentChar)){
		if (!currentChar.canRun) and (instance_exists(oRoomIsMainRun)){
			if (startingTimer > 0) startingTimer--;
			else if (startingTimer == 0){
				startingTimer = -1;
				currentChar.canRun = true;
			}
		}
	}
}