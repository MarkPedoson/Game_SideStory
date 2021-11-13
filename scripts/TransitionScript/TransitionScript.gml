// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function TransitionScript(){
	if (global.targetX != -1){
			if (global.prevPlayerChar != -1){
				switch (global.prevPlayerChar)
				{
					case PLAYERCHAR.CERBERUS:
						with (instance_create_layer(global.checkpointX, global.checkpointY, "Player", oCerberus)){
							global.currentPlayer = id;
							if (global.targetState == PLAYERSTATE.STARTING){
								if(global.iCD.startingTimer == -1){
									global.iCD.startingTimer = 3 * room_speed;
								}	
							}
							state = global.targetState;
						}
						break;
					
					case PLAYERCHAR.KITSUNE:
						break;
						
					case PLAYERCHAR.FISHING:
						with (instance_create_layer(global.checkpointX, global.checkpointY, "Player", oFishHook)){
							global.currentPlayer = id;
							if (global.targetState == PLAYERSTATE.STARTING){
								if(global.iCD.startingTimer == -1){
									global.iCD.startingTimer = 3 * room_speed;
								}
							}
							state = global.targetState;
						}
						break;
				}
			}
	}
}