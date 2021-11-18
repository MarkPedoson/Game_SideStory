// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RespawnCharacter(){
	if (global.currentCheckpoint != -1){
		
		global.checkpointX = global.currentCheckpoint.x_checkpoint;
		global.checkpointY = global.currentCheckpoint.y_checkpoint;

	}
	room_restart();
}