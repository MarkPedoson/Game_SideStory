// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpawnCharacter(_char, _location){
	//var _l = oLevelsInfo._location;
	
	//Giving targets for transitioning
	global.prevPlayerChar = _char;
	global.targetX = _location.starting_point_x;
	global.targetY = _location.starting_point_y;
	global.checkpointX = global.targetX;
	global.checkpointY = global.targetY;	
	
	//Room based state 
	if (_location.room_type == "hub"){
		global.targetState = PLAYERSTATE.HUB;
		global.countdownCreate = false;
	}
	else if (_location.room_type == "main_run" 
		or _location.room_type == "fish_run"){
			global.targetState = PLAYERSTATE.STARTING;
	}
	global.targetRoom = _location.room_name;
	room_goto(global.targetRoom);
}